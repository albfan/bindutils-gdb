#!/bin/bash

test_description="Testing backtrace output"

. ./sharness/sharness.sh

test_expect_success "Compare backtrace" "
    ln -s ../sighandler sighandler
    ./sighandler | sed \"s+$(dirname \\"$PWD\\")/++g\" | sed '/__libc_start_main/d' > sighandler.output
    diff sighandler.output ../sighandler.result
"

test_done

