https://github.com/bazelbuild/bazel/issues/9447

### Output

```
DEBUG: C:/git/bazel-issues/use_runfiles_from_cc_import/foo.bzl:4:5: Runfiles in target runfiles_in_import_library: depset([])
DEBUG: C:/git/bazel-issues/use_runfiles_from_cc_import/foo.bzl:4:5: Runfiles in target runfiles_in_bazel_library: depset([<generated file bazel_library.dll>])
INFO: Analyzed 4 targets (1 packages loaded, 6 targets configured).
INFO: Found 4 targets...
INFO: Elapsed time: 1.615s, Critical Path: 0.01s
INFO: 0 processes.
INFO: Build completed successfully, 1 total action
```

### Bazel version

```
c:\git\bazel-issues\use_runfiles_from_cc_import>bazel-latest version
Build label: 0.28.1
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Fri Jul 19 15:20:45 2019 (1563549645)
Build timestamp: 1563549645
Build timestamp as int: 1563549645
```