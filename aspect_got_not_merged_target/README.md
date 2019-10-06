bazel-discuss thread: https://groups.google.com/forum/?nomobile=true#!topic/bazel-discuss/ZYH_-L_gDYI

### Output

```
c:\git\bazel-issues\aspect_got_not_merged_target>bazel-latest build //:2 --aspects=//:foo.bzl%my_aspect
INFO: Writing tracer profile to 'C:/users/yurchuk/_bazel_yurchuk/rkgdl6a2/command.profile.gz'
DEBUG: C:/git/bazel-issues/aspect_got_not_merged_target/foo.bzl:21:9: deps_from_my_provider <target //:1, keys:[MyProvider, OutputGroupInfo]>
DEBUG: C:/git/bazel-issues/aspect_got_not_merged_target/foo.bzl:22:9: deps_from_rule_ctx <merged target //:1>
DEBUG: C:/git/bazel-issues/aspect_got_not_merged_target/foo.bzl:26:13: ctx.rule.attr.deps has NO MyAspectProvider
DEBUG: C:/git/bazel-issues/aspect_got_not_merged_target/foo.bzl:33:13: target has MyAspectProvider
INFO: Analyzed target //:2 (4 packages loaded, 9 targets configured).
INFO: Found 1 target...
INFO: Deleting stale sandbox base C:/users/yurchuk/_bazel_yurchuk/rkgdl6a2/sandbox
Aspect //:foo.bzl%my_aspect of //:2 up-to-date (nothing to build)
INFO: Elapsed time: 1.453s, Critical Path: 0.04s
INFO: 0 processes.
INFO: Build completed successfully, 2 total actions
```

### Bazel version

```
c:\git\bazel-issues\aspect_got_not_merged_target>bazel-latest version
Build label: 1.0.0rc4
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Mon Sep 30 13:58:09 2019 (1569851889)
Build timestamp: 1569851889
Build timestamp as int: 1569851889
```