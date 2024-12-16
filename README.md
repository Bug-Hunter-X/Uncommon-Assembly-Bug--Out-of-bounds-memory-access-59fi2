# Uncommon Assembly Bug: Out-of-bounds memory access

This repository demonstrates a subtle bug in assembly code related to out-of-bounds memory access. The bug arises from the lack of bounds checking on array indices, which can lead to unpredictable behavior and crashes.

## Bug Description
The provided assembly code contains two lines that are susceptible to out-of-bounds memory access. The first line uses `ecx` as an index into an array, while the second line uses `esi` as an index. If either `ecx` or `esi` has a large value that exceeds the bounds of the array, the code will attempt to access memory outside the allocated region.