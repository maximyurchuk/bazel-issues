package(default_visibility = ["//visibility:public"])

load("//:foo.bzl", "my_rule")

my_rule(
    name = "1",
)

my_rule(
    name = "2",
    dep = "1"
)
