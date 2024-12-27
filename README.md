# Lua Function Unexpected Argument Handling

This repository demonstrates an uncommon bug in Lua related to how functions handle missing arguments. The `foo` function is designed to return `nil` if the input is `nil`, otherwise it adds 1 to the input. However, when called without any arguments, it unexpectedly returns 1 instead of `nil`.

The `bug.lua` file contains the buggy code, while `bugSolution.lua` provides a corrected version.

## Bug Description

Lua functions with optional arguments may not produce intended behavior when called without providing arguments. Lua treats missing arguments as nil but unexpected behavior may arise when performing arithmetic operations with nil values. This may result in unexpected return values or errors. 

## Solution

The corrected version explicitly checks for the absence of arguments, ensuring that the function returns nil when no arguments are passed.