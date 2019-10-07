#include <from_another_target/missing_dep.h>  // undeclared dependency
#include <missing_dep_from_another_target.h>  // undeclared dependency
#include "missing_dep.h"                      // undeclared dependency

// This case detected by Bazel
// #include "local_include/missing_dep.h"

int foo;



