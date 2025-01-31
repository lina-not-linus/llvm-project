# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=znver3 -instruction-tables < %s | FileCheck %s

bzhi        %eax, %ebx, %ecx
bzhi        %eax, (%rbx), %ecx

bzhi        %rax, %rbx, %rcx
bzhi        %rax, (%rbx), %rcx

mulx        %eax, %ebx, %ecx
mulx        (%rax), %ebx, %ecx

mulx        %rax, %rbx, %rcx
mulx        (%rax), %rbx, %rcx

pdep        %eax, %ebx, %ecx
pdep        (%rax), %ebx, %ecx

pdep        %rax, %rbx, %rcx
pdep        (%rax), %rbx, %rcx

pext        %eax, %ebx, %ecx
pext        (%rax), %ebx, %ecx

pext        %rax, %rbx, %rcx
pext        (%rax), %rbx, %rcx

rorx        $1, %eax, %ecx
rorx        $1, (%rax), %ecx

rorx        $1, %rax, %rcx
rorx        $1, (%rax), %rcx

sarx        %eax, %ebx, %ecx
sarx        %eax, (%rbx), %ecx

sarx        %rax, %rbx, %rcx
sarx        %rax, (%rbx), %rcx

shlx        %eax, %ebx, %ecx
shlx        %eax, (%rbx), %ecx

shlx        %rax, %rbx, %rcx
shlx        %rax, (%rbx), %rcx

shrx        %eax, %ebx, %ecx
shrx        %eax, (%rbx), %ecx

shrx        %rax, %rbx, %rcx
shrx        %rax, (%rbx), %rcx

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      1     0.50                        bzhil	%eax, %ebx, %ecx
# CHECK-NEXT:  2      5     0.50    *                   bzhil	%eax, (%rbx), %ecx
# CHECK-NEXT:  1      1     0.50                        bzhiq	%rax, %rbx, %rcx
# CHECK-NEXT:  2      5     0.50    *                   bzhiq	%rax, (%rbx), %rcx
# CHECK-NEXT:  2      3     1.00                        mulxl	%eax, %ebx, %ecx
# CHECK-NEXT:  2      7     2.00    *                   mulxl	(%rax), %ebx, %ecx
# CHECK-NEXT:  2      4     1.00                        mulxq	%rax, %rbx, %rcx
# CHECK-NEXT:  2      8     2.00    *                   mulxq	(%rax), %rbx, %rcx
# CHECK-NEXT:  1      3     1.00                        pdepl	%eax, %ebx, %ecx
# CHECK-NEXT:  1      5     0.33    *                   pdepl	(%rax), %ebx, %ecx
# CHECK-NEXT:  1      3     1.00                        pdepq	%rax, %rbx, %rcx
# CHECK-NEXT:  1      5     0.33    *                   pdepq	(%rax), %rbx, %rcx
# CHECK-NEXT:  1      3     1.00                        pextl	%eax, %ebx, %ecx
# CHECK-NEXT:  1      5     0.33    *                   pextl	(%rax), %ebx, %ecx
# CHECK-NEXT:  1      3     1.00                        pextq	%rax, %rbx, %rcx
# CHECK-NEXT:  1      5     0.33    *                   pextq	(%rax), %rbx, %rcx
# CHECK-NEXT:  1      1     0.50                        rorxl	$1, %eax, %ecx
# CHECK-NEXT:  2      5     0.50    *                   rorxl	$1, (%rax), %ecx
# CHECK-NEXT:  1      1     0.50                        rorxq	$1, %rax, %rcx
# CHECK-NEXT:  2      5     0.50    *                   rorxq	$1, (%rax), %rcx
# CHECK-NEXT:  1      1     0.50                        sarxl	%eax, %ebx, %ecx
# CHECK-NEXT:  2      5     0.50    *                   sarxl	%eax, (%rbx), %ecx
# CHECK-NEXT:  1      1     0.50                        sarxq	%rax, %rbx, %rcx
# CHECK-NEXT:  2      5     0.50    *                   sarxq	%rax, (%rbx), %rcx
# CHECK-NEXT:  1      1     0.50                        shlxl	%eax, %ebx, %ecx
# CHECK-NEXT:  2      5     0.50    *                   shlxl	%eax, (%rbx), %ecx
# CHECK-NEXT:  1      1     0.50                        shlxq	%rax, %rbx, %rcx
# CHECK-NEXT:  2      5     0.50    *                   shlxq	%rax, (%rbx), %rcx
# CHECK-NEXT:  1      1     0.50                        shrxl	%eax, %ebx, %ecx
# CHECK-NEXT:  2      5     0.50    *                   shrxl	%eax, (%rbx), %ecx
# CHECK-NEXT:  1      1     0.50                        shrxq	%rax, %rbx, %rcx
# CHECK-NEXT:  2      5     0.50    *                   shrxq	%rax, (%rbx), %rcx

# CHECK:      Resources:
# CHECK-NEXT: [0]   - Zn3AGU0
# CHECK-NEXT: [1]   - Zn3AGU1
# CHECK-NEXT: [2]   - Zn3AGU2
# CHECK-NEXT: [3]   - Zn3ALU0
# CHECK-NEXT: [4]   - Zn3ALU1
# CHECK-NEXT: [5]   - Zn3ALU2
# CHECK-NEXT: [6]   - Zn3ALU3
# CHECK-NEXT: [7]   - Zn3BRU1
# CHECK-NEXT: [8]   - Zn3FPP0
# CHECK-NEXT: [9]   - Zn3FPP1
# CHECK-NEXT: [10]  - Zn3FPP2
# CHECK-NEXT: [11]  - Zn3FPP3
# CHECK-NEXT: [12.0] - Zn3FPP45
# CHECK-NEXT: [12.1] - Zn3FPP45
# CHECK-NEXT: [13]  - Zn3FPSt
# CHECK-NEXT: [14.0] - Zn3LSU
# CHECK-NEXT: [14.1] - Zn3LSU
# CHECK-NEXT: [14.2] - Zn3LSU
# CHECK-NEXT: [15.0] - Zn3Load
# CHECK-NEXT: [15.1] - Zn3Load
# CHECK-NEXT: [15.2] - Zn3Load
# CHECK-NEXT: [16.0] - Zn3Store
# CHECK-NEXT: [16.1] - Zn3Store

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12.0] [12.1] [13]   [14.0] [14.1] [14.2] [15.0] [15.1] [15.2] [16.0] [16.1]
# CHECK-NEXT: 5.33   5.33   5.33   1.00   21.00  11.00  1.00    -      -      -      -      -      -      -      -     5.33   5.33   5.33   5.33   5.33   5.33    -      -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12.0] [12.1] [13]   [14.0] [14.1] [14.2] [15.0] [15.1] [15.2] [16.0] [16.1] Instructions:
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     bzhil	%eax, %ebx, %ecx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     bzhil	%eax, (%rbx), %ecx
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     bzhiq	%rax, %rbx, %rcx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     bzhiq	%rax, (%rbx), %rcx
# CHECK-NEXT:  -      -      -      -     1.00    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     mulxl	%eax, %ebx, %ecx
# CHECK-NEXT: 0.33   0.33   0.33    -     2.00    -      -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     mulxl	(%rax), %ebx, %ecx
# CHECK-NEXT:  -      -      -      -     1.00    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     mulxq	%rax, %rbx, %rcx
# CHECK-NEXT: 0.33   0.33   0.33    -     2.00    -      -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     mulxq	(%rax), %rbx, %rcx
# CHECK-NEXT:  -      -      -      -     1.00    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     pdepl	%eax, %ebx, %ecx
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pdepl	(%rax), %ebx, %ecx
# CHECK-NEXT:  -      -      -      -     1.00    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     pdepq	%rax, %rbx, %rcx
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pdepq	(%rax), %rbx, %rcx
# CHECK-NEXT:  -      -      -      -     1.00    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     pextl	%eax, %ebx, %ecx
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pextl	(%rax), %ebx, %ecx
# CHECK-NEXT:  -      -      -      -     1.00    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     pextq	%rax, %rbx, %rcx
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pextq	(%rax), %rbx, %rcx
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     rorxl	$1, %eax, %ecx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     rorxl	$1, (%rax), %ecx
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     rorxq	$1, %rax, %rcx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     rorxq	$1, (%rax), %rcx
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     sarxl	%eax, %ebx, %ecx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     sarxl	%eax, (%rbx), %ecx
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     sarxq	%rax, %rbx, %rcx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     sarxq	%rax, (%rbx), %rcx
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     shlxl	%eax, %ebx, %ecx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     shlxl	%eax, (%rbx), %ecx
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     shlxq	%rax, %rbx, %rcx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     shlxq	%rax, (%rbx), %rcx
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     shrxl	%eax, %ebx, %ecx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     shrxl	%eax, (%rbx), %ecx
# CHECK-NEXT:  -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -     shrxq	%rax, %rbx, %rcx
# CHECK-NEXT: 0.33   0.33   0.33    -     0.50   0.50    -      -      -      -      -      -      -      -      -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     shrxq	%rax, (%rbx), %rcx
