# Copyright Louis Dionne 2016
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)

# This test makes sure that metabench_add_dataset places the generated JSON
# file at the place specified by the OUTPUT argument.

cmake_minimum_required(VERSION 3.1)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../..")
include(metabench)

metabench_add_dataset(dummy "dummy.cpp.erb" "[1, 2, 3]" OUTPUT my/fancy/output.json)
metabench_add_chart(check DATASETS dummy)

enable_testing()

add_test(NAME generate_dataset
    COMMAND ${CMAKE_COMMAND} --build ${PROJECT_BINARY_DIR} --target check)

add_test(NAME check_generated_dataset
    COMMAND ${RUBY_EXECUTABLE}
        -e "json = '${CMAKE_CURRENT_BINARY_DIR}/my/fancy/output.json'"
        -e "raise \"file #{json} is missing\" if !File.exist?(json)"
)

set_tests_properties(check_generated_dataset PROPERTIES DEPENDS generate_dataset)
