# Copyright Louis Dionne 2016
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)

if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC" AND CMAKE_CXX_COMPILER_VERSION VERSION_LESS "19")
    message(STATUS "The compiler has an unsupported standard library - standard library will be unavailable.")

    function(Std_add_dataset)
    endfunction()
else()
    function(Std_add_dataset dataset)
        metabench_add_dataset(${dataset} ${ARGN} MEDIAN_OF 3)
    endfunction()
endif()
