package(default_visibility = ["//visibility:public"])
load(":rule.bzl", "my_rule")
 
 
config_setting(
    name = "foo",
    define_values = {
        "foo": "1"
    }
)

config_setting(
    name = "bar",
    define_values = {
        "bar": "1"
    }
)


alias(
    name = "foo_bar",
    actual = select({
        ":bar": ":foo",
        "//conditions:default": ":bar",
    }),
)


my_rule(
    name = "check1",
    input = select({
       ":foo": "1111",
       ":foo_bar": "2222",
    })
)

my_rule(
    name = "check2",
    input = select({
       ":foo_bar": "2222",
       ":foo": "1111",
    })
)
