load("@bazel_tools//tools/cpp:toolchain_utils.bzl", "find_cpp_toolchain")

def _my_rule(ctx):
    cc_toolchain = find_cpp_toolchain(ctx)
    feature_configuration = cc_common.configure_features(
        ctx = ctx,
        cc_toolchain = cc_toolchain,
    )

    (compilation_context, compilation_outputs) = cc_common.compile(
        name = ctx.label.name,
        actions = ctx.actions,
        feature_configuration = feature_configuration,
        cc_toolchain = cc_toolchain,
        public_hdrs = [],
        private_hdrs = ctx.files.hdrs,
        srcs = ctx.files.srcs,
        includes = [],
        quote_includes = [],
        system_includes = ctx.attr.includes,
        defines = [],
        user_compile_flags = [],
        compilation_contexts = [],
    )
    (linking_context, linking_outputs) = cc_common.create_linking_context_from_compilation_outputs(
        name = ctx.label.name,
        actions = ctx.actions,
        feature_configuration = feature_configuration,
        cc_toolchain = cc_toolchain,
        language = "c++",
        compilation_outputs = compilation_outputs,
        linking_contexts = [],
    )
    library = linking_outputs.library_to_link

    return [
        DefaultInfo(
            files = depset([library.static_library]),
        ),
    ]

my_rule = rule(
    implementation = _my_rule,
    attrs = {
        "hdrs": attr.label_list(allow_files = True),
        "srcs": attr.label_list(allow_files = True),
        "includes": attr.string_list(),
        "_cc_toolchain": attr.label(default = "@bazel_tools//tools/cpp:current_cc_toolchain"),
    },
    fragments = ["cpp"],
)
