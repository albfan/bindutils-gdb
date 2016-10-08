#!/bin/bash

test_description="Testing backtrace output"

. ./sharness/sharness.sh

gcc ../sighandler.c -g -o sighandler -rdynamic

test_expect_success "Compare backtrace" "
    ./sighandler | sed \"s+$PWD/++g\" | sed '/__libc_start_main/d' > sighandler.output
    diff sighandler.output ../sighandler.result
"

test_done

