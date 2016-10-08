[![Build Status](https://travis-ci.org/albfan/bindutils-gdb.svg?branch=addr2line-library-call)](https://travis-ci.org/albfan/bindutils-gdb)

# Implementing addr2line as library

## Intro

In programs outside C world, backtrace with source information is relative common. addr2line brings that power to C language, but is more a post-mortem utility than a debug helper.

## Use case

Here is a complete test (test_backtrace.sh) that implements required functionality. the only thing that is left undone is to make a call with a library instead of this system call (though popen() function)

## FAQ

- Why add a test suite an continuous integration?

If you are aware of these tecnologies, that allows anyone to propose solutions. I will not test them, test suite and continuous integration will do. If your implementation pass that steps, you catch my attention. Let's work only on working stuff.

- Why use bindtutils-gdb repo?

Whenever this feature is ready, next step is to left avaliable for anyone, so implement it directly on bindutils repo seems the right way to do it.

- I want to have this on my project and I want to collaborate but all that stuff puzzles me, how can I help?

Proposals, collaboration and any non code related ideas, are welcome on [dedicated issue](https://github.com/albfan/bindutils-gdb/issues/1)
