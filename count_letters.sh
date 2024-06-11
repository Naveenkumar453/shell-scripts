#!/bin/bash
set -x
word=mississippi
grep -o "s" <<<$word |wc -l
