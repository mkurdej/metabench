# Copyright Louis Dionne 2016
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)

set(datasets)
add_dataset(datasets dataset.type.at.brigand.list   brigand.list.cpp.erb    "[1] + (10..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.type.at.hana.types     hana.types.cpp.erb      "[1] + (10..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.type.at.meta.list      meta.list.cpp.erb       "[1] + (10..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.type.at.metal.list     metal.list.cpp.erb      "[1] + (10..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.type.at.mpl.list       mpl.list.cpp.erb        "[1] + (10..50).step(10).to_a")
add_dataset(datasets dataset.type.at.mpl.vector     mpl.vector.cpp.erb      "[1] + (10..50).step(10).to_a")

add_chart(benchmark.type.at DATASETS ${datasets})
