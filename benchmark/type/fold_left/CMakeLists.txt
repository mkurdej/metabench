# Copyright Louis Dionne 2016
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)

set(datasets)
add_dataset(datasets dataset.type.fold_left.brigand.list    brigand.list.cpp.erb    "(0..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.type.fold_left.meta.list       meta.list.cpp.erb       "(0..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.type.fold_left.metal.list      metal.list.cpp.erb      "(0..50).step(10).to_a + (100..500).step(100).to_a")
add_dataset(datasets dataset.type.fold_left.mpl.list        mpl.list.cpp.erb        "(0..50).step(10)")
add_dataset(datasets dataset.type.fold_left.mpl.vector      mpl.vector.cpp.erb      "(0..50).step(10)")

add_chart(benchmark.type.fold_left DATASETS ${datasets})
