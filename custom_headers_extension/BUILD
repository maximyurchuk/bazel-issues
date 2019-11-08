package(default_visibility = ["//visibility:public"])
load("//:my_rule.bzl", "my_rule")

my_rule(
      name = "bar",
      srcs = ["main.cc"],
      hdrs = ["foo"],
      includes = ["."]
)
