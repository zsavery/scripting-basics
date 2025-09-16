#!/bin/bash

# mulit_args.bash
# Demonstrates the difference between "$*" and "$@" when iterating
# over positional parameters (script arguments) in bash.
#
# Usage examples:
#   ./arguments/mulit_args.bash one two three
#   ./arguments/mulit_args.bash "one two" three
#
# Key points:
# - "$*" when quoted expands all positional parameters as a single string
#   (the parameters are joined using the first character of IFS, usually a space).
#   Iterating with `for arg in "$*"` will run the loop exactly once with
#   a single item containing all arguments concatenated.
#
# - "$@" when quoted expands to separate quoted strings, one per positional
#   parameter. Iterating with `for arg in "$@"` preserves each argument as
#   a separate loop item (including arguments that contain spaces).
#
# We keep the script behavior unchanged; the comments below explain what
# each loop prints and why.

echo "Iterating with \$*"
for arg in "$*"
do
    # Since "$*" is quoted, the entire list of arguments becomes a
    # single string. This will print one line containing all arguments
    # separated by the first character of IFS (space by default).
    echo "$arg"
done

echo "Iterating with \$@"
for arg in "$@"
do
    # "$@" quoted expands to separate words, preserving each original
    # argument. This loop will print one line per original argument, even
    # if an argument contains spaces.
    echo "$arg"
done