# Copyright Louis Dionne 2016
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)

set(datasets)
add_dataset(datasets dataset.hetero.unpack.fusion.list      fusion.list.cpp.erb        "(0..15).step(3)")
add_dataset(datasets dataset.hetero.unpack.fusion.vector    fusion.vector.cpp.erb      "(0..15).step(3)")
add_dataset(datasets dataset.hetero.unpack.hana.basic_tuple hana.basic_tuple.cpp.erb   "(0..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.hetero.unpack.hana.set         hana.set.cpp.erb           "(0..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.hetero.unpack.hana.tuple       hana.tuple.cpp.erb         "(0..50).step(10).to_a + (100..500).step(100).to_a")

add_chart(benchmark.hetero.unpack DATASETS ${datasets})
