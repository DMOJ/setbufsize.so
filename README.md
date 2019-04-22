# setbufsize.so [![Linux Build Status](https://travis-ci.org/DMOJ/setbufsize.so.svg?branch=master)](https://travis-ci.org/DMOJ/setbufsize.so)

`LD_PRELOAD` library for controlling standard stream buffer sizes.

You can grab prebuilt 32- and 64-bit binaries from the [Releases](https://github.com/DMOJ/setbufsize/releases) tab.
These are built by [Travis](https://travis-ci.org/DMOJ/setbufsize) on a [CentOS 5 Docker image](https://github.com/pypa/manylinux),
so they should "just work" on any Linux distribution newer than that.

## Example Usage

For instance, if you wished to set the `stdout` of a program `app` to be unbuffered when connected to a terminal
(rather than the default line-buffering), the invocation would be:

```bash
$ LD_PRELOAD=/path/to/setbufsize64.so STDOUT_BUFFER_SIZE=0 ./app
```

`STDERR_BUFFER_SIZE` does the obvious thing, for `stderr`.

## Caveats

Due to its nature as an `LD_PRELOAD` object, `setbufsize` requires the target program to use `libc` for its output,
and furthermore be dynamically linked.
