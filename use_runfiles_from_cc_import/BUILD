package(default_visibility = ["//visibility:public"])

load("//:foo.bzl", "use_runfiles")

cc_import(
	name = "import_library",
	shared_library = "1.dll",
) 

cc_library(
	name = "bazel_library",
	srcs = ["lib.cc"]
) 

use_runfiles(name = "runfiles_in_bazel_library", input = "bazel_library")
use_runfiles(name = "runfiles_in_import_library", input = "import_library")