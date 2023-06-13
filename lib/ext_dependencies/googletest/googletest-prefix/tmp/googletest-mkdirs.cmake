# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/jl/Desktop/assignment-3/lib/ext_dependencies/googletest/googletest-src"
  "/Users/jl/Desktop/assignment-3/lib/ext_dependencies/googletest/googletest-build"
  "/Users/jl/Desktop/assignment-3/lib/ext_dependencies/googletest/googletest-prefix"
  "/Users/jl/Desktop/assignment-3/lib/ext_dependencies/googletest/googletest-prefix/tmp"
  "/Users/jl/Desktop/assignment-3/lib/ext_dependencies/googletest/googletest-prefix/src/googletest-stamp"
  "/Users/jl/Desktop/assignment-3/lib/ext_dependencies/googletest/googletest-prefix/src"
  "/Users/jl/Desktop/assignment-3/lib/ext_dependencies/googletest/googletest-prefix/src/googletest-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/jl/Desktop/assignment-3/lib/ext_dependencies/googletest/googletest-prefix/src/googletest-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/jl/Desktop/assignment-3/lib/ext_dependencies/googletest/googletest-prefix/src/googletest-stamp${cfgdir}") # cfgdir has leading slash
endif()
