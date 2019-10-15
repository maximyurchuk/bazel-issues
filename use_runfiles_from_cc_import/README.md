https://github.com/bazelbuild/bazel/issues/9447

### Output

```
c:\git\bazel-issues\use_runfiles_from_cc_import>c:\bazel\bazel-1.0.0-windows-x86_64.exe build ...
INFO: Writing tracer profile to 'C:/users/yurchuk/_bazel_yurchuk/xpgkqron/command.profile.gz'
DEBUG: C:/git/bazel-issues/use_runfiles_from_cc_import/foo.bzl:4:5: Data runfiles in target runfiles_in_bazel_library: depset([<generated file bazel_library.dll>])
DEBUG: C:/git/bazel-issues/use_runfiles_from_cc_import/foo.bzl:4:5: Data runfiles in target runfiles_in_import_library: depset([])
DEBUG: C:/git/bazel-issues/use_runfiles_from_cc_import/foo.bzl:8:9: No runfiles in target runfiles_in_import_library
DEBUG: C:/git/bazel-issues/use_runfiles_from_cc_import/foo.bzl:8:9: No runfiles in target runfiles_in_bazel_library
INFO: Analyzed 4 targets (1 packages loaded, 6 targets configured).
INFO: Found 4 targets...
INFO: Elapsed time: 0.485s, Critical Path: 0.01s
INFO: 0 processes.
INFO: Build completed successfully, 1 total action
```

### Bazel version

```
c:\git\bazel-issues\use_runfiles_from_cc_import>c:\bazel\bazel-1.0.0-windows-x86_64.exe version
Build label: 1.0.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Thu Oct 10 10:17:16 2019 (1570702636)
Build timestamp: 1570702636
Build timestamp as int: 1570702636
```