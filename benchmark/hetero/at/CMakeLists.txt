# Copyright Louis Dionne 2016
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)

set(datasets)
add_dataset(datasets dataset.hetero.at.fusion.list      fusion.list.cpp.erb         "[1] + (10..50).step(10).to_a")
add_dataset(datasets dataset.hetero.at.fusion.vector    fusion.vector.cpp.erb       "[1] + (10..50).step(10).to_a")
add_dataset(datasets dataset.hetero.at.hana.basic_tuple hana.basic_tuple.cpp.erb    "[1] + (10..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.hetero.at.hana.tuple       hana.tuple.cpp.erb          "[1] + (10..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.hetero.at.std.tuple        std.tuple.cpp.erb           "[1] + (10..50).step(10).to_a + [100]")

add_chart(benchmark.hetero.at DATASETS ${datasets})
