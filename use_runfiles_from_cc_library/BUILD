package(default_visibility = ["//visibility:public"])

load("//:foo.bzl", "use_runfiles")

cc_library(
	name = "lib",
	srcs = ["lib.cc"],
) 

use_runfiles(name = "p", input = "lib")