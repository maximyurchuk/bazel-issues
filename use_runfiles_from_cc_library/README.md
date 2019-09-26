https://github.com/bazelbuild/bazel/issues/4561

### Output

```
DEBUG: C:/git/bazel-issues/use_runfiles_from_cc_library/foo.bzl:4:5: depset([<generated file lib.dll>])
INFO: Analyzed 2 targets (1 packages loaded, 3 targets configured).
INFO: Found 2 targets...
ERROR: C:/git/bazel-issues/use_runfiles_from_cc_library/BUILD:5:1: output 'lib.if.lib' was not created
ERROR: C:/git/bazel-issues/use_runfiles_from_cc_library/BUILD:5:1: not all outputs were created or valid
INFO: Elapsed time: 0.954s, Critical Path: 0.21s
INFO: 1 process: 1 local.
FAILED: Build did NOT complete successfully
```

### Bazel version

```
c:\git\bazel-issues\use_runfiles_from_cc_library>bazel-latest version
Build label: 0.28.1
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Fri Jul 19 15:20:45 2019 (1563549645)
Build timestamp: 1563549645
Build timestamp as int: 1563549645
```