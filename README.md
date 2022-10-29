# Custom PHP build scripts for PocketMine-MP
[![Build status](https://github.com/pmmp/php-build-scripts/actions/workflows/main.yml/badge.svg)](https://github.com/pmmp/php-build-scripts/actions/workflows/main.yml)

## Looking for prebuilt binaries? Head over to our [Jenkins build server](https://jenkins.pmmp.io/job/PHP-8.0-Aggregate)
 https://colab.research.google.com/github/TukangM/php-build-scripts-auto/blob/stable/php-auto-build-scripts-Linux_arm64.ipynb this scripts made by me @TukangM. this script will make you php8-arm64 for linux (android too-termux-KalilinuxNethunterMobile). compining it takes 30mins-1hours (if you get 2 more processor cores. maybe the process will be fast if you are lucky). if you not waiting LONG-TIME for compiling php8-arm64, use the releases https://github.com/TukangM/php-build-scripts-auto/releases/

#Why i use Google Colaboratory, Why not use Github Action?
"I am use Google Colaboratory cause easy to use, Github is not easy for me cause don't understand it using github action

## compile.sh

Bash script used to compile PHP on MacOS and Linux platforms. Make sure you have ``make autoconf automake libtool m4 wget getconf gzip bzip2 bison g++ git cmake pkg-config re2c``.

### Additional notes
#### Mac OSX (native compile)
- Most dependencies can be installed using Homebrew
- You will additionally need `glibtool` (GNU libtool, xcode libtool won't work)
- You also MUST specify target as `mac` or `mac64` if building for Mac, on Mac.

#### Android 64-bit (cross-compile)
- Only aarch64 targets are supported for Android cross-compile.
- The `aarch64-linux-musl` toolchain is required. You can compile and install it using https://github.com/TukangM/musl-cross-make (PMMP fork includes musl-libc patches for DNS resolver config path and increasing stack size limit for LevelDB)
- It is strongly recommended that you enable abusive optimizations for Android targets (`-f` flag) for best performance.

| Script flags | Description                                                                           |
| ------------ | ------------------------------------------------------------------------------------- |
| -d           | Will compile with debug and the xdebug PHP extension                                  |
| -f           | Enabling abusive optimizations...                                                     |
| -g           | Will compile GD2                                                                      |
| -j           | Set make threads to #                                                                 |
| -n           | Don't remove sources after completing compilation                                     |
| -s           | Will compile everything statically                                                    |
| -t           | Set target                                                                            |
| -v           | Enable Valgrind support in PHP                                                        |
| -x           | Specifies we are doing cross-compile                                                  |

### Example:

| Target          | Arguments                        |
| --------------- | -------------------------------- |
| linux64         | ``-t linux64 -j4 -f x86_64``  |
| mac64           | ``-t mac64 -j4 -f``           |
| android-aarch64 | ``-t android-aarch64 -x -j4 -f`` |

### Common pitfalls
- If used, the `-t` option (target) MUST be specified BEFORE the `-f` option (optimizations)
- Avoid using the script in directory trees containing spaces. Some libraries don't like trying to be built in directory trees containing spaces, e.g. `/home/user/my folder/pocketmine-mp/` might experience problems.

## windows-compile-vs.bat

i am not build for windows edition
