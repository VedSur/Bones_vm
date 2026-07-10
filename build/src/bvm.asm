
global run_on_bvm_with_desc
extern handle_invalid_bvm_oper

section .text
run_on_bvm_with_desc:

    push rbx
    push r12
    push r13
    push r14
    push r15
    push rsi
    push rdi

    push rbp
    mov rbp, rsp
    
    mov r15, rcx
    mov r14, [r15+8]
    add r14, [r15]
    
    ._loop:
    mov bx, [r14]
    add r14, 2
    cmp bx, 0x0
    je .i_exit
    cmp bx, 0x1
    je .i_nop
    cmp bx, 0x2
    je .i_mov_mm_64b
    cmp bx, 0x3
    je .i_mov_mm_32b
    cmp bx, 0x4
    je .i_mov_mm_16b
    cmp bx, 0x5
    je .i_push_rax
    cmp bx, 0x6
    je .i_push_rcx
    cmp bx, 0x7
    je .i_push_rdx
    cmp bx, 0x8
    je .i_push_r8
    cmp bx, 0x9
    je .i_push_r9
    cmp bx, 0xa
    je .i_push_r10
    cmp bx, 0xb
    je .i_push_r11
    cmp bx, 0xc
    je .i_push_r12
    cmp bx, 0xd
    je .i_push_r13
    cmp bx, 0xe
    je .i_push_rsi
    cmp bx, 0xf
    je .i_push_rdi
    cmp bx, 0x10
    je .i_push_rsp
    cmp bx, 0x11
    je .i_push_rbp
    cmp bx, 0x12
    je .i_pop_rax
    cmp bx, 0x13
    je .i_pop_rcx
    cmp bx, 0x14
    je .i_pop_rdx
    cmp bx, 0x15
    je .i_pop_r8
    cmp bx, 0x16
    je .i_pop_r9
    cmp bx, 0x17
    je .i_pop_r10
    cmp bx, 0x18
    je .i_pop_r11
    cmp bx, 0x19
    je .i_pop_r12
    cmp bx, 0x1a
    je .i_pop_r13
    cmp bx, 0x1b
    je .i_pop_rsi
    cmp bx, 0x1c
    je .i_pop_rdi
    cmp bx, 0x1d
    je .i_pop_rsp
    cmp bx, 0x1e
    je .i_pop_rbp
    cmp bx, 0x1f
    je .i_dref_rax
    cmp bx, 0x20
    je .i_dref_rcx
    cmp bx, 0x21
    je .i_dref_rdx
    cmp bx, 0x22
    je .i_dref_r8
    cmp bx, 0x23
    je .i_dref_r9
    cmp bx, 0x24
    je .i_dref_r10
    cmp bx, 0x25
    je .i_dref_r11
    cmp bx, 0x26
    je .i_dref_r12
    cmp bx, 0x27
    je .i_dref_r13
    cmp bx, 0x28
    je .i_dref_rsi
    cmp bx, 0x29
    je .i_dref_rdi
    cmp bx, 0x2a
    je .i_dref_rsp
    cmp bx, 0x2b
    je .i_dref_rbp
    cmp bx, 0x2c
    je .i_ddref_rax
    cmp bx, 0x2d
    je .i_ddref_rcx
    cmp bx, 0x2e
    je .i_ddref_rdx
    cmp bx, 0x2f
    je .i_ddref_r8
    cmp bx, 0x30
    je .i_ddref_r9
    cmp bx, 0x31
    je .i_ddref_r10
    cmp bx, 0x32
    je .i_ddref_r11
    cmp bx, 0x33
    je .i_ddref_r12
    cmp bx, 0x34
    je .i_ddref_r13
    cmp bx, 0x35
    je .i_ddref_rsi
    cmp bx, 0x36
    je .i_ddref_rdi
    cmp bx, 0x37
    je .i_ddref_rsp
    cmp bx, 0x38
    je .i_ddref_rbp
    cmp bx, 0x39
    je .i_mov_rax
    cmp bx, 0x3a
    je .i_mov_rcx
    cmp bx, 0x3b
    je .i_mov_rdx
    cmp bx, 0x3c
    je .i_mov_r8
    cmp bx, 0x3d
    je .i_mov_r9
    cmp bx, 0x3e
    je .i_mov_r10
    cmp bx, 0x3f
    je .i_mov_r11
    cmp bx, 0x40
    je .i_mov_r12
    cmp bx, 0x41
    je .i_mov_r13
    cmp bx, 0x42
    je .i_mov_rsi
    cmp bx, 0x43
    je .i_mov_rdi
    cmp bx, 0x44
    je .i_mov_rsp
    cmp bx, 0x45
    je .i_mov_rbp
    cmp bx, 0x46
    je .i_mov_eax
    cmp bx, 0x47
    je .i_mov_ecx
    cmp bx, 0x48
    je .i_mov_edx
    cmp bx, 0x49
    je .i_mov_esi
    cmp bx, 0x4a
    je .i_mov_edi
    cmp bx, 0x4b
    je .i_mov_esp
    cmp bx, 0x4c
    je .i_mov_ebp
    cmp bx, 0x4d
    je .i_mov_ax
    cmp bx, 0x4e
    je .i_mov_cx
    cmp bx, 0x4f
    je .i_mov_dx
    cmp bx, 0x50
    je .i_mov_si
    cmp bx, 0x51
    je .i_mov_di
    cmp bx, 0x52
    je .i_mov_sp
    cmp bx, 0x53
    je .i_mov_bp
    cmp bx, 0x54
    je .i_mov_al
    cmp bx, 0x55
    je .i_mov_cl
    cmp bx, 0x56
    je .i_mov_dl
    cmp bx, 0x57
    je .i_mov_xmm0
    cmp bx, 0x58
    je .i_mov_xmm1
    cmp bx, 0x59
    je .i_mov_xmm2
    cmp bx, 0x5a
    je .i_mov_xmm3
    cmp bx, 0x5b
    je .i_mov_xmm4
    cmp bx, 0x5c
    je .i_mov_xmm5
    cmp bx, 0x5d
    je .i_mov_xmm6
    cmp bx, 0x5e
    je .i_mov_xmm7
    cmp bx, 0x5f
    je .i_mov_xmm8
    cmp bx, 0x60
    je .i_mov_xmm9
    cmp bx, 0x61
    je .i_mov_xmm10
    cmp bx, 0x62
    je .i_mov_xmm11
    cmp bx, 0x63
    je .i_mov_xmm12
    cmp bx, 0x64
    je .i_mov_xmm13
    cmp bx, 0x65
    je .i_mov_xmm14
    cmp bx, 0x66
    je .i_mov_xmm15
    cmp bx, 0x67
    je .i_add_rax
    cmp bx, 0x68
    je .i_add_rcx
    cmp bx, 0x69
    je .i_add_rdx
    cmp bx, 0x6a
    je .i_add_r8
    cmp bx, 0x6b
    je .i_add_r9
    cmp bx, 0x6c
    je .i_add_r10
    cmp bx, 0x6d
    je .i_add_r11
    cmp bx, 0x6e
    je .i_add_r12
    cmp bx, 0x6f
    je .i_add_r13
    cmp bx, 0x70
    je .i_add_rsi
    cmp bx, 0x71
    je .i_add_rdi
    cmp bx, 0x72
    je .i_add_rsp
    cmp bx, 0x73
    je .i_add_rbp
    cmp bx, 0x74
    je .i_add_eax
    cmp bx, 0x75
    je .i_add_ecx
    cmp bx, 0x76
    je .i_add_edx
    cmp bx, 0x77
    je .i_add_esi
    cmp bx, 0x78
    je .i_add_edi
    cmp bx, 0x79
    je .i_add_esp
    cmp bx, 0x7a
    je .i_add_ebp
    cmp bx, 0x7b
    je .i_add_ax
    cmp bx, 0x7c
    je .i_add_cx
    cmp bx, 0x7d
    je .i_add_dx
    cmp bx, 0x7e
    je .i_add_si
    cmp bx, 0x7f
    je .i_add_di
    cmp bx, 0x80
    je .i_add_sp
    cmp bx, 0x81
    je .i_add_bp
    cmp bx, 0x82
    je .i_add_al
    cmp bx, 0x83
    je .i_add_cl
    cmp bx, 0x84
    je .i_add_dl
    cmp bx, 0x85
    je .i_sub_rax
    cmp bx, 0x86
    je .i_sub_rcx
    cmp bx, 0x87
    je .i_sub_rdx
    cmp bx, 0x88
    je .i_sub_r8
    cmp bx, 0x89
    je .i_sub_r9
    cmp bx, 0x8a
    je .i_sub_r10
    cmp bx, 0x8b
    je .i_sub_r11
    cmp bx, 0x8c
    je .i_sub_r12
    cmp bx, 0x8d
    je .i_sub_r13
    cmp bx, 0x8e
    je .i_sub_rsi
    cmp bx, 0x8f
    je .i_sub_rdi
    cmp bx, 0x90
    je .i_sub_rsp
    cmp bx, 0x91
    je .i_sub_rbp
    cmp bx, 0x92
    je .i_sub_eax
    cmp bx, 0x93
    je .i_sub_ecx
    cmp bx, 0x94
    je .i_sub_edx
    cmp bx, 0x95
    je .i_sub_esi
    cmp bx, 0x96
    je .i_sub_edi
    cmp bx, 0x97
    je .i_sub_esp
    cmp bx, 0x98
    je .i_sub_ebp
    cmp bx, 0x99
    je .i_sub_ax
    cmp bx, 0x9a
    je .i_sub_cx
    cmp bx, 0x9b
    je .i_sub_dx
    cmp bx, 0x9c
    je .i_sub_si
    cmp bx, 0x9d
    je .i_sub_di
    cmp bx, 0x9e
    je .i_sub_sp
    cmp bx, 0x9f
    je .i_sub_bp
    cmp bx, 0xa0
    je .i_sub_al
    cmp bx, 0xa1
    je .i_sub_cl
    cmp bx, 0xa2
    je .i_sub_dl
    cmp bx, 0xa3
    je .i_imul_rax
    cmp bx, 0xa4
    je .i_imul_rcx
    cmp bx, 0xa5
    je .i_imul_rdx
    cmp bx, 0xa6
    je .i_imul_r8
    cmp bx, 0xa7
    je .i_imul_r9
    cmp bx, 0xa8
    je .i_imul_r10
    cmp bx, 0xa9
    je .i_imul_r11
    cmp bx, 0xaa
    je .i_imul_r12
    cmp bx, 0xab
    je .i_imul_r13
    cmp bx, 0xac
    je .i_imul_rsi
    cmp bx, 0xad
    je .i_imul_rdi
    cmp bx, 0xae
    je .i_imul_rsp
    cmp bx, 0xaf
    je .i_imul_rbp
    cmp bx, 0xb0
    je .i_imul_eax
    cmp bx, 0xb1
    je .i_imul_ecx
    cmp bx, 0xb2
    je .i_imul_edx
    cmp bx, 0xb3
    je .i_imul_esi
    cmp bx, 0xb4
    je .i_imul_edi
    cmp bx, 0xb5
    je .i_imul_esp
    cmp bx, 0xb6
    je .i_imul_ebp
    cmp bx, 0xb7
    je .i_imul_ax
    cmp bx, 0xb8
    je .i_imul_cx
    cmp bx, 0xb9
    je .i_imul_dx
    cmp bx, 0xba
    je .i_imul_si
    cmp bx, 0xbb
    je .i_imul_di
    cmp bx, 0xbc
    je .i_imul_sp
    cmp bx, 0xbd
    je .i_imul_bp
    cmp bx, 0xbe
    je .i_and_rax
    cmp bx, 0xbf
    je .i_and_rcx
    cmp bx, 0xc0
    je .i_and_rdx
    cmp bx, 0xc1
    je .i_and_r8
    cmp bx, 0xc2
    je .i_and_r9
    cmp bx, 0xc3
    je .i_and_r10
    cmp bx, 0xc4
    je .i_and_r11
    cmp bx, 0xc5
    je .i_and_r12
    cmp bx, 0xc6
    je .i_and_r13
    cmp bx, 0xc7
    je .i_and_rsi
    cmp bx, 0xc8
    je .i_and_rdi
    cmp bx, 0xc9
    je .i_and_rsp
    cmp bx, 0xca
    je .i_and_rbp
    cmp bx, 0xcb
    je .i_and_eax
    cmp bx, 0xcc
    je .i_and_ecx
    cmp bx, 0xcd
    je .i_and_edx
    cmp bx, 0xce
    je .i_and_esi
    cmp bx, 0xcf
    je .i_and_edi
    cmp bx, 0xd0
    je .i_and_esp
    cmp bx, 0xd1
    je .i_and_ebp
    cmp bx, 0xd2
    je .i_and_ax
    cmp bx, 0xd3
    je .i_and_cx
    cmp bx, 0xd4
    je .i_and_dx
    cmp bx, 0xd5
    je .i_and_si
    cmp bx, 0xd6
    je .i_and_di
    cmp bx, 0xd7
    je .i_and_sp
    cmp bx, 0xd8
    je .i_and_bp
    cmp bx, 0xd9
    je .i_and_al
    cmp bx, 0xda
    je .i_and_cl
    cmp bx, 0xdb
    je .i_and_dl
    cmp bx, 0xdc
    je .i_and_xmm0
    cmp bx, 0xdd
    je .i_and_xmm1
    cmp bx, 0xde
    je .i_and_xmm2
    cmp bx, 0xdf
    je .i_and_xmm3
    cmp bx, 0xe0
    je .i_and_xmm4
    cmp bx, 0xe1
    je .i_and_xmm5
    cmp bx, 0xe2
    je .i_and_xmm6
    cmp bx, 0xe3
    je .i_and_xmm7
    cmp bx, 0xe4
    je .i_and_xmm8
    cmp bx, 0xe5
    je .i_and_xmm9
    cmp bx, 0xe6
    je .i_and_xmm10
    cmp bx, 0xe7
    je .i_and_xmm11
    cmp bx, 0xe8
    je .i_and_xmm12
    cmp bx, 0xe9
    je .i_and_xmm13
    cmp bx, 0xea
    je .i_and_xmm14
    cmp bx, 0xeb
    je .i_and_xmm15
    cmp bx, 0xec
    je .i_or_rax
    cmp bx, 0xed
    je .i_or_rcx
    cmp bx, 0xee
    je .i_or_rdx
    cmp bx, 0xef
    je .i_or_r8
    cmp bx, 0xf0
    je .i_or_r9
    cmp bx, 0xf1
    je .i_or_r10
    cmp bx, 0xf2
    je .i_or_r11
    cmp bx, 0xf3
    je .i_or_r12
    cmp bx, 0xf4
    je .i_or_r13
    cmp bx, 0xf5
    je .i_or_rsi
    cmp bx, 0xf6
    je .i_or_rdi
    cmp bx, 0xf7
    je .i_or_rsp
    cmp bx, 0xf8
    je .i_or_rbp
    cmp bx, 0xf9
    je .i_or_eax
    cmp bx, 0xfa
    je .i_or_ecx
    cmp bx, 0xfb
    je .i_or_edx
    cmp bx, 0xfc
    je .i_or_esi
    cmp bx, 0xfd
    je .i_or_edi
    cmp bx, 0xfe
    je .i_or_esp
    cmp bx, 0xff
    je .i_or_ebp
    cmp bx, 0x100
    je .i_or_ax
    cmp bx, 0x101
    je .i_or_cx
    cmp bx, 0x102
    je .i_or_dx
    cmp bx, 0x103
    je .i_or_si
    cmp bx, 0x104
    je .i_or_di
    cmp bx, 0x105
    je .i_or_sp
    cmp bx, 0x106
    je .i_or_bp
    cmp bx, 0x107
    je .i_or_al
    cmp bx, 0x108
    je .i_or_cl
    cmp bx, 0x109
    je .i_or_dl
    cmp bx, 0x10a
    je .i_or_xmm0
    cmp bx, 0x10b
    je .i_or_xmm1
    cmp bx, 0x10c
    je .i_or_xmm2
    cmp bx, 0x10d
    je .i_or_xmm3
    cmp bx, 0x10e
    je .i_or_xmm4
    cmp bx, 0x10f
    je .i_or_xmm5
    cmp bx, 0x110
    je .i_or_xmm6
    cmp bx, 0x111
    je .i_or_xmm7
    cmp bx, 0x112
    je .i_or_xmm8
    cmp bx, 0x113
    je .i_or_xmm9
    cmp bx, 0x114
    je .i_or_xmm10
    cmp bx, 0x115
    je .i_or_xmm11
    cmp bx, 0x116
    je .i_or_xmm12
    cmp bx, 0x117
    je .i_or_xmm13
    cmp bx, 0x118
    je .i_or_xmm14
    cmp bx, 0x119
    je .i_or_xmm15
    cmp bx, 0x11a
    je .i_xor_rax
    cmp bx, 0x11b
    je .i_xor_rcx
    cmp bx, 0x11c
    je .i_xor_rdx
    cmp bx, 0x11d
    je .i_xor_r8
    cmp bx, 0x11e
    je .i_xor_r9
    cmp bx, 0x11f
    je .i_xor_r10
    cmp bx, 0x120
    je .i_xor_r11
    cmp bx, 0x121
    je .i_xor_r12
    cmp bx, 0x122
    je .i_xor_r13
    cmp bx, 0x123
    je .i_xor_rsi
    cmp bx, 0x124
    je .i_xor_rdi
    cmp bx, 0x125
    je .i_xor_rsp
    cmp bx, 0x126
    je .i_xor_rbp
    cmp bx, 0x127
    je .i_xor_eax
    cmp bx, 0x128
    je .i_xor_ecx
    cmp bx, 0x129
    je .i_xor_edx
    cmp bx, 0x12a
    je .i_xor_esi
    cmp bx, 0x12b
    je .i_xor_edi
    cmp bx, 0x12c
    je .i_xor_esp
    cmp bx, 0x12d
    je .i_xor_ebp
    cmp bx, 0x12e
    je .i_xor_ax
    cmp bx, 0x12f
    je .i_xor_cx
    cmp bx, 0x130
    je .i_xor_dx
    cmp bx, 0x131
    je .i_xor_si
    cmp bx, 0x132
    je .i_xor_di
    cmp bx, 0x133
    je .i_xor_sp
    cmp bx, 0x134
    je .i_xor_bp
    cmp bx, 0x135
    je .i_xor_al
    cmp bx, 0x136
    je .i_xor_cl
    cmp bx, 0x137
    je .i_xor_dl
    cmp bx, 0x138
    je .i_xor_xmm0
    cmp bx, 0x139
    je .i_xor_xmm1
    cmp bx, 0x13a
    je .i_xor_xmm2
    cmp bx, 0x13b
    je .i_xor_xmm3
    cmp bx, 0x13c
    je .i_xor_xmm4
    cmp bx, 0x13d
    je .i_xor_xmm5
    cmp bx, 0x13e
    je .i_xor_xmm6
    cmp bx, 0x13f
    je .i_xor_xmm7
    cmp bx, 0x140
    je .i_xor_xmm8
    cmp bx, 0x141
    je .i_xor_xmm9
    cmp bx, 0x142
    je .i_xor_xmm10
    cmp bx, 0x143
    je .i_xor_xmm11
    cmp bx, 0x144
    je .i_xor_xmm12
    cmp bx, 0x145
    je .i_xor_xmm13
    cmp bx, 0x146
    je .i_xor_xmm14
    cmp bx, 0x147
    je .i_xor_xmm15
    cmp bx, 0x148
    je .i_mov_rax_rax
    cmp bx, 0x149
    je .i_mov_rax_rcx
    cmp bx, 0x14a
    je .i_mov_rax_rdx
    cmp bx, 0x14b
    je .i_mov_rax_r8
    cmp bx, 0x14c
    je .i_mov_rax_r9
    cmp bx, 0x14d
    je .i_mov_rax_r10
    cmp bx, 0x14e
    je .i_mov_rax_r11
    cmp bx, 0x14f
    je .i_mov_rax_r12
    cmp bx, 0x150
    je .i_mov_rax_r13
    cmp bx, 0x151
    je .i_mov_rax_rsi
    cmp bx, 0x152
    je .i_mov_rax_rdi
    cmp bx, 0x153
    je .i_mov_rax_rsp
    cmp bx, 0x154
    je .i_mov_rax_rbp
    cmp bx, 0x155
    je .i_mov_rcx_rax
    cmp bx, 0x156
    je .i_mov_rcx_rcx
    cmp bx, 0x157
    je .i_mov_rcx_rdx
    cmp bx, 0x158
    je .i_mov_rcx_r8
    cmp bx, 0x159
    je .i_mov_rcx_r9
    cmp bx, 0x15a
    je .i_mov_rcx_r10
    cmp bx, 0x15b
    je .i_mov_rcx_r11
    cmp bx, 0x15c
    je .i_mov_rcx_r12
    cmp bx, 0x15d
    je .i_mov_rcx_r13
    cmp bx, 0x15e
    je .i_mov_rcx_rsi
    cmp bx, 0x15f
    je .i_mov_rcx_rdi
    cmp bx, 0x160
    je .i_mov_rcx_rsp
    cmp bx, 0x161
    je .i_mov_rcx_rbp
    cmp bx, 0x162
    je .i_mov_rdx_rax
    cmp bx, 0x163
    je .i_mov_rdx_rcx
    cmp bx, 0x164
    je .i_mov_rdx_rdx
    cmp bx, 0x165
    je .i_mov_rdx_r8
    cmp bx, 0x166
    je .i_mov_rdx_r9
    cmp bx, 0x167
    je .i_mov_rdx_r10
    cmp bx, 0x168
    je .i_mov_rdx_r11
    cmp bx, 0x169
    je .i_mov_rdx_r12
    cmp bx, 0x16a
    je .i_mov_rdx_r13
    cmp bx, 0x16b
    je .i_mov_rdx_rsi
    cmp bx, 0x16c
    je .i_mov_rdx_rdi
    cmp bx, 0x16d
    je .i_mov_rdx_rsp
    cmp bx, 0x16e
    je .i_mov_rdx_rbp
    cmp bx, 0x16f
    je .i_mov_r8_rax
    cmp bx, 0x170
    je .i_mov_r8_rcx
    cmp bx, 0x171
    je .i_mov_r8_rdx
    cmp bx, 0x172
    je .i_mov_r8_r8
    cmp bx, 0x173
    je .i_mov_r8_r9
    cmp bx, 0x174
    je .i_mov_r8_r10
    cmp bx, 0x175
    je .i_mov_r8_r11
    cmp bx, 0x176
    je .i_mov_r8_r12
    cmp bx, 0x177
    je .i_mov_r8_r13
    cmp bx, 0x178
    je .i_mov_r8_rsi
    cmp bx, 0x179
    je .i_mov_r8_rdi
    cmp bx, 0x17a
    je .i_mov_r8_rsp
    cmp bx, 0x17b
    je .i_mov_r8_rbp
    cmp bx, 0x17c
    je .i_mov_r9_rax
    cmp bx, 0x17d
    je .i_mov_r9_rcx
    cmp bx, 0x17e
    je .i_mov_r9_rdx
    cmp bx, 0x17f
    je .i_mov_r9_r8
    cmp bx, 0x180
    je .i_mov_r9_r9
    cmp bx, 0x181
    je .i_mov_r9_r10
    cmp bx, 0x182
    je .i_mov_r9_r11
    cmp bx, 0x183
    je .i_mov_r9_r12
    cmp bx, 0x184
    je .i_mov_r9_r13
    cmp bx, 0x185
    je .i_mov_r9_rsi
    cmp bx, 0x186
    je .i_mov_r9_rdi
    cmp bx, 0x187
    je .i_mov_r9_rsp
    cmp bx, 0x188
    je .i_mov_r9_rbp
    cmp bx, 0x189
    je .i_mov_r10_rax
    cmp bx, 0x18a
    je .i_mov_r10_rcx
    cmp bx, 0x18b
    je .i_mov_r10_rdx
    cmp bx, 0x18c
    je .i_mov_r10_r8
    cmp bx, 0x18d
    je .i_mov_r10_r9
    cmp bx, 0x18e
    je .i_mov_r10_r10
    cmp bx, 0x18f
    je .i_mov_r10_r11
    cmp bx, 0x190
    je .i_mov_r10_r12
    cmp bx, 0x191
    je .i_mov_r10_r13
    cmp bx, 0x192
    je .i_mov_r10_rsi
    cmp bx, 0x193
    je .i_mov_r10_rdi
    cmp bx, 0x194
    je .i_mov_r10_rsp
    cmp bx, 0x195
    je .i_mov_r10_rbp
    cmp bx, 0x196
    je .i_mov_r11_rax
    cmp bx, 0x197
    je .i_mov_r11_rcx
    cmp bx, 0x198
    je .i_mov_r11_rdx
    cmp bx, 0x199
    je .i_mov_r11_r8
    cmp bx, 0x19a
    je .i_mov_r11_r9
    cmp bx, 0x19b
    je .i_mov_r11_r10
    cmp bx, 0x19c
    je .i_mov_r11_r11
    cmp bx, 0x19d
    je .i_mov_r11_r12
    cmp bx, 0x19e
    je .i_mov_r11_r13
    cmp bx, 0x19f
    je .i_mov_r11_rsi
    cmp bx, 0x1a0
    je .i_mov_r11_rdi
    cmp bx, 0x1a1
    je .i_mov_r11_rsp
    cmp bx, 0x1a2
    je .i_mov_r11_rbp
    cmp bx, 0x1a3
    je .i_mov_r12_rax
    cmp bx, 0x1a4
    je .i_mov_r12_rcx
    cmp bx, 0x1a5
    je .i_mov_r12_rdx
    cmp bx, 0x1a6
    je .i_mov_r12_r8
    cmp bx, 0x1a7
    je .i_mov_r12_r9
    cmp bx, 0x1a8
    je .i_mov_r12_r10
    cmp bx, 0x1a9
    je .i_mov_r12_r11
    cmp bx, 0x1aa
    je .i_mov_r12_r12
    cmp bx, 0x1ab
    je .i_mov_r12_r13
    cmp bx, 0x1ac
    je .i_mov_r12_rsi
    cmp bx, 0x1ad
    je .i_mov_r12_rdi
    cmp bx, 0x1ae
    je .i_mov_r12_rsp
    cmp bx, 0x1af
    je .i_mov_r12_rbp
    cmp bx, 0x1b0
    je .i_mov_r13_rax
    cmp bx, 0x1b1
    je .i_mov_r13_rcx
    cmp bx, 0x1b2
    je .i_mov_r13_rdx
    cmp bx, 0x1b3
    je .i_mov_r13_r8
    cmp bx, 0x1b4
    je .i_mov_r13_r9
    cmp bx, 0x1b5
    je .i_mov_r13_r10
    cmp bx, 0x1b6
    je .i_mov_r13_r11
    cmp bx, 0x1b7
    je .i_mov_r13_r12
    cmp bx, 0x1b8
    je .i_mov_r13_r13
    cmp bx, 0x1b9
    je .i_mov_r13_rsi
    cmp bx, 0x1ba
    je .i_mov_r13_rdi
    cmp bx, 0x1bb
    je .i_mov_r13_rsp
    cmp bx, 0x1bc
    je .i_mov_r13_rbp
    cmp bx, 0x1bd
    je .i_mov_rsi_rax
    cmp bx, 0x1be
    je .i_mov_rsi_rcx
    cmp bx, 0x1bf
    je .i_mov_rsi_rdx
    cmp bx, 0x1c0
    je .i_mov_rsi_r8
    cmp bx, 0x1c1
    je .i_mov_rsi_r9
    cmp bx, 0x1c2
    je .i_mov_rsi_r10
    cmp bx, 0x1c3
    je .i_mov_rsi_r11
    cmp bx, 0x1c4
    je .i_mov_rsi_r12
    cmp bx, 0x1c5
    je .i_mov_rsi_r13
    cmp bx, 0x1c6
    je .i_mov_rsi_rsi
    cmp bx, 0x1c7
    je .i_mov_rsi_rdi
    cmp bx, 0x1c8
    je .i_mov_rsi_rsp
    cmp bx, 0x1c9
    je .i_mov_rsi_rbp
    cmp bx, 0x1ca
    je .i_mov_rdi_rax
    cmp bx, 0x1cb
    je .i_mov_rdi_rcx
    cmp bx, 0x1cc
    je .i_mov_rdi_rdx
    cmp bx, 0x1cd
    je .i_mov_rdi_r8
    cmp bx, 0x1ce
    je .i_mov_rdi_r9
    cmp bx, 0x1cf
    je .i_mov_rdi_r10
    cmp bx, 0x1d0
    je .i_mov_rdi_r11
    cmp bx, 0x1d1
    je .i_mov_rdi_r12
    cmp bx, 0x1d2
    je .i_mov_rdi_r13
    cmp bx, 0x1d3
    je .i_mov_rdi_rsi
    cmp bx, 0x1d4
    je .i_mov_rdi_rdi
    cmp bx, 0x1d5
    je .i_mov_rdi_rsp
    cmp bx, 0x1d6
    je .i_mov_rdi_rbp
    cmp bx, 0x1d7
    je .i_mov_rsp_rax
    cmp bx, 0x1d8
    je .i_mov_rsp_rcx
    cmp bx, 0x1d9
    je .i_mov_rsp_rdx
    cmp bx, 0x1da
    je .i_mov_rsp_r8
    cmp bx, 0x1db
    je .i_mov_rsp_r9
    cmp bx, 0x1dc
    je .i_mov_rsp_r10
    cmp bx, 0x1dd
    je .i_mov_rsp_r11
    cmp bx, 0x1de
    je .i_mov_rsp_r12
    cmp bx, 0x1df
    je .i_mov_rsp_r13
    cmp bx, 0x1e0
    je .i_mov_rsp_rsi
    cmp bx, 0x1e1
    je .i_mov_rsp_rdi
    cmp bx, 0x1e2
    je .i_mov_rsp_rsp
    cmp bx, 0x1e3
    je .i_mov_rsp_rbp
    cmp bx, 0x1e4
    je .i_mov_rbp_rax
    cmp bx, 0x1e5
    je .i_mov_rbp_rcx
    cmp bx, 0x1e6
    je .i_mov_rbp_rdx
    cmp bx, 0x1e7
    je .i_mov_rbp_r8
    cmp bx, 0x1e8
    je .i_mov_rbp_r9
    cmp bx, 0x1e9
    je .i_mov_rbp_r10
    cmp bx, 0x1ea
    je .i_mov_rbp_r11
    cmp bx, 0x1eb
    je .i_mov_rbp_r12
    cmp bx, 0x1ec
    je .i_mov_rbp_r13
    cmp bx, 0x1ed
    je .i_mov_rbp_rsi
    cmp bx, 0x1ee
    je .i_mov_rbp_rdi
    cmp bx, 0x1ef
    je .i_mov_rbp_rsp
    cmp bx, 0x1f0
    je .i_mov_rbp_rbp
    cmp bx, 0x1f1
    je .i_mov_eax_eax
    cmp bx, 0x1f2
    je .i_mov_eax_ecx
    cmp bx, 0x1f3
    je .i_mov_eax_edx
    cmp bx, 0x1f4
    je .i_mov_eax_esi
    cmp bx, 0x1f5
    je .i_mov_eax_edi
    cmp bx, 0x1f6
    je .i_mov_eax_esp
    cmp bx, 0x1f7
    je .i_mov_eax_ebp
    cmp bx, 0x1f8
    je .i_mov_ecx_eax
    cmp bx, 0x1f9
    je .i_mov_ecx_ecx
    cmp bx, 0x1fa
    je .i_mov_ecx_edx
    cmp bx, 0x1fb
    je .i_mov_ecx_esi
    cmp bx, 0x1fc
    je .i_mov_ecx_edi
    cmp bx, 0x1fd
    je .i_mov_ecx_esp
    cmp bx, 0x1fe
    je .i_mov_ecx_ebp
    cmp bx, 0x1ff
    je .i_mov_edx_eax
    cmp bx, 0x200
    je .i_mov_edx_ecx
    cmp bx, 0x201
    je .i_mov_edx_edx
    cmp bx, 0x202
    je .i_mov_edx_esi
    cmp bx, 0x203
    je .i_mov_edx_edi
    cmp bx, 0x204
    je .i_mov_edx_esp
    cmp bx, 0x205
    je .i_mov_edx_ebp
    cmp bx, 0x206
    je .i_mov_esi_eax
    cmp bx, 0x207
    je .i_mov_esi_ecx
    cmp bx, 0x208
    je .i_mov_esi_edx
    cmp bx, 0x209
    je .i_mov_esi_esi
    cmp bx, 0x20a
    je .i_mov_esi_edi
    cmp bx, 0x20b
    je .i_mov_esi_esp
    cmp bx, 0x20c
    je .i_mov_esi_ebp
    cmp bx, 0x20d
    je .i_mov_edi_eax
    cmp bx, 0x20e
    je .i_mov_edi_ecx
    cmp bx, 0x20f
    je .i_mov_edi_edx
    cmp bx, 0x210
    je .i_mov_edi_esi
    cmp bx, 0x211
    je .i_mov_edi_edi
    cmp bx, 0x212
    je .i_mov_edi_esp
    cmp bx, 0x213
    je .i_mov_edi_ebp
    cmp bx, 0x214
    je .i_mov_esp_eax
    cmp bx, 0x215
    je .i_mov_esp_ecx
    cmp bx, 0x216
    je .i_mov_esp_edx
    cmp bx, 0x217
    je .i_mov_esp_esi
    cmp bx, 0x218
    je .i_mov_esp_edi
    cmp bx, 0x219
    je .i_mov_esp_esp
    cmp bx, 0x21a
    je .i_mov_esp_ebp
    cmp bx, 0x21b
    je .i_mov_ebp_eax
    cmp bx, 0x21c
    je .i_mov_ebp_ecx
    cmp bx, 0x21d
    je .i_mov_ebp_edx
    cmp bx, 0x21e
    je .i_mov_ebp_esi
    cmp bx, 0x21f
    je .i_mov_ebp_edi
    cmp bx, 0x220
    je .i_mov_ebp_esp
    cmp bx, 0x221
    je .i_mov_ebp_ebp
    cmp bx, 0x222
    je .i_mov_ax_ax
    cmp bx, 0x223
    je .i_mov_ax_cx
    cmp bx, 0x224
    je .i_mov_ax_dx
    cmp bx, 0x225
    je .i_mov_ax_si
    cmp bx, 0x226
    je .i_mov_ax_di
    cmp bx, 0x227
    je .i_mov_ax_sp
    cmp bx, 0x228
    je .i_mov_ax_bp
    cmp bx, 0x229
    je .i_mov_cx_ax
    cmp bx, 0x22a
    je .i_mov_cx_cx
    cmp bx, 0x22b
    je .i_mov_cx_dx
    cmp bx, 0x22c
    je .i_mov_cx_si
    cmp bx, 0x22d
    je .i_mov_cx_di
    cmp bx, 0x22e
    je .i_mov_cx_sp
    cmp bx, 0x22f
    je .i_mov_cx_bp
    cmp bx, 0x230
    je .i_mov_dx_ax
    cmp bx, 0x231
    je .i_mov_dx_cx
    cmp bx, 0x232
    je .i_mov_dx_dx
    cmp bx, 0x233
    je .i_mov_dx_si
    cmp bx, 0x234
    je .i_mov_dx_di
    cmp bx, 0x235
    je .i_mov_dx_sp
    cmp bx, 0x236
    je .i_mov_dx_bp
    cmp bx, 0x237
    je .i_mov_si_ax
    cmp bx, 0x238
    je .i_mov_si_cx
    cmp bx, 0x239
    je .i_mov_si_dx
    cmp bx, 0x23a
    je .i_mov_si_si
    cmp bx, 0x23b
    je .i_mov_si_di
    cmp bx, 0x23c
    je .i_mov_si_sp
    cmp bx, 0x23d
    je .i_mov_si_bp
    cmp bx, 0x23e
    je .i_mov_di_ax
    cmp bx, 0x23f
    je .i_mov_di_cx
    cmp bx, 0x240
    je .i_mov_di_dx
    cmp bx, 0x241
    je .i_mov_di_si
    cmp bx, 0x242
    je .i_mov_di_di
    cmp bx, 0x243
    je .i_mov_di_sp
    cmp bx, 0x244
    je .i_mov_di_bp
    cmp bx, 0x245
    je .i_mov_sp_ax
    cmp bx, 0x246
    je .i_mov_sp_cx
    cmp bx, 0x247
    je .i_mov_sp_dx
    cmp bx, 0x248
    je .i_mov_sp_si
    cmp bx, 0x249
    je .i_mov_sp_di
    cmp bx, 0x24a
    je .i_mov_sp_sp
    cmp bx, 0x24b
    je .i_mov_sp_bp
    cmp bx, 0x24c
    je .i_mov_bp_ax
    cmp bx, 0x24d
    je .i_mov_bp_cx
    cmp bx, 0x24e
    je .i_mov_bp_dx
    cmp bx, 0x24f
    je .i_mov_bp_si
    cmp bx, 0x250
    je .i_mov_bp_di
    cmp bx, 0x251
    je .i_mov_bp_sp
    cmp bx, 0x252
    je .i_mov_bp_bp
    cmp bx, 0x253
    je .i_mov_al_al
    cmp bx, 0x254
    je .i_mov_al_cl
    cmp bx, 0x255
    je .i_mov_al_dl
    cmp bx, 0x256
    je .i_mov_cl_al
    cmp bx, 0x257
    je .i_mov_cl_cl
    cmp bx, 0x258
    je .i_mov_cl_dl
    cmp bx, 0x259
    je .i_mov_dl_al
    cmp bx, 0x25a
    je .i_mov_dl_cl
    cmp bx, 0x25b
    je .i_mov_dl_dl
    cmp bx, 0x25c
    je .i_mov_xmm0_xmm0
    cmp bx, 0x25d
    je .i_mov_xmm0_xmm1
    cmp bx, 0x25e
    je .i_mov_xmm0_xmm2
    cmp bx, 0x25f
    je .i_mov_xmm0_xmm3
    cmp bx, 0x260
    je .i_mov_xmm0_xmm4
    cmp bx, 0x261
    je .i_mov_xmm0_xmm5
    cmp bx, 0x262
    je .i_mov_xmm0_xmm6
    cmp bx, 0x263
    je .i_mov_xmm0_xmm7
    cmp bx, 0x264
    je .i_mov_xmm0_xmm8
    cmp bx, 0x265
    je .i_mov_xmm0_xmm9
    cmp bx, 0x266
    je .i_mov_xmm0_xmm10
    cmp bx, 0x267
    je .i_mov_xmm0_xmm11
    cmp bx, 0x268
    je .i_mov_xmm0_xmm12
    cmp bx, 0x269
    je .i_mov_xmm0_xmm13
    cmp bx, 0x26a
    je .i_mov_xmm0_xmm14
    cmp bx, 0x26b
    je .i_mov_xmm0_xmm15
    cmp bx, 0x26c
    je .i_mov_xmm1_xmm0
    cmp bx, 0x26d
    je .i_mov_xmm1_xmm1
    cmp bx, 0x26e
    je .i_mov_xmm1_xmm2
    cmp bx, 0x26f
    je .i_mov_xmm1_xmm3
    cmp bx, 0x270
    je .i_mov_xmm1_xmm4
    cmp bx, 0x271
    je .i_mov_xmm1_xmm5
    cmp bx, 0x272
    je .i_mov_xmm1_xmm6
    cmp bx, 0x273
    je .i_mov_xmm1_xmm7
    cmp bx, 0x274
    je .i_mov_xmm1_xmm8
    cmp bx, 0x275
    je .i_mov_xmm1_xmm9
    cmp bx, 0x276
    je .i_mov_xmm1_xmm10
    cmp bx, 0x277
    je .i_mov_xmm1_xmm11
    cmp bx, 0x278
    je .i_mov_xmm1_xmm12
    cmp bx, 0x279
    je .i_mov_xmm1_xmm13
    cmp bx, 0x27a
    je .i_mov_xmm1_xmm14
    cmp bx, 0x27b
    je .i_mov_xmm1_xmm15
    cmp bx, 0x27c
    je .i_mov_xmm2_xmm0
    cmp bx, 0x27d
    je .i_mov_xmm2_xmm1
    cmp bx, 0x27e
    je .i_mov_xmm2_xmm2
    cmp bx, 0x27f
    je .i_mov_xmm2_xmm3
    cmp bx, 0x280
    je .i_mov_xmm2_xmm4
    cmp bx, 0x281
    je .i_mov_xmm2_xmm5
    cmp bx, 0x282
    je .i_mov_xmm2_xmm6
    cmp bx, 0x283
    je .i_mov_xmm2_xmm7
    cmp bx, 0x284
    je .i_mov_xmm2_xmm8
    cmp bx, 0x285
    je .i_mov_xmm2_xmm9
    cmp bx, 0x286
    je .i_mov_xmm2_xmm10
    cmp bx, 0x287
    je .i_mov_xmm2_xmm11
    cmp bx, 0x288
    je .i_mov_xmm2_xmm12
    cmp bx, 0x289
    je .i_mov_xmm2_xmm13
    cmp bx, 0x28a
    je .i_mov_xmm2_xmm14
    cmp bx, 0x28b
    je .i_mov_xmm2_xmm15
    cmp bx, 0x28c
    je .i_mov_xmm3_xmm0
    cmp bx, 0x28d
    je .i_mov_xmm3_xmm1
    cmp bx, 0x28e
    je .i_mov_xmm3_xmm2
    cmp bx, 0x28f
    je .i_mov_xmm3_xmm3
    cmp bx, 0x290
    je .i_mov_xmm3_xmm4
    cmp bx, 0x291
    je .i_mov_xmm3_xmm5
    cmp bx, 0x292
    je .i_mov_xmm3_xmm6
    cmp bx, 0x293
    je .i_mov_xmm3_xmm7
    cmp bx, 0x294
    je .i_mov_xmm3_xmm8
    cmp bx, 0x295
    je .i_mov_xmm3_xmm9
    cmp bx, 0x296
    je .i_mov_xmm3_xmm10
    cmp bx, 0x297
    je .i_mov_xmm3_xmm11
    cmp bx, 0x298
    je .i_mov_xmm3_xmm12
    cmp bx, 0x299
    je .i_mov_xmm3_xmm13
    cmp bx, 0x29a
    je .i_mov_xmm3_xmm14
    cmp bx, 0x29b
    je .i_mov_xmm3_xmm15
    cmp bx, 0x29c
    je .i_mov_xmm4_xmm0
    cmp bx, 0x29d
    je .i_mov_xmm4_xmm1
    cmp bx, 0x29e
    je .i_mov_xmm4_xmm2
    cmp bx, 0x29f
    je .i_mov_xmm4_xmm3
    cmp bx, 0x2a0
    je .i_mov_xmm4_xmm4
    cmp bx, 0x2a1
    je .i_mov_xmm4_xmm5
    cmp bx, 0x2a2
    je .i_mov_xmm4_xmm6
    cmp bx, 0x2a3
    je .i_mov_xmm4_xmm7
    cmp bx, 0x2a4
    je .i_mov_xmm4_xmm8
    cmp bx, 0x2a5
    je .i_mov_xmm4_xmm9
    cmp bx, 0x2a6
    je .i_mov_xmm4_xmm10
    cmp bx, 0x2a7
    je .i_mov_xmm4_xmm11
    cmp bx, 0x2a8
    je .i_mov_xmm4_xmm12
    cmp bx, 0x2a9
    je .i_mov_xmm4_xmm13
    cmp bx, 0x2aa
    je .i_mov_xmm4_xmm14
    cmp bx, 0x2ab
    je .i_mov_xmm4_xmm15
    cmp bx, 0x2ac
    je .i_mov_xmm5_xmm0
    cmp bx, 0x2ad
    je .i_mov_xmm5_xmm1
    cmp bx, 0x2ae
    je .i_mov_xmm5_xmm2
    cmp bx, 0x2af
    je .i_mov_xmm5_xmm3
    cmp bx, 0x2b0
    je .i_mov_xmm5_xmm4
    cmp bx, 0x2b1
    je .i_mov_xmm5_xmm5
    cmp bx, 0x2b2
    je .i_mov_xmm5_xmm6
    cmp bx, 0x2b3
    je .i_mov_xmm5_xmm7
    cmp bx, 0x2b4
    je .i_mov_xmm5_xmm8
    cmp bx, 0x2b5
    je .i_mov_xmm5_xmm9
    cmp bx, 0x2b6
    je .i_mov_xmm5_xmm10
    cmp bx, 0x2b7
    je .i_mov_xmm5_xmm11
    cmp bx, 0x2b8
    je .i_mov_xmm5_xmm12
    cmp bx, 0x2b9
    je .i_mov_xmm5_xmm13
    cmp bx, 0x2ba
    je .i_mov_xmm5_xmm14
    cmp bx, 0x2bb
    je .i_mov_xmm5_xmm15
    cmp bx, 0x2bc
    je .i_mov_xmm6_xmm0
    cmp bx, 0x2bd
    je .i_mov_xmm6_xmm1
    cmp bx, 0x2be
    je .i_mov_xmm6_xmm2
    cmp bx, 0x2bf
    je .i_mov_xmm6_xmm3
    cmp bx, 0x2c0
    je .i_mov_xmm6_xmm4
    cmp bx, 0x2c1
    je .i_mov_xmm6_xmm5
    cmp bx, 0x2c2
    je .i_mov_xmm6_xmm6
    cmp bx, 0x2c3
    je .i_mov_xmm6_xmm7
    cmp bx, 0x2c4
    je .i_mov_xmm6_xmm8
    cmp bx, 0x2c5
    je .i_mov_xmm6_xmm9
    cmp bx, 0x2c6
    je .i_mov_xmm6_xmm10
    cmp bx, 0x2c7
    je .i_mov_xmm6_xmm11
    cmp bx, 0x2c8
    je .i_mov_xmm6_xmm12
    cmp bx, 0x2c9
    je .i_mov_xmm6_xmm13
    cmp bx, 0x2ca
    je .i_mov_xmm6_xmm14
    cmp bx, 0x2cb
    je .i_mov_xmm6_xmm15
    cmp bx, 0x2cc
    je .i_mov_xmm7_xmm0
    cmp bx, 0x2cd
    je .i_mov_xmm7_xmm1
    cmp bx, 0x2ce
    je .i_mov_xmm7_xmm2
    cmp bx, 0x2cf
    je .i_mov_xmm7_xmm3
    cmp bx, 0x2d0
    je .i_mov_xmm7_xmm4
    cmp bx, 0x2d1
    je .i_mov_xmm7_xmm5
    cmp bx, 0x2d2
    je .i_mov_xmm7_xmm6
    cmp bx, 0x2d3
    je .i_mov_xmm7_xmm7
    cmp bx, 0x2d4
    je .i_mov_xmm7_xmm8
    cmp bx, 0x2d5
    je .i_mov_xmm7_xmm9
    cmp bx, 0x2d6
    je .i_mov_xmm7_xmm10
    cmp bx, 0x2d7
    je .i_mov_xmm7_xmm11
    cmp bx, 0x2d8
    je .i_mov_xmm7_xmm12
    cmp bx, 0x2d9
    je .i_mov_xmm7_xmm13
    cmp bx, 0x2da
    je .i_mov_xmm7_xmm14
    cmp bx, 0x2db
    je .i_mov_xmm7_xmm15
    cmp bx, 0x2dc
    je .i_mov_xmm8_xmm0
    cmp bx, 0x2dd
    je .i_mov_xmm8_xmm1
    cmp bx, 0x2de
    je .i_mov_xmm8_xmm2
    cmp bx, 0x2df
    je .i_mov_xmm8_xmm3
    cmp bx, 0x2e0
    je .i_mov_xmm8_xmm4
    cmp bx, 0x2e1
    je .i_mov_xmm8_xmm5
    cmp bx, 0x2e2
    je .i_mov_xmm8_xmm6
    cmp bx, 0x2e3
    je .i_mov_xmm8_xmm7
    cmp bx, 0x2e4
    je .i_mov_xmm8_xmm8
    cmp bx, 0x2e5
    je .i_mov_xmm8_xmm9
    cmp bx, 0x2e6
    je .i_mov_xmm8_xmm10
    cmp bx, 0x2e7
    je .i_mov_xmm8_xmm11
    cmp bx, 0x2e8
    je .i_mov_xmm8_xmm12
    cmp bx, 0x2e9
    je .i_mov_xmm8_xmm13
    cmp bx, 0x2ea
    je .i_mov_xmm8_xmm14
    cmp bx, 0x2eb
    je .i_mov_xmm8_xmm15
    cmp bx, 0x2ec
    je .i_mov_xmm9_xmm0
    cmp bx, 0x2ed
    je .i_mov_xmm9_xmm1
    cmp bx, 0x2ee
    je .i_mov_xmm9_xmm2
    cmp bx, 0x2ef
    je .i_mov_xmm9_xmm3
    cmp bx, 0x2f0
    je .i_mov_xmm9_xmm4
    cmp bx, 0x2f1
    je .i_mov_xmm9_xmm5
    cmp bx, 0x2f2
    je .i_mov_xmm9_xmm6
    cmp bx, 0x2f3
    je .i_mov_xmm9_xmm7
    cmp bx, 0x2f4
    je .i_mov_xmm9_xmm8
    cmp bx, 0x2f5
    je .i_mov_xmm9_xmm9
    cmp bx, 0x2f6
    je .i_mov_xmm9_xmm10
    cmp bx, 0x2f7
    je .i_mov_xmm9_xmm11
    cmp bx, 0x2f8
    je .i_mov_xmm9_xmm12
    cmp bx, 0x2f9
    je .i_mov_xmm9_xmm13
    cmp bx, 0x2fa
    je .i_mov_xmm9_xmm14
    cmp bx, 0x2fb
    je .i_mov_xmm9_xmm15
    cmp bx, 0x2fc
    je .i_mov_xmm10_xmm0
    cmp bx, 0x2fd
    je .i_mov_xmm10_xmm1
    cmp bx, 0x2fe
    je .i_mov_xmm10_xmm2
    cmp bx, 0x2ff
    je .i_mov_xmm10_xmm3
    cmp bx, 0x300
    je .i_mov_xmm10_xmm4
    cmp bx, 0x301
    je .i_mov_xmm10_xmm5
    cmp bx, 0x302
    je .i_mov_xmm10_xmm6
    cmp bx, 0x303
    je .i_mov_xmm10_xmm7
    cmp bx, 0x304
    je .i_mov_xmm10_xmm8
    cmp bx, 0x305
    je .i_mov_xmm10_xmm9
    cmp bx, 0x306
    je .i_mov_xmm10_xmm10
    cmp bx, 0x307
    je .i_mov_xmm10_xmm11
    cmp bx, 0x308
    je .i_mov_xmm10_xmm12
    cmp bx, 0x309
    je .i_mov_xmm10_xmm13
    cmp bx, 0x30a
    je .i_mov_xmm10_xmm14
    cmp bx, 0x30b
    je .i_mov_xmm10_xmm15
    cmp bx, 0x30c
    je .i_mov_xmm11_xmm0
    cmp bx, 0x30d
    je .i_mov_xmm11_xmm1
    cmp bx, 0x30e
    je .i_mov_xmm11_xmm2
    cmp bx, 0x30f
    je .i_mov_xmm11_xmm3
    cmp bx, 0x310
    je .i_mov_xmm11_xmm4
    cmp bx, 0x311
    je .i_mov_xmm11_xmm5
    cmp bx, 0x312
    je .i_mov_xmm11_xmm6
    cmp bx, 0x313
    je .i_mov_xmm11_xmm7
    cmp bx, 0x314
    je .i_mov_xmm11_xmm8
    cmp bx, 0x315
    je .i_mov_xmm11_xmm9
    cmp bx, 0x316
    je .i_mov_xmm11_xmm10
    cmp bx, 0x317
    je .i_mov_xmm11_xmm11
    cmp bx, 0x318
    je .i_mov_xmm11_xmm12
    cmp bx, 0x319
    je .i_mov_xmm11_xmm13
    cmp bx, 0x31a
    je .i_mov_xmm11_xmm14
    cmp bx, 0x31b
    je .i_mov_xmm11_xmm15
    cmp bx, 0x31c
    je .i_mov_xmm12_xmm0
    cmp bx, 0x31d
    je .i_mov_xmm12_xmm1
    cmp bx, 0x31e
    je .i_mov_xmm12_xmm2
    cmp bx, 0x31f
    je .i_mov_xmm12_xmm3
    cmp bx, 0x320
    je .i_mov_xmm12_xmm4
    cmp bx, 0x321
    je .i_mov_xmm12_xmm5
    cmp bx, 0x322
    je .i_mov_xmm12_xmm6
    cmp bx, 0x323
    je .i_mov_xmm12_xmm7
    cmp bx, 0x324
    je .i_mov_xmm12_xmm8
    cmp bx, 0x325
    je .i_mov_xmm12_xmm9
    cmp bx, 0x326
    je .i_mov_xmm12_xmm10
    cmp bx, 0x327
    je .i_mov_xmm12_xmm11
    cmp bx, 0x328
    je .i_mov_xmm12_xmm12
    cmp bx, 0x329
    je .i_mov_xmm12_xmm13
    cmp bx, 0x32a
    je .i_mov_xmm12_xmm14
    cmp bx, 0x32b
    je .i_mov_xmm12_xmm15
    cmp bx, 0x32c
    je .i_mov_xmm13_xmm0
    cmp bx, 0x32d
    je .i_mov_xmm13_xmm1
    cmp bx, 0x32e
    je .i_mov_xmm13_xmm2
    cmp bx, 0x32f
    je .i_mov_xmm13_xmm3
    cmp bx, 0x330
    je .i_mov_xmm13_xmm4
    cmp bx, 0x331
    je .i_mov_xmm13_xmm5
    cmp bx, 0x332
    je .i_mov_xmm13_xmm6
    cmp bx, 0x333
    je .i_mov_xmm13_xmm7
    cmp bx, 0x334
    je .i_mov_xmm13_xmm8
    cmp bx, 0x335
    je .i_mov_xmm13_xmm9
    cmp bx, 0x336
    je .i_mov_xmm13_xmm10
    cmp bx, 0x337
    je .i_mov_xmm13_xmm11
    cmp bx, 0x338
    je .i_mov_xmm13_xmm12
    cmp bx, 0x339
    je .i_mov_xmm13_xmm13
    cmp bx, 0x33a
    je .i_mov_xmm13_xmm14
    cmp bx, 0x33b
    je .i_mov_xmm13_xmm15
    cmp bx, 0x33c
    je .i_mov_xmm14_xmm0
    cmp bx, 0x33d
    je .i_mov_xmm14_xmm1
    cmp bx, 0x33e
    je .i_mov_xmm14_xmm2
    cmp bx, 0x33f
    je .i_mov_xmm14_xmm3
    cmp bx, 0x340
    je .i_mov_xmm14_xmm4
    cmp bx, 0x341
    je .i_mov_xmm14_xmm5
    cmp bx, 0x342
    je .i_mov_xmm14_xmm6
    cmp bx, 0x343
    je .i_mov_xmm14_xmm7
    cmp bx, 0x344
    je .i_mov_xmm14_xmm8
    cmp bx, 0x345
    je .i_mov_xmm14_xmm9
    cmp bx, 0x346
    je .i_mov_xmm14_xmm10
    cmp bx, 0x347
    je .i_mov_xmm14_xmm11
    cmp bx, 0x348
    je .i_mov_xmm14_xmm12
    cmp bx, 0x349
    je .i_mov_xmm14_xmm13
    cmp bx, 0x34a
    je .i_mov_xmm14_xmm14
    cmp bx, 0x34b
    je .i_mov_xmm14_xmm15
    cmp bx, 0x34c
    je .i_mov_xmm15_xmm0
    cmp bx, 0x34d
    je .i_mov_xmm15_xmm1
    cmp bx, 0x34e
    je .i_mov_xmm15_xmm2
    cmp bx, 0x34f
    je .i_mov_xmm15_xmm3
    cmp bx, 0x350
    je .i_mov_xmm15_xmm4
    cmp bx, 0x351
    je .i_mov_xmm15_xmm5
    cmp bx, 0x352
    je .i_mov_xmm15_xmm6
    cmp bx, 0x353
    je .i_mov_xmm15_xmm7
    cmp bx, 0x354
    je .i_mov_xmm15_xmm8
    cmp bx, 0x355
    je .i_mov_xmm15_xmm9
    cmp bx, 0x356
    je .i_mov_xmm15_xmm10
    cmp bx, 0x357
    je .i_mov_xmm15_xmm11
    cmp bx, 0x358
    je .i_mov_xmm15_xmm12
    cmp bx, 0x359
    je .i_mov_xmm15_xmm13
    cmp bx, 0x35a
    je .i_mov_xmm15_xmm14
    cmp bx, 0x35b
    je .i_mov_xmm15_xmm15
    cmp bx, 0x35c
    je .i_add_rax_rax
    cmp bx, 0x35d
    je .i_add_rax_rcx
    cmp bx, 0x35e
    je .i_add_rax_rdx
    cmp bx, 0x35f
    je .i_add_rax_r8
    cmp bx, 0x360
    je .i_add_rax_r9
    cmp bx, 0x361
    je .i_add_rax_r10
    cmp bx, 0x362
    je .i_add_rax_r11
    cmp bx, 0x363
    je .i_add_rax_r12
    cmp bx, 0x364
    je .i_add_rax_r13
    cmp bx, 0x365
    je .i_add_rax_rsi
    cmp bx, 0x366
    je .i_add_rax_rdi
    cmp bx, 0x367
    je .i_add_rax_rsp
    cmp bx, 0x368
    je .i_add_rax_rbp
    cmp bx, 0x369
    je .i_add_rcx_rax
    cmp bx, 0x36a
    je .i_add_rcx_rcx
    cmp bx, 0x36b
    je .i_add_rcx_rdx
    cmp bx, 0x36c
    je .i_add_rcx_r8
    cmp bx, 0x36d
    je .i_add_rcx_r9
    cmp bx, 0x36e
    je .i_add_rcx_r10
    cmp bx, 0x36f
    je .i_add_rcx_r11
    cmp bx, 0x370
    je .i_add_rcx_r12
    cmp bx, 0x371
    je .i_add_rcx_r13
    cmp bx, 0x372
    je .i_add_rcx_rsi
    cmp bx, 0x373
    je .i_add_rcx_rdi
    cmp bx, 0x374
    je .i_add_rcx_rsp
    cmp bx, 0x375
    je .i_add_rcx_rbp
    cmp bx, 0x376
    je .i_add_rdx_rax
    cmp bx, 0x377
    je .i_add_rdx_rcx
    cmp bx, 0x378
    je .i_add_rdx_rdx
    cmp bx, 0x379
    je .i_add_rdx_r8
    cmp bx, 0x37a
    je .i_add_rdx_r9
    cmp bx, 0x37b
    je .i_add_rdx_r10
    cmp bx, 0x37c
    je .i_add_rdx_r11
    cmp bx, 0x37d
    je .i_add_rdx_r12
    cmp bx, 0x37e
    je .i_add_rdx_r13
    cmp bx, 0x37f
    je .i_add_rdx_rsi
    cmp bx, 0x380
    je .i_add_rdx_rdi
    cmp bx, 0x381
    je .i_add_rdx_rsp
    cmp bx, 0x382
    je .i_add_rdx_rbp
    cmp bx, 0x383
    je .i_add_r8_rax
    cmp bx, 0x384
    je .i_add_r8_rcx
    cmp bx, 0x385
    je .i_add_r8_rdx
    cmp bx, 0x386
    je .i_add_r8_r8
    cmp bx, 0x387
    je .i_add_r8_r9
    cmp bx, 0x388
    je .i_add_r8_r10
    cmp bx, 0x389
    je .i_add_r8_r11
    cmp bx, 0x38a
    je .i_add_r8_r12
    cmp bx, 0x38b
    je .i_add_r8_r13
    cmp bx, 0x38c
    je .i_add_r8_rsi
    cmp bx, 0x38d
    je .i_add_r8_rdi
    cmp bx, 0x38e
    je .i_add_r8_rsp
    cmp bx, 0x38f
    je .i_add_r8_rbp
    cmp bx, 0x390
    je .i_add_r9_rax
    cmp bx, 0x391
    je .i_add_r9_rcx
    cmp bx, 0x392
    je .i_add_r9_rdx
    cmp bx, 0x393
    je .i_add_r9_r8
    cmp bx, 0x394
    je .i_add_r9_r9
    cmp bx, 0x395
    je .i_add_r9_r10
    cmp bx, 0x396
    je .i_add_r9_r11
    cmp bx, 0x397
    je .i_add_r9_r12
    cmp bx, 0x398
    je .i_add_r9_r13
    cmp bx, 0x399
    je .i_add_r9_rsi
    cmp bx, 0x39a
    je .i_add_r9_rdi
    cmp bx, 0x39b
    je .i_add_r9_rsp
    cmp bx, 0x39c
    je .i_add_r9_rbp
    cmp bx, 0x39d
    je .i_add_r10_rax
    cmp bx, 0x39e
    je .i_add_r10_rcx
    cmp bx, 0x39f
    je .i_add_r10_rdx
    cmp bx, 0x3a0
    je .i_add_r10_r8
    cmp bx, 0x3a1
    je .i_add_r10_r9
    cmp bx, 0x3a2
    je .i_add_r10_r10
    cmp bx, 0x3a3
    je .i_add_r10_r11
    cmp bx, 0x3a4
    je .i_add_r10_r12
    cmp bx, 0x3a5
    je .i_add_r10_r13
    cmp bx, 0x3a6
    je .i_add_r10_rsi
    cmp bx, 0x3a7
    je .i_add_r10_rdi
    cmp bx, 0x3a8
    je .i_add_r10_rsp
    cmp bx, 0x3a9
    je .i_add_r10_rbp
    cmp bx, 0x3aa
    je .i_add_r11_rax
    cmp bx, 0x3ab
    je .i_add_r11_rcx
    cmp bx, 0x3ac
    je .i_add_r11_rdx
    cmp bx, 0x3ad
    je .i_add_r11_r8
    cmp bx, 0x3ae
    je .i_add_r11_r9
    cmp bx, 0x3af
    je .i_add_r11_r10
    cmp bx, 0x3b0
    je .i_add_r11_r11
    cmp bx, 0x3b1
    je .i_add_r11_r12
    cmp bx, 0x3b2
    je .i_add_r11_r13
    cmp bx, 0x3b3
    je .i_add_r11_rsi
    cmp bx, 0x3b4
    je .i_add_r11_rdi
    cmp bx, 0x3b5
    je .i_add_r11_rsp
    cmp bx, 0x3b6
    je .i_add_r11_rbp
    cmp bx, 0x3b7
    je .i_add_r12_rax
    cmp bx, 0x3b8
    je .i_add_r12_rcx
    cmp bx, 0x3b9
    je .i_add_r12_rdx
    cmp bx, 0x3ba
    je .i_add_r12_r8
    cmp bx, 0x3bb
    je .i_add_r12_r9
    cmp bx, 0x3bc
    je .i_add_r12_r10
    cmp bx, 0x3bd
    je .i_add_r12_r11
    cmp bx, 0x3be
    je .i_add_r12_r12
    cmp bx, 0x3bf
    je .i_add_r12_r13
    cmp bx, 0x3c0
    je .i_add_r12_rsi
    cmp bx, 0x3c1
    je .i_add_r12_rdi
    cmp bx, 0x3c2
    je .i_add_r12_rsp
    cmp bx, 0x3c3
    je .i_add_r12_rbp
    cmp bx, 0x3c4
    je .i_add_r13_rax
    cmp bx, 0x3c5
    je .i_add_r13_rcx
    cmp bx, 0x3c6
    je .i_add_r13_rdx
    cmp bx, 0x3c7
    je .i_add_r13_r8
    cmp bx, 0x3c8
    je .i_add_r13_r9
    cmp bx, 0x3c9
    je .i_add_r13_r10
    cmp bx, 0x3ca
    je .i_add_r13_r11
    cmp bx, 0x3cb
    je .i_add_r13_r12
    cmp bx, 0x3cc
    je .i_add_r13_r13
    cmp bx, 0x3cd
    je .i_add_r13_rsi
    cmp bx, 0x3ce
    je .i_add_r13_rdi
    cmp bx, 0x3cf
    je .i_add_r13_rsp
    cmp bx, 0x3d0
    je .i_add_r13_rbp
    cmp bx, 0x3d1
    je .i_add_rsi_rax
    cmp bx, 0x3d2
    je .i_add_rsi_rcx
    cmp bx, 0x3d3
    je .i_add_rsi_rdx
    cmp bx, 0x3d4
    je .i_add_rsi_r8
    cmp bx, 0x3d5
    je .i_add_rsi_r9
    cmp bx, 0x3d6
    je .i_add_rsi_r10
    cmp bx, 0x3d7
    je .i_add_rsi_r11
    cmp bx, 0x3d8
    je .i_add_rsi_r12
    cmp bx, 0x3d9
    je .i_add_rsi_r13
    cmp bx, 0x3da
    je .i_add_rsi_rsi
    cmp bx, 0x3db
    je .i_add_rsi_rdi
    cmp bx, 0x3dc
    je .i_add_rsi_rsp
    cmp bx, 0x3dd
    je .i_add_rsi_rbp
    cmp bx, 0x3de
    je .i_add_rdi_rax
    cmp bx, 0x3df
    je .i_add_rdi_rcx
    cmp bx, 0x3e0
    je .i_add_rdi_rdx
    cmp bx, 0x3e1
    je .i_add_rdi_r8
    cmp bx, 0x3e2
    je .i_add_rdi_r9
    cmp bx, 0x3e3
    je .i_add_rdi_r10
    cmp bx, 0x3e4
    je .i_add_rdi_r11
    cmp bx, 0x3e5
    je .i_add_rdi_r12
    cmp bx, 0x3e6
    je .i_add_rdi_r13
    cmp bx, 0x3e7
    je .i_add_rdi_rsi
    cmp bx, 0x3e8
    je .i_add_rdi_rdi
    cmp bx, 0x3e9
    je .i_add_rdi_rsp
    cmp bx, 0x3ea
    je .i_add_rdi_rbp
    cmp bx, 0x3eb
    je .i_add_rsp_rax
    cmp bx, 0x3ec
    je .i_add_rsp_rcx
    cmp bx, 0x3ed
    je .i_add_rsp_rdx
    cmp bx, 0x3ee
    je .i_add_rsp_r8
    cmp bx, 0x3ef
    je .i_add_rsp_r9
    cmp bx, 0x3f0
    je .i_add_rsp_r10
    cmp bx, 0x3f1
    je .i_add_rsp_r11
    cmp bx, 0x3f2
    je .i_add_rsp_r12
    cmp bx, 0x3f3
    je .i_add_rsp_r13
    cmp bx, 0x3f4
    je .i_add_rsp_rsi
    cmp bx, 0x3f5
    je .i_add_rsp_rdi
    cmp bx, 0x3f6
    je .i_add_rsp_rsp
    cmp bx, 0x3f7
    je .i_add_rsp_rbp
    cmp bx, 0x3f8
    je .i_add_rbp_rax
    cmp bx, 0x3f9
    je .i_add_rbp_rcx
    cmp bx, 0x3fa
    je .i_add_rbp_rdx
    cmp bx, 0x3fb
    je .i_add_rbp_r8
    cmp bx, 0x3fc
    je .i_add_rbp_r9
    cmp bx, 0x3fd
    je .i_add_rbp_r10
    cmp bx, 0x3fe
    je .i_add_rbp_r11
    cmp bx, 0x3ff
    je .i_add_rbp_r12
    cmp bx, 0x400
    je .i_add_rbp_r13
    cmp bx, 0x401
    je .i_add_rbp_rsi
    cmp bx, 0x402
    je .i_add_rbp_rdi
    cmp bx, 0x403
    je .i_add_rbp_rsp
    cmp bx, 0x404
    je .i_add_rbp_rbp
    cmp bx, 0x405
    je .i_add_eax_eax
    cmp bx, 0x406
    je .i_add_eax_ecx
    cmp bx, 0x407
    je .i_add_eax_edx
    cmp bx, 0x408
    je .i_add_eax_esi
    cmp bx, 0x409
    je .i_add_eax_edi
    cmp bx, 0x40a
    je .i_add_eax_esp
    cmp bx, 0x40b
    je .i_add_eax_ebp
    cmp bx, 0x40c
    je .i_add_ecx_eax
    cmp bx, 0x40d
    je .i_add_ecx_ecx
    cmp bx, 0x40e
    je .i_add_ecx_edx
    cmp bx, 0x40f
    je .i_add_ecx_esi
    cmp bx, 0x410
    je .i_add_ecx_edi
    cmp bx, 0x411
    je .i_add_ecx_esp
    cmp bx, 0x412
    je .i_add_ecx_ebp
    cmp bx, 0x413
    je .i_add_edx_eax
    cmp bx, 0x414
    je .i_add_edx_ecx
    cmp bx, 0x415
    je .i_add_edx_edx
    cmp bx, 0x416
    je .i_add_edx_esi
    cmp bx, 0x417
    je .i_add_edx_edi
    cmp bx, 0x418
    je .i_add_edx_esp
    cmp bx, 0x419
    je .i_add_edx_ebp
    cmp bx, 0x41a
    je .i_add_esi_eax
    cmp bx, 0x41b
    je .i_add_esi_ecx
    cmp bx, 0x41c
    je .i_add_esi_edx
    cmp bx, 0x41d
    je .i_add_esi_esi
    cmp bx, 0x41e
    je .i_add_esi_edi
    cmp bx, 0x41f
    je .i_add_esi_esp
    cmp bx, 0x420
    je .i_add_esi_ebp
    cmp bx, 0x421
    je .i_add_edi_eax
    cmp bx, 0x422
    je .i_add_edi_ecx
    cmp bx, 0x423
    je .i_add_edi_edx
    cmp bx, 0x424
    je .i_add_edi_esi
    cmp bx, 0x425
    je .i_add_edi_edi
    cmp bx, 0x426
    je .i_add_edi_esp
    cmp bx, 0x427
    je .i_add_edi_ebp
    cmp bx, 0x428
    je .i_add_esp_eax
    cmp bx, 0x429
    je .i_add_esp_ecx
    cmp bx, 0x42a
    je .i_add_esp_edx
    cmp bx, 0x42b
    je .i_add_esp_esi
    cmp bx, 0x42c
    je .i_add_esp_edi
    cmp bx, 0x42d
    je .i_add_esp_esp
    cmp bx, 0x42e
    je .i_add_esp_ebp
    cmp bx, 0x42f
    je .i_add_ebp_eax
    cmp bx, 0x430
    je .i_add_ebp_ecx
    cmp bx, 0x431
    je .i_add_ebp_edx
    cmp bx, 0x432
    je .i_add_ebp_esi
    cmp bx, 0x433
    je .i_add_ebp_edi
    cmp bx, 0x434
    je .i_add_ebp_esp
    cmp bx, 0x435
    je .i_add_ebp_ebp
    cmp bx, 0x436
    je .i_add_ax_ax
    cmp bx, 0x437
    je .i_add_ax_cx
    cmp bx, 0x438
    je .i_add_ax_dx
    cmp bx, 0x439
    je .i_add_ax_si
    cmp bx, 0x43a
    je .i_add_ax_di
    cmp bx, 0x43b
    je .i_add_ax_sp
    cmp bx, 0x43c
    je .i_add_ax_bp
    cmp bx, 0x43d
    je .i_add_cx_ax
    cmp bx, 0x43e
    je .i_add_cx_cx
    cmp bx, 0x43f
    je .i_add_cx_dx
    cmp bx, 0x440
    je .i_add_cx_si
    cmp bx, 0x441
    je .i_add_cx_di
    cmp bx, 0x442
    je .i_add_cx_sp
    cmp bx, 0x443
    je .i_add_cx_bp
    cmp bx, 0x444
    je .i_add_dx_ax
    cmp bx, 0x445
    je .i_add_dx_cx
    cmp bx, 0x446
    je .i_add_dx_dx
    cmp bx, 0x447
    je .i_add_dx_si
    cmp bx, 0x448
    je .i_add_dx_di
    cmp bx, 0x449
    je .i_add_dx_sp
    cmp bx, 0x44a
    je .i_add_dx_bp
    cmp bx, 0x44b
    je .i_add_si_ax
    cmp bx, 0x44c
    je .i_add_si_cx
    cmp bx, 0x44d
    je .i_add_si_dx
    cmp bx, 0x44e
    je .i_add_si_si
    cmp bx, 0x44f
    je .i_add_si_di
    cmp bx, 0x450
    je .i_add_si_sp
    cmp bx, 0x451
    je .i_add_si_bp
    cmp bx, 0x452
    je .i_add_di_ax
    cmp bx, 0x453
    je .i_add_di_cx
    cmp bx, 0x454
    je .i_add_di_dx
    cmp bx, 0x455
    je .i_add_di_si
    cmp bx, 0x456
    je .i_add_di_di
    cmp bx, 0x457
    je .i_add_di_sp
    cmp bx, 0x458
    je .i_add_di_bp
    cmp bx, 0x459
    je .i_add_sp_ax
    cmp bx, 0x45a
    je .i_add_sp_cx
    cmp bx, 0x45b
    je .i_add_sp_dx
    cmp bx, 0x45c
    je .i_add_sp_si
    cmp bx, 0x45d
    je .i_add_sp_di
    cmp bx, 0x45e
    je .i_add_sp_sp
    cmp bx, 0x45f
    je .i_add_sp_bp
    cmp bx, 0x460
    je .i_add_bp_ax
    cmp bx, 0x461
    je .i_add_bp_cx
    cmp bx, 0x462
    je .i_add_bp_dx
    cmp bx, 0x463
    je .i_add_bp_si
    cmp bx, 0x464
    je .i_add_bp_di
    cmp bx, 0x465
    je .i_add_bp_sp
    cmp bx, 0x466
    je .i_add_bp_bp
    cmp bx, 0x467
    je .i_add_al_al
    cmp bx, 0x468
    je .i_add_al_cl
    cmp bx, 0x469
    je .i_add_al_dl
    cmp bx, 0x46a
    je .i_add_cl_al
    cmp bx, 0x46b
    je .i_add_cl_cl
    cmp bx, 0x46c
    je .i_add_cl_dl
    cmp bx, 0x46d
    je .i_add_dl_al
    cmp bx, 0x46e
    je .i_add_dl_cl
    cmp bx, 0x46f
    je .i_add_dl_dl
    cmp bx, 0x470
    je .i_sub_rax_rax
    cmp bx, 0x471
    je .i_sub_rax_rcx
    cmp bx, 0x472
    je .i_sub_rax_rdx
    cmp bx, 0x473
    je .i_sub_rax_r8
    cmp bx, 0x474
    je .i_sub_rax_r9
    cmp bx, 0x475
    je .i_sub_rax_r10
    cmp bx, 0x476
    je .i_sub_rax_r11
    cmp bx, 0x477
    je .i_sub_rax_r12
    cmp bx, 0x478
    je .i_sub_rax_r13
    cmp bx, 0x479
    je .i_sub_rax_rsi
    cmp bx, 0x47a
    je .i_sub_rax_rdi
    cmp bx, 0x47b
    je .i_sub_rax_rsp
    cmp bx, 0x47c
    je .i_sub_rax_rbp
    cmp bx, 0x47d
    je .i_sub_rcx_rax
    cmp bx, 0x47e
    je .i_sub_rcx_rcx
    cmp bx, 0x47f
    je .i_sub_rcx_rdx
    cmp bx, 0x480
    je .i_sub_rcx_r8
    cmp bx, 0x481
    je .i_sub_rcx_r9
    cmp bx, 0x482
    je .i_sub_rcx_r10
    cmp bx, 0x483
    je .i_sub_rcx_r11
    cmp bx, 0x484
    je .i_sub_rcx_r12
    cmp bx, 0x485
    je .i_sub_rcx_r13
    cmp bx, 0x486
    je .i_sub_rcx_rsi
    cmp bx, 0x487
    je .i_sub_rcx_rdi
    cmp bx, 0x488
    je .i_sub_rcx_rsp
    cmp bx, 0x489
    je .i_sub_rcx_rbp
    cmp bx, 0x48a
    je .i_sub_rdx_rax
    cmp bx, 0x48b
    je .i_sub_rdx_rcx
    cmp bx, 0x48c
    je .i_sub_rdx_rdx
    cmp bx, 0x48d
    je .i_sub_rdx_r8
    cmp bx, 0x48e
    je .i_sub_rdx_r9
    cmp bx, 0x48f
    je .i_sub_rdx_r10
    cmp bx, 0x490
    je .i_sub_rdx_r11
    cmp bx, 0x491
    je .i_sub_rdx_r12
    cmp bx, 0x492
    je .i_sub_rdx_r13
    cmp bx, 0x493
    je .i_sub_rdx_rsi
    cmp bx, 0x494
    je .i_sub_rdx_rdi
    cmp bx, 0x495
    je .i_sub_rdx_rsp
    cmp bx, 0x496
    je .i_sub_rdx_rbp
    cmp bx, 0x497
    je .i_sub_r8_rax
    cmp bx, 0x498
    je .i_sub_r8_rcx
    cmp bx, 0x499
    je .i_sub_r8_rdx
    cmp bx, 0x49a
    je .i_sub_r8_r8
    cmp bx, 0x49b
    je .i_sub_r8_r9
    cmp bx, 0x49c
    je .i_sub_r8_r10
    cmp bx, 0x49d
    je .i_sub_r8_r11
    cmp bx, 0x49e
    je .i_sub_r8_r12
    cmp bx, 0x49f
    je .i_sub_r8_r13
    cmp bx, 0x4a0
    je .i_sub_r8_rsi
    cmp bx, 0x4a1
    je .i_sub_r8_rdi
    cmp bx, 0x4a2
    je .i_sub_r8_rsp
    cmp bx, 0x4a3
    je .i_sub_r8_rbp
    cmp bx, 0x4a4
    je .i_sub_r9_rax
    cmp bx, 0x4a5
    je .i_sub_r9_rcx
    cmp bx, 0x4a6
    je .i_sub_r9_rdx
    cmp bx, 0x4a7
    je .i_sub_r9_r8
    cmp bx, 0x4a8
    je .i_sub_r9_r9
    cmp bx, 0x4a9
    je .i_sub_r9_r10
    cmp bx, 0x4aa
    je .i_sub_r9_r11
    cmp bx, 0x4ab
    je .i_sub_r9_r12
    cmp bx, 0x4ac
    je .i_sub_r9_r13
    cmp bx, 0x4ad
    je .i_sub_r9_rsi
    cmp bx, 0x4ae
    je .i_sub_r9_rdi
    cmp bx, 0x4af
    je .i_sub_r9_rsp
    cmp bx, 0x4b0
    je .i_sub_r9_rbp
    cmp bx, 0x4b1
    je .i_sub_r10_rax
    cmp bx, 0x4b2
    je .i_sub_r10_rcx
    cmp bx, 0x4b3
    je .i_sub_r10_rdx
    cmp bx, 0x4b4
    je .i_sub_r10_r8
    cmp bx, 0x4b5
    je .i_sub_r10_r9
    cmp bx, 0x4b6
    je .i_sub_r10_r10
    cmp bx, 0x4b7
    je .i_sub_r10_r11
    cmp bx, 0x4b8
    je .i_sub_r10_r12
    cmp bx, 0x4b9
    je .i_sub_r10_r13
    cmp bx, 0x4ba
    je .i_sub_r10_rsi
    cmp bx, 0x4bb
    je .i_sub_r10_rdi
    cmp bx, 0x4bc
    je .i_sub_r10_rsp
    cmp bx, 0x4bd
    je .i_sub_r10_rbp
    cmp bx, 0x4be
    je .i_sub_r11_rax
    cmp bx, 0x4bf
    je .i_sub_r11_rcx
    cmp bx, 0x4c0
    je .i_sub_r11_rdx
    cmp bx, 0x4c1
    je .i_sub_r11_r8
    cmp bx, 0x4c2
    je .i_sub_r11_r9
    cmp bx, 0x4c3
    je .i_sub_r11_r10
    cmp bx, 0x4c4
    je .i_sub_r11_r11
    cmp bx, 0x4c5
    je .i_sub_r11_r12
    cmp bx, 0x4c6
    je .i_sub_r11_r13
    cmp bx, 0x4c7
    je .i_sub_r11_rsi
    cmp bx, 0x4c8
    je .i_sub_r11_rdi
    cmp bx, 0x4c9
    je .i_sub_r11_rsp
    cmp bx, 0x4ca
    je .i_sub_r11_rbp
    cmp bx, 0x4cb
    je .i_sub_r12_rax
    cmp bx, 0x4cc
    je .i_sub_r12_rcx
    cmp bx, 0x4cd
    je .i_sub_r12_rdx
    cmp bx, 0x4ce
    je .i_sub_r12_r8
    cmp bx, 0x4cf
    je .i_sub_r12_r9
    cmp bx, 0x4d0
    je .i_sub_r12_r10
    cmp bx, 0x4d1
    je .i_sub_r12_r11
    cmp bx, 0x4d2
    je .i_sub_r12_r12
    cmp bx, 0x4d3
    je .i_sub_r12_r13
    cmp bx, 0x4d4
    je .i_sub_r12_rsi
    cmp bx, 0x4d5
    je .i_sub_r12_rdi
    cmp bx, 0x4d6
    je .i_sub_r12_rsp
    cmp bx, 0x4d7
    je .i_sub_r12_rbp
    cmp bx, 0x4d8
    je .i_sub_r13_rax
    cmp bx, 0x4d9
    je .i_sub_r13_rcx
    cmp bx, 0x4da
    je .i_sub_r13_rdx
    cmp bx, 0x4db
    je .i_sub_r13_r8
    cmp bx, 0x4dc
    je .i_sub_r13_r9
    cmp bx, 0x4dd
    je .i_sub_r13_r10
    cmp bx, 0x4de
    je .i_sub_r13_r11
    cmp bx, 0x4df
    je .i_sub_r13_r12
    cmp bx, 0x4e0
    je .i_sub_r13_r13
    cmp bx, 0x4e1
    je .i_sub_r13_rsi
    cmp bx, 0x4e2
    je .i_sub_r13_rdi
    cmp bx, 0x4e3
    je .i_sub_r13_rsp
    cmp bx, 0x4e4
    je .i_sub_r13_rbp
    cmp bx, 0x4e5
    je .i_sub_rsi_rax
    cmp bx, 0x4e6
    je .i_sub_rsi_rcx
    cmp bx, 0x4e7
    je .i_sub_rsi_rdx
    cmp bx, 0x4e8
    je .i_sub_rsi_r8
    cmp bx, 0x4e9
    je .i_sub_rsi_r9
    cmp bx, 0x4ea
    je .i_sub_rsi_r10
    cmp bx, 0x4eb
    je .i_sub_rsi_r11
    cmp bx, 0x4ec
    je .i_sub_rsi_r12
    cmp bx, 0x4ed
    je .i_sub_rsi_r13
    cmp bx, 0x4ee
    je .i_sub_rsi_rsi
    cmp bx, 0x4ef
    je .i_sub_rsi_rdi
    cmp bx, 0x4f0
    je .i_sub_rsi_rsp
    cmp bx, 0x4f1
    je .i_sub_rsi_rbp
    cmp bx, 0x4f2
    je .i_sub_rdi_rax
    cmp bx, 0x4f3
    je .i_sub_rdi_rcx
    cmp bx, 0x4f4
    je .i_sub_rdi_rdx
    cmp bx, 0x4f5
    je .i_sub_rdi_r8
    cmp bx, 0x4f6
    je .i_sub_rdi_r9
    cmp bx, 0x4f7
    je .i_sub_rdi_r10
    cmp bx, 0x4f8
    je .i_sub_rdi_r11
    cmp bx, 0x4f9
    je .i_sub_rdi_r12
    cmp bx, 0x4fa
    je .i_sub_rdi_r13
    cmp bx, 0x4fb
    je .i_sub_rdi_rsi
    cmp bx, 0x4fc
    je .i_sub_rdi_rdi
    cmp bx, 0x4fd
    je .i_sub_rdi_rsp
    cmp bx, 0x4fe
    je .i_sub_rdi_rbp
    cmp bx, 0x4ff
    je .i_sub_rsp_rax
    cmp bx, 0x500
    je .i_sub_rsp_rcx
    cmp bx, 0x501
    je .i_sub_rsp_rdx
    cmp bx, 0x502
    je .i_sub_rsp_r8
    cmp bx, 0x503
    je .i_sub_rsp_r9
    cmp bx, 0x504
    je .i_sub_rsp_r10
    cmp bx, 0x505
    je .i_sub_rsp_r11
    cmp bx, 0x506
    je .i_sub_rsp_r12
    cmp bx, 0x507
    je .i_sub_rsp_r13
    cmp bx, 0x508
    je .i_sub_rsp_rsi
    cmp bx, 0x509
    je .i_sub_rsp_rdi
    cmp bx, 0x50a
    je .i_sub_rsp_rsp
    cmp bx, 0x50b
    je .i_sub_rsp_rbp
    cmp bx, 0x50c
    je .i_sub_rbp_rax
    cmp bx, 0x50d
    je .i_sub_rbp_rcx
    cmp bx, 0x50e
    je .i_sub_rbp_rdx
    cmp bx, 0x50f
    je .i_sub_rbp_r8
    cmp bx, 0x510
    je .i_sub_rbp_r9
    cmp bx, 0x511
    je .i_sub_rbp_r10
    cmp bx, 0x512
    je .i_sub_rbp_r11
    cmp bx, 0x513
    je .i_sub_rbp_r12
    cmp bx, 0x514
    je .i_sub_rbp_r13
    cmp bx, 0x515
    je .i_sub_rbp_rsi
    cmp bx, 0x516
    je .i_sub_rbp_rdi
    cmp bx, 0x517
    je .i_sub_rbp_rsp
    cmp bx, 0x518
    je .i_sub_rbp_rbp
    cmp bx, 0x519
    je .i_sub_eax_eax
    cmp bx, 0x51a
    je .i_sub_eax_ecx
    cmp bx, 0x51b
    je .i_sub_eax_edx
    cmp bx, 0x51c
    je .i_sub_eax_esi
    cmp bx, 0x51d
    je .i_sub_eax_edi
    cmp bx, 0x51e
    je .i_sub_eax_esp
    cmp bx, 0x51f
    je .i_sub_eax_ebp
    cmp bx, 0x520
    je .i_sub_ecx_eax
    cmp bx, 0x521
    je .i_sub_ecx_ecx
    cmp bx, 0x522
    je .i_sub_ecx_edx
    cmp bx, 0x523
    je .i_sub_ecx_esi
    cmp bx, 0x524
    je .i_sub_ecx_edi
    cmp bx, 0x525
    je .i_sub_ecx_esp
    cmp bx, 0x526
    je .i_sub_ecx_ebp
    cmp bx, 0x527
    je .i_sub_edx_eax
    cmp bx, 0x528
    je .i_sub_edx_ecx
    cmp bx, 0x529
    je .i_sub_edx_edx
    cmp bx, 0x52a
    je .i_sub_edx_esi
    cmp bx, 0x52b
    je .i_sub_edx_edi
    cmp bx, 0x52c
    je .i_sub_edx_esp
    cmp bx, 0x52d
    je .i_sub_edx_ebp
    cmp bx, 0x52e
    je .i_sub_esi_eax
    cmp bx, 0x52f
    je .i_sub_esi_ecx
    cmp bx, 0x530
    je .i_sub_esi_edx
    cmp bx, 0x531
    je .i_sub_esi_esi
    cmp bx, 0x532
    je .i_sub_esi_edi
    cmp bx, 0x533
    je .i_sub_esi_esp
    cmp bx, 0x534
    je .i_sub_esi_ebp
    cmp bx, 0x535
    je .i_sub_edi_eax
    cmp bx, 0x536
    je .i_sub_edi_ecx
    cmp bx, 0x537
    je .i_sub_edi_edx
    cmp bx, 0x538
    je .i_sub_edi_esi
    cmp bx, 0x539
    je .i_sub_edi_edi
    cmp bx, 0x53a
    je .i_sub_edi_esp
    cmp bx, 0x53b
    je .i_sub_edi_ebp
    cmp bx, 0x53c
    je .i_sub_esp_eax
    cmp bx, 0x53d
    je .i_sub_esp_ecx
    cmp bx, 0x53e
    je .i_sub_esp_edx
    cmp bx, 0x53f
    je .i_sub_esp_esi
    cmp bx, 0x540
    je .i_sub_esp_edi
    cmp bx, 0x541
    je .i_sub_esp_esp
    cmp bx, 0x542
    je .i_sub_esp_ebp
    cmp bx, 0x543
    je .i_sub_ebp_eax
    cmp bx, 0x544
    je .i_sub_ebp_ecx
    cmp bx, 0x545
    je .i_sub_ebp_edx
    cmp bx, 0x546
    je .i_sub_ebp_esi
    cmp bx, 0x547
    je .i_sub_ebp_edi
    cmp bx, 0x548
    je .i_sub_ebp_esp
    cmp bx, 0x549
    je .i_sub_ebp_ebp
    cmp bx, 0x54a
    je .i_sub_ax_ax
    cmp bx, 0x54b
    je .i_sub_ax_cx
    cmp bx, 0x54c
    je .i_sub_ax_dx
    cmp bx, 0x54d
    je .i_sub_ax_si
    cmp bx, 0x54e
    je .i_sub_ax_di
    cmp bx, 0x54f
    je .i_sub_ax_sp
    cmp bx, 0x550
    je .i_sub_ax_bp
    cmp bx, 0x551
    je .i_sub_cx_ax
    cmp bx, 0x552
    je .i_sub_cx_cx
    cmp bx, 0x553
    je .i_sub_cx_dx
    cmp bx, 0x554
    je .i_sub_cx_si
    cmp bx, 0x555
    je .i_sub_cx_di
    cmp bx, 0x556
    je .i_sub_cx_sp
    cmp bx, 0x557
    je .i_sub_cx_bp
    cmp bx, 0x558
    je .i_sub_dx_ax
    cmp bx, 0x559
    je .i_sub_dx_cx
    cmp bx, 0x55a
    je .i_sub_dx_dx
    cmp bx, 0x55b
    je .i_sub_dx_si
    cmp bx, 0x55c
    je .i_sub_dx_di
    cmp bx, 0x55d
    je .i_sub_dx_sp
    cmp bx, 0x55e
    je .i_sub_dx_bp
    cmp bx, 0x55f
    je .i_sub_si_ax
    cmp bx, 0x560
    je .i_sub_si_cx
    cmp bx, 0x561
    je .i_sub_si_dx
    cmp bx, 0x562
    je .i_sub_si_si
    cmp bx, 0x563
    je .i_sub_si_di
    cmp bx, 0x564
    je .i_sub_si_sp
    cmp bx, 0x565
    je .i_sub_si_bp
    cmp bx, 0x566
    je .i_sub_di_ax
    cmp bx, 0x567
    je .i_sub_di_cx
    cmp bx, 0x568
    je .i_sub_di_dx
    cmp bx, 0x569
    je .i_sub_di_si
    cmp bx, 0x56a
    je .i_sub_di_di
    cmp bx, 0x56b
    je .i_sub_di_sp
    cmp bx, 0x56c
    je .i_sub_di_bp
    cmp bx, 0x56d
    je .i_sub_sp_ax
    cmp bx, 0x56e
    je .i_sub_sp_cx
    cmp bx, 0x56f
    je .i_sub_sp_dx
    cmp bx, 0x570
    je .i_sub_sp_si
    cmp bx, 0x571
    je .i_sub_sp_di
    cmp bx, 0x572
    je .i_sub_sp_sp
    cmp bx, 0x573
    je .i_sub_sp_bp
    cmp bx, 0x574
    je .i_sub_bp_ax
    cmp bx, 0x575
    je .i_sub_bp_cx
    cmp bx, 0x576
    je .i_sub_bp_dx
    cmp bx, 0x577
    je .i_sub_bp_si
    cmp bx, 0x578
    je .i_sub_bp_di
    cmp bx, 0x579
    je .i_sub_bp_sp
    cmp bx, 0x57a
    je .i_sub_bp_bp
    cmp bx, 0x57b
    je .i_sub_al_al
    cmp bx, 0x57c
    je .i_sub_al_cl
    cmp bx, 0x57d
    je .i_sub_al_dl
    cmp bx, 0x57e
    je .i_sub_cl_al
    cmp bx, 0x57f
    je .i_sub_cl_cl
    cmp bx, 0x580
    je .i_sub_cl_dl
    cmp bx, 0x581
    je .i_sub_dl_al
    cmp bx, 0x582
    je .i_sub_dl_cl
    cmp bx, 0x583
    je .i_sub_dl_dl
    cmp bx, 0x584
    je .i_imul_rax_rax
    cmp bx, 0x585
    je .i_imul_rax_rcx
    cmp bx, 0x586
    je .i_imul_rax_rdx
    cmp bx, 0x587
    je .i_imul_rax_r8
    cmp bx, 0x588
    je .i_imul_rax_r9
    cmp bx, 0x589
    je .i_imul_rax_r10
    cmp bx, 0x58a
    je .i_imul_rax_r11
    cmp bx, 0x58b
    je .i_imul_rax_r12
    cmp bx, 0x58c
    je .i_imul_rax_r13
    cmp bx, 0x58d
    je .i_imul_rax_rsi
    cmp bx, 0x58e
    je .i_imul_rax_rdi
    cmp bx, 0x58f
    je .i_imul_rax_rsp
    cmp bx, 0x590
    je .i_imul_rax_rbp
    cmp bx, 0x591
    je .i_imul_rcx_rax
    cmp bx, 0x592
    je .i_imul_rcx_rcx
    cmp bx, 0x593
    je .i_imul_rcx_rdx
    cmp bx, 0x594
    je .i_imul_rcx_r8
    cmp bx, 0x595
    je .i_imul_rcx_r9
    cmp bx, 0x596
    je .i_imul_rcx_r10
    cmp bx, 0x597
    je .i_imul_rcx_r11
    cmp bx, 0x598
    je .i_imul_rcx_r12
    cmp bx, 0x599
    je .i_imul_rcx_r13
    cmp bx, 0x59a
    je .i_imul_rcx_rsi
    cmp bx, 0x59b
    je .i_imul_rcx_rdi
    cmp bx, 0x59c
    je .i_imul_rcx_rsp
    cmp bx, 0x59d
    je .i_imul_rcx_rbp
    cmp bx, 0x59e
    je .i_imul_rdx_rax
    cmp bx, 0x59f
    je .i_imul_rdx_rcx
    cmp bx, 0x5a0
    je .i_imul_rdx_rdx
    cmp bx, 0x5a1
    je .i_imul_rdx_r8
    cmp bx, 0x5a2
    je .i_imul_rdx_r9
    cmp bx, 0x5a3
    je .i_imul_rdx_r10
    cmp bx, 0x5a4
    je .i_imul_rdx_r11
    cmp bx, 0x5a5
    je .i_imul_rdx_r12
    cmp bx, 0x5a6
    je .i_imul_rdx_r13
    cmp bx, 0x5a7
    je .i_imul_rdx_rsi
    cmp bx, 0x5a8
    je .i_imul_rdx_rdi
    cmp bx, 0x5a9
    je .i_imul_rdx_rsp
    cmp bx, 0x5aa
    je .i_imul_rdx_rbp
    cmp bx, 0x5ab
    je .i_imul_r8_rax
    cmp bx, 0x5ac
    je .i_imul_r8_rcx
    cmp bx, 0x5ad
    je .i_imul_r8_rdx
    cmp bx, 0x5ae
    je .i_imul_r8_r8
    cmp bx, 0x5af
    je .i_imul_r8_r9
    cmp bx, 0x5b0
    je .i_imul_r8_r10
    cmp bx, 0x5b1
    je .i_imul_r8_r11
    cmp bx, 0x5b2
    je .i_imul_r8_r12
    cmp bx, 0x5b3
    je .i_imul_r8_r13
    cmp bx, 0x5b4
    je .i_imul_r8_rsi
    cmp bx, 0x5b5
    je .i_imul_r8_rdi
    cmp bx, 0x5b6
    je .i_imul_r8_rsp
    cmp bx, 0x5b7
    je .i_imul_r8_rbp
    cmp bx, 0x5b8
    je .i_imul_r9_rax
    cmp bx, 0x5b9
    je .i_imul_r9_rcx
    cmp bx, 0x5ba
    je .i_imul_r9_rdx
    cmp bx, 0x5bb
    je .i_imul_r9_r8
    cmp bx, 0x5bc
    je .i_imul_r9_r9
    cmp bx, 0x5bd
    je .i_imul_r9_r10
    cmp bx, 0x5be
    je .i_imul_r9_r11
    cmp bx, 0x5bf
    je .i_imul_r9_r12
    cmp bx, 0x5c0
    je .i_imul_r9_r13
    cmp bx, 0x5c1
    je .i_imul_r9_rsi
    cmp bx, 0x5c2
    je .i_imul_r9_rdi
    cmp bx, 0x5c3
    je .i_imul_r9_rsp
    cmp bx, 0x5c4
    je .i_imul_r9_rbp
    cmp bx, 0x5c5
    je .i_imul_r10_rax
    cmp bx, 0x5c6
    je .i_imul_r10_rcx
    cmp bx, 0x5c7
    je .i_imul_r10_rdx
    cmp bx, 0x5c8
    je .i_imul_r10_r8
    cmp bx, 0x5c9
    je .i_imul_r10_r9
    cmp bx, 0x5ca
    je .i_imul_r10_r10
    cmp bx, 0x5cb
    je .i_imul_r10_r11
    cmp bx, 0x5cc
    je .i_imul_r10_r12
    cmp bx, 0x5cd
    je .i_imul_r10_r13
    cmp bx, 0x5ce
    je .i_imul_r10_rsi
    cmp bx, 0x5cf
    je .i_imul_r10_rdi
    cmp bx, 0x5d0
    je .i_imul_r10_rsp
    cmp bx, 0x5d1
    je .i_imul_r10_rbp
    cmp bx, 0x5d2
    je .i_imul_r11_rax
    cmp bx, 0x5d3
    je .i_imul_r11_rcx
    cmp bx, 0x5d4
    je .i_imul_r11_rdx
    cmp bx, 0x5d5
    je .i_imul_r11_r8
    cmp bx, 0x5d6
    je .i_imul_r11_r9
    cmp bx, 0x5d7
    je .i_imul_r11_r10
    cmp bx, 0x5d8
    je .i_imul_r11_r11
    cmp bx, 0x5d9
    je .i_imul_r11_r12
    cmp bx, 0x5da
    je .i_imul_r11_r13
    cmp bx, 0x5db
    je .i_imul_r11_rsi
    cmp bx, 0x5dc
    je .i_imul_r11_rdi
    cmp bx, 0x5dd
    je .i_imul_r11_rsp
    cmp bx, 0x5de
    je .i_imul_r11_rbp
    cmp bx, 0x5df
    je .i_imul_r12_rax
    cmp bx, 0x5e0
    je .i_imul_r12_rcx
    cmp bx, 0x5e1
    je .i_imul_r12_rdx
    cmp bx, 0x5e2
    je .i_imul_r12_r8
    cmp bx, 0x5e3
    je .i_imul_r12_r9
    cmp bx, 0x5e4
    je .i_imul_r12_r10
    cmp bx, 0x5e5
    je .i_imul_r12_r11
    cmp bx, 0x5e6
    je .i_imul_r12_r12
    cmp bx, 0x5e7
    je .i_imul_r12_r13
    cmp bx, 0x5e8
    je .i_imul_r12_rsi
    cmp bx, 0x5e9
    je .i_imul_r12_rdi
    cmp bx, 0x5ea
    je .i_imul_r12_rsp
    cmp bx, 0x5eb
    je .i_imul_r12_rbp
    cmp bx, 0x5ec
    je .i_imul_r13_rax
    cmp bx, 0x5ed
    je .i_imul_r13_rcx
    cmp bx, 0x5ee
    je .i_imul_r13_rdx
    cmp bx, 0x5ef
    je .i_imul_r13_r8
    cmp bx, 0x5f0
    je .i_imul_r13_r9
    cmp bx, 0x5f1
    je .i_imul_r13_r10
    cmp bx, 0x5f2
    je .i_imul_r13_r11
    cmp bx, 0x5f3
    je .i_imul_r13_r12
    cmp bx, 0x5f4
    je .i_imul_r13_r13
    cmp bx, 0x5f5
    je .i_imul_r13_rsi
    cmp bx, 0x5f6
    je .i_imul_r13_rdi
    cmp bx, 0x5f7
    je .i_imul_r13_rsp
    cmp bx, 0x5f8
    je .i_imul_r13_rbp
    cmp bx, 0x5f9
    je .i_imul_rsi_rax
    cmp bx, 0x5fa
    je .i_imul_rsi_rcx
    cmp bx, 0x5fb
    je .i_imul_rsi_rdx
    cmp bx, 0x5fc
    je .i_imul_rsi_r8
    cmp bx, 0x5fd
    je .i_imul_rsi_r9
    cmp bx, 0x5fe
    je .i_imul_rsi_r10
    cmp bx, 0x5ff
    je .i_imul_rsi_r11
    cmp bx, 0x600
    je .i_imul_rsi_r12
    cmp bx, 0x601
    je .i_imul_rsi_r13
    cmp bx, 0x602
    je .i_imul_rsi_rsi
    cmp bx, 0x603
    je .i_imul_rsi_rdi
    cmp bx, 0x604
    je .i_imul_rsi_rsp
    cmp bx, 0x605
    je .i_imul_rsi_rbp
    cmp bx, 0x606
    je .i_imul_rdi_rax
    cmp bx, 0x607
    je .i_imul_rdi_rcx
    cmp bx, 0x608
    je .i_imul_rdi_rdx
    cmp bx, 0x609
    je .i_imul_rdi_r8
    cmp bx, 0x60a
    je .i_imul_rdi_r9
    cmp bx, 0x60b
    je .i_imul_rdi_r10
    cmp bx, 0x60c
    je .i_imul_rdi_r11
    cmp bx, 0x60d
    je .i_imul_rdi_r12
    cmp bx, 0x60e
    je .i_imul_rdi_r13
    cmp bx, 0x60f
    je .i_imul_rdi_rsi
    cmp bx, 0x610
    je .i_imul_rdi_rdi
    cmp bx, 0x611
    je .i_imul_rdi_rsp
    cmp bx, 0x612
    je .i_imul_rdi_rbp
    cmp bx, 0x613
    je .i_imul_rsp_rax
    cmp bx, 0x614
    je .i_imul_rsp_rcx
    cmp bx, 0x615
    je .i_imul_rsp_rdx
    cmp bx, 0x616
    je .i_imul_rsp_r8
    cmp bx, 0x617
    je .i_imul_rsp_r9
    cmp bx, 0x618
    je .i_imul_rsp_r10
    cmp bx, 0x619
    je .i_imul_rsp_r11
    cmp bx, 0x61a
    je .i_imul_rsp_r12
    cmp bx, 0x61b
    je .i_imul_rsp_r13
    cmp bx, 0x61c
    je .i_imul_rsp_rsi
    cmp bx, 0x61d
    je .i_imul_rsp_rdi
    cmp bx, 0x61e
    je .i_imul_rsp_rsp
    cmp bx, 0x61f
    je .i_imul_rsp_rbp
    cmp bx, 0x620
    je .i_imul_rbp_rax
    cmp bx, 0x621
    je .i_imul_rbp_rcx
    cmp bx, 0x622
    je .i_imul_rbp_rdx
    cmp bx, 0x623
    je .i_imul_rbp_r8
    cmp bx, 0x624
    je .i_imul_rbp_r9
    cmp bx, 0x625
    je .i_imul_rbp_r10
    cmp bx, 0x626
    je .i_imul_rbp_r11
    cmp bx, 0x627
    je .i_imul_rbp_r12
    cmp bx, 0x628
    je .i_imul_rbp_r13
    cmp bx, 0x629
    je .i_imul_rbp_rsi
    cmp bx, 0x62a
    je .i_imul_rbp_rdi
    cmp bx, 0x62b
    je .i_imul_rbp_rsp
    cmp bx, 0x62c
    je .i_imul_rbp_rbp
    cmp bx, 0x62d
    je .i_imul_eax_eax
    cmp bx, 0x62e
    je .i_imul_eax_ecx
    cmp bx, 0x62f
    je .i_imul_eax_edx
    cmp bx, 0x630
    je .i_imul_eax_esi
    cmp bx, 0x631
    je .i_imul_eax_edi
    cmp bx, 0x632
    je .i_imul_eax_esp
    cmp bx, 0x633
    je .i_imul_eax_ebp
    cmp bx, 0x634
    je .i_imul_ecx_eax
    cmp bx, 0x635
    je .i_imul_ecx_ecx
    cmp bx, 0x636
    je .i_imul_ecx_edx
    cmp bx, 0x637
    je .i_imul_ecx_esi
    cmp bx, 0x638
    je .i_imul_ecx_edi
    cmp bx, 0x639
    je .i_imul_ecx_esp
    cmp bx, 0x63a
    je .i_imul_ecx_ebp
    cmp bx, 0x63b
    je .i_imul_edx_eax
    cmp bx, 0x63c
    je .i_imul_edx_ecx
    cmp bx, 0x63d
    je .i_imul_edx_edx
    cmp bx, 0x63e
    je .i_imul_edx_esi
    cmp bx, 0x63f
    je .i_imul_edx_edi
    cmp bx, 0x640
    je .i_imul_edx_esp
    cmp bx, 0x641
    je .i_imul_edx_ebp
    cmp bx, 0x642
    je .i_imul_esi_eax
    cmp bx, 0x643
    je .i_imul_esi_ecx
    cmp bx, 0x644
    je .i_imul_esi_edx
    cmp bx, 0x645
    je .i_imul_esi_esi
    cmp bx, 0x646
    je .i_imul_esi_edi
    cmp bx, 0x647
    je .i_imul_esi_esp
    cmp bx, 0x648
    je .i_imul_esi_ebp
    cmp bx, 0x649
    je .i_imul_edi_eax
    cmp bx, 0x64a
    je .i_imul_edi_ecx
    cmp bx, 0x64b
    je .i_imul_edi_edx
    cmp bx, 0x64c
    je .i_imul_edi_esi
    cmp bx, 0x64d
    je .i_imul_edi_edi
    cmp bx, 0x64e
    je .i_imul_edi_esp
    cmp bx, 0x64f
    je .i_imul_edi_ebp
    cmp bx, 0x650
    je .i_imul_esp_eax
    cmp bx, 0x651
    je .i_imul_esp_ecx
    cmp bx, 0x652
    je .i_imul_esp_edx
    cmp bx, 0x653
    je .i_imul_esp_esi
    cmp bx, 0x654
    je .i_imul_esp_edi
    cmp bx, 0x655
    je .i_imul_esp_esp
    cmp bx, 0x656
    je .i_imul_esp_ebp
    cmp bx, 0x657
    je .i_imul_ebp_eax
    cmp bx, 0x658
    je .i_imul_ebp_ecx
    cmp bx, 0x659
    je .i_imul_ebp_edx
    cmp bx, 0x65a
    je .i_imul_ebp_esi
    cmp bx, 0x65b
    je .i_imul_ebp_edi
    cmp bx, 0x65c
    je .i_imul_ebp_esp
    cmp bx, 0x65d
    je .i_imul_ebp_ebp
    cmp bx, 0x65e
    je .i_imul_ax_ax
    cmp bx, 0x65f
    je .i_imul_ax_cx
    cmp bx, 0x660
    je .i_imul_ax_dx
    cmp bx, 0x661
    je .i_imul_ax_si
    cmp bx, 0x662
    je .i_imul_ax_di
    cmp bx, 0x663
    je .i_imul_ax_sp
    cmp bx, 0x664
    je .i_imul_ax_bp
    cmp bx, 0x665
    je .i_imul_cx_ax
    cmp bx, 0x666
    je .i_imul_cx_cx
    cmp bx, 0x667
    je .i_imul_cx_dx
    cmp bx, 0x668
    je .i_imul_cx_si
    cmp bx, 0x669
    je .i_imul_cx_di
    cmp bx, 0x66a
    je .i_imul_cx_sp
    cmp bx, 0x66b
    je .i_imul_cx_bp
    cmp bx, 0x66c
    je .i_imul_dx_ax
    cmp bx, 0x66d
    je .i_imul_dx_cx
    cmp bx, 0x66e
    je .i_imul_dx_dx
    cmp bx, 0x66f
    je .i_imul_dx_si
    cmp bx, 0x670
    je .i_imul_dx_di
    cmp bx, 0x671
    je .i_imul_dx_sp
    cmp bx, 0x672
    je .i_imul_dx_bp
    cmp bx, 0x673
    je .i_imul_si_ax
    cmp bx, 0x674
    je .i_imul_si_cx
    cmp bx, 0x675
    je .i_imul_si_dx
    cmp bx, 0x676
    je .i_imul_si_si
    cmp bx, 0x677
    je .i_imul_si_di
    cmp bx, 0x678
    je .i_imul_si_sp
    cmp bx, 0x679
    je .i_imul_si_bp
    cmp bx, 0x67a
    je .i_imul_di_ax
    cmp bx, 0x67b
    je .i_imul_di_cx
    cmp bx, 0x67c
    je .i_imul_di_dx
    cmp bx, 0x67d
    je .i_imul_di_si
    cmp bx, 0x67e
    je .i_imul_di_di
    cmp bx, 0x67f
    je .i_imul_di_sp
    cmp bx, 0x680
    je .i_imul_di_bp
    cmp bx, 0x681
    je .i_imul_sp_ax
    cmp bx, 0x682
    je .i_imul_sp_cx
    cmp bx, 0x683
    je .i_imul_sp_dx
    cmp bx, 0x684
    je .i_imul_sp_si
    cmp bx, 0x685
    je .i_imul_sp_di
    cmp bx, 0x686
    je .i_imul_sp_sp
    cmp bx, 0x687
    je .i_imul_sp_bp
    cmp bx, 0x688
    je .i_imul_bp_ax
    cmp bx, 0x689
    je .i_imul_bp_cx
    cmp bx, 0x68a
    je .i_imul_bp_dx
    cmp bx, 0x68b
    je .i_imul_bp_si
    cmp bx, 0x68c
    je .i_imul_bp_di
    cmp bx, 0x68d
    je .i_imul_bp_sp
    cmp bx, 0x68e
    je .i_imul_bp_bp
    cmp bx, 0x68f
    je .i_and_rax_rax
    cmp bx, 0x690
    je .i_and_rax_rcx
    cmp bx, 0x691
    je .i_and_rax_rdx
    cmp bx, 0x692
    je .i_and_rax_r8
    cmp bx, 0x693
    je .i_and_rax_r9
    cmp bx, 0x694
    je .i_and_rax_r10
    cmp bx, 0x695
    je .i_and_rax_r11
    cmp bx, 0x696
    je .i_and_rax_r12
    cmp bx, 0x697
    je .i_and_rax_r13
    cmp bx, 0x698
    je .i_and_rax_rsi
    cmp bx, 0x699
    je .i_and_rax_rdi
    cmp bx, 0x69a
    je .i_and_rax_rsp
    cmp bx, 0x69b
    je .i_and_rax_rbp
    cmp bx, 0x69c
    je .i_and_rcx_rax
    cmp bx, 0x69d
    je .i_and_rcx_rcx
    cmp bx, 0x69e
    je .i_and_rcx_rdx
    cmp bx, 0x69f
    je .i_and_rcx_r8
    cmp bx, 0x6a0
    je .i_and_rcx_r9
    cmp bx, 0x6a1
    je .i_and_rcx_r10
    cmp bx, 0x6a2
    je .i_and_rcx_r11
    cmp bx, 0x6a3
    je .i_and_rcx_r12
    cmp bx, 0x6a4
    je .i_and_rcx_r13
    cmp bx, 0x6a5
    je .i_and_rcx_rsi
    cmp bx, 0x6a6
    je .i_and_rcx_rdi
    cmp bx, 0x6a7
    je .i_and_rcx_rsp
    cmp bx, 0x6a8
    je .i_and_rcx_rbp
    cmp bx, 0x6a9
    je .i_and_rdx_rax
    cmp bx, 0x6aa
    je .i_and_rdx_rcx
    cmp bx, 0x6ab
    je .i_and_rdx_rdx
    cmp bx, 0x6ac
    je .i_and_rdx_r8
    cmp bx, 0x6ad
    je .i_and_rdx_r9
    cmp bx, 0x6ae
    je .i_and_rdx_r10
    cmp bx, 0x6af
    je .i_and_rdx_r11
    cmp bx, 0x6b0
    je .i_and_rdx_r12
    cmp bx, 0x6b1
    je .i_and_rdx_r13
    cmp bx, 0x6b2
    je .i_and_rdx_rsi
    cmp bx, 0x6b3
    je .i_and_rdx_rdi
    cmp bx, 0x6b4
    je .i_and_rdx_rsp
    cmp bx, 0x6b5
    je .i_and_rdx_rbp
    cmp bx, 0x6b6
    je .i_and_r8_rax
    cmp bx, 0x6b7
    je .i_and_r8_rcx
    cmp bx, 0x6b8
    je .i_and_r8_rdx
    cmp bx, 0x6b9
    je .i_and_r8_r8
    cmp bx, 0x6ba
    je .i_and_r8_r9
    cmp bx, 0x6bb
    je .i_and_r8_r10
    cmp bx, 0x6bc
    je .i_and_r8_r11
    cmp bx, 0x6bd
    je .i_and_r8_r12
    cmp bx, 0x6be
    je .i_and_r8_r13
    cmp bx, 0x6bf
    je .i_and_r8_rsi
    cmp bx, 0x6c0
    je .i_and_r8_rdi
    cmp bx, 0x6c1
    je .i_and_r8_rsp
    cmp bx, 0x6c2
    je .i_and_r8_rbp
    cmp bx, 0x6c3
    je .i_and_r9_rax
    cmp bx, 0x6c4
    je .i_and_r9_rcx
    cmp bx, 0x6c5
    je .i_and_r9_rdx
    cmp bx, 0x6c6
    je .i_and_r9_r8
    cmp bx, 0x6c7
    je .i_and_r9_r9
    cmp bx, 0x6c8
    je .i_and_r9_r10
    cmp bx, 0x6c9
    je .i_and_r9_r11
    cmp bx, 0x6ca
    je .i_and_r9_r12
    cmp bx, 0x6cb
    je .i_and_r9_r13
    cmp bx, 0x6cc
    je .i_and_r9_rsi
    cmp bx, 0x6cd
    je .i_and_r9_rdi
    cmp bx, 0x6ce
    je .i_and_r9_rsp
    cmp bx, 0x6cf
    je .i_and_r9_rbp
    cmp bx, 0x6d0
    je .i_and_r10_rax
    cmp bx, 0x6d1
    je .i_and_r10_rcx
    cmp bx, 0x6d2
    je .i_and_r10_rdx
    cmp bx, 0x6d3
    je .i_and_r10_r8
    cmp bx, 0x6d4
    je .i_and_r10_r9
    cmp bx, 0x6d5
    je .i_and_r10_r10
    cmp bx, 0x6d6
    je .i_and_r10_r11
    cmp bx, 0x6d7
    je .i_and_r10_r12
    cmp bx, 0x6d8
    je .i_and_r10_r13
    cmp bx, 0x6d9
    je .i_and_r10_rsi
    cmp bx, 0x6da
    je .i_and_r10_rdi
    cmp bx, 0x6db
    je .i_and_r10_rsp
    cmp bx, 0x6dc
    je .i_and_r10_rbp
    cmp bx, 0x6dd
    je .i_and_r11_rax
    cmp bx, 0x6de
    je .i_and_r11_rcx
    cmp bx, 0x6df
    je .i_and_r11_rdx
    cmp bx, 0x6e0
    je .i_and_r11_r8
    cmp bx, 0x6e1
    je .i_and_r11_r9
    cmp bx, 0x6e2
    je .i_and_r11_r10
    cmp bx, 0x6e3
    je .i_and_r11_r11
    cmp bx, 0x6e4
    je .i_and_r11_r12
    cmp bx, 0x6e5
    je .i_and_r11_r13
    cmp bx, 0x6e6
    je .i_and_r11_rsi
    cmp bx, 0x6e7
    je .i_and_r11_rdi
    cmp bx, 0x6e8
    je .i_and_r11_rsp
    cmp bx, 0x6e9
    je .i_and_r11_rbp
    cmp bx, 0x6ea
    je .i_and_r12_rax
    cmp bx, 0x6eb
    je .i_and_r12_rcx
    cmp bx, 0x6ec
    je .i_and_r12_rdx
    cmp bx, 0x6ed
    je .i_and_r12_r8
    cmp bx, 0x6ee
    je .i_and_r12_r9
    cmp bx, 0x6ef
    je .i_and_r12_r10
    cmp bx, 0x6f0
    je .i_and_r12_r11
    cmp bx, 0x6f1
    je .i_and_r12_r12
    cmp bx, 0x6f2
    je .i_and_r12_r13
    cmp bx, 0x6f3
    je .i_and_r12_rsi
    cmp bx, 0x6f4
    je .i_and_r12_rdi
    cmp bx, 0x6f5
    je .i_and_r12_rsp
    cmp bx, 0x6f6
    je .i_and_r12_rbp
    cmp bx, 0x6f7
    je .i_and_r13_rax
    cmp bx, 0x6f8
    je .i_and_r13_rcx
    cmp bx, 0x6f9
    je .i_and_r13_rdx
    cmp bx, 0x6fa
    je .i_and_r13_r8
    cmp bx, 0x6fb
    je .i_and_r13_r9
    cmp bx, 0x6fc
    je .i_and_r13_r10
    cmp bx, 0x6fd
    je .i_and_r13_r11
    cmp bx, 0x6fe
    je .i_and_r13_r12
    cmp bx, 0x6ff
    je .i_and_r13_r13
    cmp bx, 0x700
    je .i_and_r13_rsi
    cmp bx, 0x701
    je .i_and_r13_rdi
    cmp bx, 0x702
    je .i_and_r13_rsp
    cmp bx, 0x703
    je .i_and_r13_rbp
    cmp bx, 0x704
    je .i_and_rsi_rax
    cmp bx, 0x705
    je .i_and_rsi_rcx
    cmp bx, 0x706
    je .i_and_rsi_rdx
    cmp bx, 0x707
    je .i_and_rsi_r8
    cmp bx, 0x708
    je .i_and_rsi_r9
    cmp bx, 0x709
    je .i_and_rsi_r10
    cmp bx, 0x70a
    je .i_and_rsi_r11
    cmp bx, 0x70b
    je .i_and_rsi_r12
    cmp bx, 0x70c
    je .i_and_rsi_r13
    cmp bx, 0x70d
    je .i_and_rsi_rsi
    cmp bx, 0x70e
    je .i_and_rsi_rdi
    cmp bx, 0x70f
    je .i_and_rsi_rsp
    cmp bx, 0x710
    je .i_and_rsi_rbp
    cmp bx, 0x711
    je .i_and_rdi_rax
    cmp bx, 0x712
    je .i_and_rdi_rcx
    cmp bx, 0x713
    je .i_and_rdi_rdx
    cmp bx, 0x714
    je .i_and_rdi_r8
    cmp bx, 0x715
    je .i_and_rdi_r9
    cmp bx, 0x716
    je .i_and_rdi_r10
    cmp bx, 0x717
    je .i_and_rdi_r11
    cmp bx, 0x718
    je .i_and_rdi_r12
    cmp bx, 0x719
    je .i_and_rdi_r13
    cmp bx, 0x71a
    je .i_and_rdi_rsi
    cmp bx, 0x71b
    je .i_and_rdi_rdi
    cmp bx, 0x71c
    je .i_and_rdi_rsp
    cmp bx, 0x71d
    je .i_and_rdi_rbp
    cmp bx, 0x71e
    je .i_and_rsp_rax
    cmp bx, 0x71f
    je .i_and_rsp_rcx
    cmp bx, 0x720
    je .i_and_rsp_rdx
    cmp bx, 0x721
    je .i_and_rsp_r8
    cmp bx, 0x722
    je .i_and_rsp_r9
    cmp bx, 0x723
    je .i_and_rsp_r10
    cmp bx, 0x724
    je .i_and_rsp_r11
    cmp bx, 0x725
    je .i_and_rsp_r12
    cmp bx, 0x726
    je .i_and_rsp_r13
    cmp bx, 0x727
    je .i_and_rsp_rsi
    cmp bx, 0x728
    je .i_and_rsp_rdi
    cmp bx, 0x729
    je .i_and_rsp_rsp
    cmp bx, 0x72a
    je .i_and_rsp_rbp
    cmp bx, 0x72b
    je .i_and_rbp_rax
    cmp bx, 0x72c
    je .i_and_rbp_rcx
    cmp bx, 0x72d
    je .i_and_rbp_rdx
    cmp bx, 0x72e
    je .i_and_rbp_r8
    cmp bx, 0x72f
    je .i_and_rbp_r9
    cmp bx, 0x730
    je .i_and_rbp_r10
    cmp bx, 0x731
    je .i_and_rbp_r11
    cmp bx, 0x732
    je .i_and_rbp_r12
    cmp bx, 0x733
    je .i_and_rbp_r13
    cmp bx, 0x734
    je .i_and_rbp_rsi
    cmp bx, 0x735
    je .i_and_rbp_rdi
    cmp bx, 0x736
    je .i_and_rbp_rsp
    cmp bx, 0x737
    je .i_and_rbp_rbp
    cmp bx, 0x738
    je .i_and_eax_eax
    cmp bx, 0x739
    je .i_and_eax_ecx
    cmp bx, 0x73a
    je .i_and_eax_edx
    cmp bx, 0x73b
    je .i_and_eax_esi
    cmp bx, 0x73c
    je .i_and_eax_edi
    cmp bx, 0x73d
    je .i_and_eax_esp
    cmp bx, 0x73e
    je .i_and_eax_ebp
    cmp bx, 0x73f
    je .i_and_ecx_eax
    cmp bx, 0x740
    je .i_and_ecx_ecx
    cmp bx, 0x741
    je .i_and_ecx_edx
    cmp bx, 0x742
    je .i_and_ecx_esi
    cmp bx, 0x743
    je .i_and_ecx_edi
    cmp bx, 0x744
    je .i_and_ecx_esp
    cmp bx, 0x745
    je .i_and_ecx_ebp
    cmp bx, 0x746
    je .i_and_edx_eax
    cmp bx, 0x747
    je .i_and_edx_ecx
    cmp bx, 0x748
    je .i_and_edx_edx
    cmp bx, 0x749
    je .i_and_edx_esi
    cmp bx, 0x74a
    je .i_and_edx_edi
    cmp bx, 0x74b
    je .i_and_edx_esp
    cmp bx, 0x74c
    je .i_and_edx_ebp
    cmp bx, 0x74d
    je .i_and_esi_eax
    cmp bx, 0x74e
    je .i_and_esi_ecx
    cmp bx, 0x74f
    je .i_and_esi_edx
    cmp bx, 0x750
    je .i_and_esi_esi
    cmp bx, 0x751
    je .i_and_esi_edi
    cmp bx, 0x752
    je .i_and_esi_esp
    cmp bx, 0x753
    je .i_and_esi_ebp
    cmp bx, 0x754
    je .i_and_edi_eax
    cmp bx, 0x755
    je .i_and_edi_ecx
    cmp bx, 0x756
    je .i_and_edi_edx
    cmp bx, 0x757
    je .i_and_edi_esi
    cmp bx, 0x758
    je .i_and_edi_edi
    cmp bx, 0x759
    je .i_and_edi_esp
    cmp bx, 0x75a
    je .i_and_edi_ebp
    cmp bx, 0x75b
    je .i_and_esp_eax
    cmp bx, 0x75c
    je .i_and_esp_ecx
    cmp bx, 0x75d
    je .i_and_esp_edx
    cmp bx, 0x75e
    je .i_and_esp_esi
    cmp bx, 0x75f
    je .i_and_esp_edi
    cmp bx, 0x760
    je .i_and_esp_esp
    cmp bx, 0x761
    je .i_and_esp_ebp
    cmp bx, 0x762
    je .i_and_ebp_eax
    cmp bx, 0x763
    je .i_and_ebp_ecx
    cmp bx, 0x764
    je .i_and_ebp_edx
    cmp bx, 0x765
    je .i_and_ebp_esi
    cmp bx, 0x766
    je .i_and_ebp_edi
    cmp bx, 0x767
    je .i_and_ebp_esp
    cmp bx, 0x768
    je .i_and_ebp_ebp
    cmp bx, 0x769
    je .i_and_ax_ax
    cmp bx, 0x76a
    je .i_and_ax_cx
    cmp bx, 0x76b
    je .i_and_ax_dx
    cmp bx, 0x76c
    je .i_and_ax_si
    cmp bx, 0x76d
    je .i_and_ax_di
    cmp bx, 0x76e
    je .i_and_ax_sp
    cmp bx, 0x76f
    je .i_and_ax_bp
    cmp bx, 0x770
    je .i_and_cx_ax
    cmp bx, 0x771
    je .i_and_cx_cx
    cmp bx, 0x772
    je .i_and_cx_dx
    cmp bx, 0x773
    je .i_and_cx_si
    cmp bx, 0x774
    je .i_and_cx_di
    cmp bx, 0x775
    je .i_and_cx_sp
    cmp bx, 0x776
    je .i_and_cx_bp
    cmp bx, 0x777
    je .i_and_dx_ax
    cmp bx, 0x778
    je .i_and_dx_cx
    cmp bx, 0x779
    je .i_and_dx_dx
    cmp bx, 0x77a
    je .i_and_dx_si
    cmp bx, 0x77b
    je .i_and_dx_di
    cmp bx, 0x77c
    je .i_and_dx_sp
    cmp bx, 0x77d
    je .i_and_dx_bp
    cmp bx, 0x77e
    je .i_and_si_ax
    cmp bx, 0x77f
    je .i_and_si_cx
    cmp bx, 0x780
    je .i_and_si_dx
    cmp bx, 0x781
    je .i_and_si_si
    cmp bx, 0x782
    je .i_and_si_di
    cmp bx, 0x783
    je .i_and_si_sp
    cmp bx, 0x784
    je .i_and_si_bp
    cmp bx, 0x785
    je .i_and_di_ax
    cmp bx, 0x786
    je .i_and_di_cx
    cmp bx, 0x787
    je .i_and_di_dx
    cmp bx, 0x788
    je .i_and_di_si
    cmp bx, 0x789
    je .i_and_di_di
    cmp bx, 0x78a
    je .i_and_di_sp
    cmp bx, 0x78b
    je .i_and_di_bp
    cmp bx, 0x78c
    je .i_and_sp_ax
    cmp bx, 0x78d
    je .i_and_sp_cx
    cmp bx, 0x78e
    je .i_and_sp_dx
    cmp bx, 0x78f
    je .i_and_sp_si
    cmp bx, 0x790
    je .i_and_sp_di
    cmp bx, 0x791
    je .i_and_sp_sp
    cmp bx, 0x792
    je .i_and_sp_bp
    cmp bx, 0x793
    je .i_and_bp_ax
    cmp bx, 0x794
    je .i_and_bp_cx
    cmp bx, 0x795
    je .i_and_bp_dx
    cmp bx, 0x796
    je .i_and_bp_si
    cmp bx, 0x797
    je .i_and_bp_di
    cmp bx, 0x798
    je .i_and_bp_sp
    cmp bx, 0x799
    je .i_and_bp_bp
    cmp bx, 0x79a
    je .i_and_al_al
    cmp bx, 0x79b
    je .i_and_al_cl
    cmp bx, 0x79c
    je .i_and_al_dl
    cmp bx, 0x79d
    je .i_and_cl_al
    cmp bx, 0x79e
    je .i_and_cl_cl
    cmp bx, 0x79f
    je .i_and_cl_dl
    cmp bx, 0x7a0
    je .i_and_dl_al
    cmp bx, 0x7a1
    je .i_and_dl_cl
    cmp bx, 0x7a2
    je .i_and_dl_dl
    cmp bx, 0x7a3
    je .i_add_xmm0_xmm0
    cmp bx, 0x7a4
    je .i_add_xmm0_xmm1
    cmp bx, 0x7a5
    je .i_add_xmm0_xmm2
    cmp bx, 0x7a6
    je .i_add_xmm0_xmm3
    cmp bx, 0x7a7
    je .i_add_xmm0_xmm4
    cmp bx, 0x7a8
    je .i_add_xmm0_xmm5
    cmp bx, 0x7a9
    je .i_add_xmm0_xmm6
    cmp bx, 0x7aa
    je .i_add_xmm0_xmm7
    cmp bx, 0x7ab
    je .i_add_xmm0_xmm8
    cmp bx, 0x7ac
    je .i_add_xmm0_xmm9
    cmp bx, 0x7ad
    je .i_add_xmm0_xmm10
    cmp bx, 0x7ae
    je .i_add_xmm0_xmm11
    cmp bx, 0x7af
    je .i_add_xmm0_xmm12
    cmp bx, 0x7b0
    je .i_add_xmm0_xmm13
    cmp bx, 0x7b1
    je .i_add_xmm0_xmm14
    cmp bx, 0x7b2
    je .i_add_xmm0_xmm15
    cmp bx, 0x7b3
    je .i_add_xmm1_xmm0
    cmp bx, 0x7b4
    je .i_add_xmm1_xmm1
    cmp bx, 0x7b5
    je .i_add_xmm1_xmm2
    cmp bx, 0x7b6
    je .i_add_xmm1_xmm3
    cmp bx, 0x7b7
    je .i_add_xmm1_xmm4
    cmp bx, 0x7b8
    je .i_add_xmm1_xmm5
    cmp bx, 0x7b9
    je .i_add_xmm1_xmm6
    cmp bx, 0x7ba
    je .i_add_xmm1_xmm7
    cmp bx, 0x7bb
    je .i_add_xmm1_xmm8
    cmp bx, 0x7bc
    je .i_add_xmm1_xmm9
    cmp bx, 0x7bd
    je .i_add_xmm1_xmm10
    cmp bx, 0x7be
    je .i_add_xmm1_xmm11
    cmp bx, 0x7bf
    je .i_add_xmm1_xmm12
    cmp bx, 0x7c0
    je .i_add_xmm1_xmm13
    cmp bx, 0x7c1
    je .i_add_xmm1_xmm14
    cmp bx, 0x7c2
    je .i_add_xmm1_xmm15
    cmp bx, 0x7c3
    je .i_add_xmm2_xmm0
    cmp bx, 0x7c4
    je .i_add_xmm2_xmm1
    cmp bx, 0x7c5
    je .i_add_xmm2_xmm2
    cmp bx, 0x7c6
    je .i_add_xmm2_xmm3
    cmp bx, 0x7c7
    je .i_add_xmm2_xmm4
    cmp bx, 0x7c8
    je .i_add_xmm2_xmm5
    cmp bx, 0x7c9
    je .i_add_xmm2_xmm6
    cmp bx, 0x7ca
    je .i_add_xmm2_xmm7
    cmp bx, 0x7cb
    je .i_add_xmm2_xmm8
    cmp bx, 0x7cc
    je .i_add_xmm2_xmm9
    cmp bx, 0x7cd
    je .i_add_xmm2_xmm10
    cmp bx, 0x7ce
    je .i_add_xmm2_xmm11
    cmp bx, 0x7cf
    je .i_add_xmm2_xmm12
    cmp bx, 0x7d0
    je .i_add_xmm2_xmm13
    cmp bx, 0x7d1
    je .i_add_xmm2_xmm14
    cmp bx, 0x7d2
    je .i_add_xmm2_xmm15
    cmp bx, 0x7d3
    je .i_add_xmm3_xmm0
    cmp bx, 0x7d4
    je .i_add_xmm3_xmm1
    cmp bx, 0x7d5
    je .i_add_xmm3_xmm2
    cmp bx, 0x7d6
    je .i_add_xmm3_xmm3
    cmp bx, 0x7d7
    je .i_add_xmm3_xmm4
    cmp bx, 0x7d8
    je .i_add_xmm3_xmm5
    cmp bx, 0x7d9
    je .i_add_xmm3_xmm6
    cmp bx, 0x7da
    je .i_add_xmm3_xmm7
    cmp bx, 0x7db
    je .i_add_xmm3_xmm8
    cmp bx, 0x7dc
    je .i_add_xmm3_xmm9
    cmp bx, 0x7dd
    je .i_add_xmm3_xmm10
    cmp bx, 0x7de
    je .i_add_xmm3_xmm11
    cmp bx, 0x7df
    je .i_add_xmm3_xmm12
    cmp bx, 0x7e0
    je .i_add_xmm3_xmm13
    cmp bx, 0x7e1
    je .i_add_xmm3_xmm14
    cmp bx, 0x7e2
    je .i_add_xmm3_xmm15
    cmp bx, 0x7e3
    je .i_add_xmm4_xmm0
    cmp bx, 0x7e4
    je .i_add_xmm4_xmm1
    cmp bx, 0x7e5
    je .i_add_xmm4_xmm2
    cmp bx, 0x7e6
    je .i_add_xmm4_xmm3
    cmp bx, 0x7e7
    je .i_add_xmm4_xmm4
    cmp bx, 0x7e8
    je .i_add_xmm4_xmm5
    cmp bx, 0x7e9
    je .i_add_xmm4_xmm6
    cmp bx, 0x7ea
    je .i_add_xmm4_xmm7
    cmp bx, 0x7eb
    je .i_add_xmm4_xmm8
    cmp bx, 0x7ec
    je .i_add_xmm4_xmm9
    cmp bx, 0x7ed
    je .i_add_xmm4_xmm10
    cmp bx, 0x7ee
    je .i_add_xmm4_xmm11
    cmp bx, 0x7ef
    je .i_add_xmm4_xmm12
    cmp bx, 0x7f0
    je .i_add_xmm4_xmm13
    cmp bx, 0x7f1
    je .i_add_xmm4_xmm14
    cmp bx, 0x7f2
    je .i_add_xmm4_xmm15
    cmp bx, 0x7f3
    je .i_add_xmm5_xmm0
    cmp bx, 0x7f4
    je .i_add_xmm5_xmm1
    cmp bx, 0x7f5
    je .i_add_xmm5_xmm2
    cmp bx, 0x7f6
    je .i_add_xmm5_xmm3
    cmp bx, 0x7f7
    je .i_add_xmm5_xmm4
    cmp bx, 0x7f8
    je .i_add_xmm5_xmm5
    cmp bx, 0x7f9
    je .i_add_xmm5_xmm6
    cmp bx, 0x7fa
    je .i_add_xmm5_xmm7
    cmp bx, 0x7fb
    je .i_add_xmm5_xmm8
    cmp bx, 0x7fc
    je .i_add_xmm5_xmm9
    cmp bx, 0x7fd
    je .i_add_xmm5_xmm10
    cmp bx, 0x7fe
    je .i_add_xmm5_xmm11
    cmp bx, 0x7ff
    je .i_add_xmm5_xmm12
    cmp bx, 0x800
    je .i_add_xmm5_xmm13
    cmp bx, 0x801
    je .i_add_xmm5_xmm14
    cmp bx, 0x802
    je .i_add_xmm5_xmm15
    cmp bx, 0x803
    je .i_add_xmm6_xmm0
    cmp bx, 0x804
    je .i_add_xmm6_xmm1
    cmp bx, 0x805
    je .i_add_xmm6_xmm2
    cmp bx, 0x806
    je .i_add_xmm6_xmm3
    cmp bx, 0x807
    je .i_add_xmm6_xmm4
    cmp bx, 0x808
    je .i_add_xmm6_xmm5
    cmp bx, 0x809
    je .i_add_xmm6_xmm6
    cmp bx, 0x80a
    je .i_add_xmm6_xmm7
    cmp bx, 0x80b
    je .i_add_xmm6_xmm8
    cmp bx, 0x80c
    je .i_add_xmm6_xmm9
    cmp bx, 0x80d
    je .i_add_xmm6_xmm10
    cmp bx, 0x80e
    je .i_add_xmm6_xmm11
    cmp bx, 0x80f
    je .i_add_xmm6_xmm12
    cmp bx, 0x810
    je .i_add_xmm6_xmm13
    cmp bx, 0x811
    je .i_add_xmm6_xmm14
    cmp bx, 0x812
    je .i_add_xmm6_xmm15
    cmp bx, 0x813
    je .i_add_xmm7_xmm0
    cmp bx, 0x814
    je .i_add_xmm7_xmm1
    cmp bx, 0x815
    je .i_add_xmm7_xmm2
    cmp bx, 0x816
    je .i_add_xmm7_xmm3
    cmp bx, 0x817
    je .i_add_xmm7_xmm4
    cmp bx, 0x818
    je .i_add_xmm7_xmm5
    cmp bx, 0x819
    je .i_add_xmm7_xmm6
    cmp bx, 0x81a
    je .i_add_xmm7_xmm7
    cmp bx, 0x81b
    je .i_add_xmm7_xmm8
    cmp bx, 0x81c
    je .i_add_xmm7_xmm9
    cmp bx, 0x81d
    je .i_add_xmm7_xmm10
    cmp bx, 0x81e
    je .i_add_xmm7_xmm11
    cmp bx, 0x81f
    je .i_add_xmm7_xmm12
    cmp bx, 0x820
    je .i_add_xmm7_xmm13
    cmp bx, 0x821
    je .i_add_xmm7_xmm14
    cmp bx, 0x822
    je .i_add_xmm7_xmm15
    cmp bx, 0x823
    je .i_add_xmm8_xmm0
    cmp bx, 0x824
    je .i_add_xmm8_xmm1
    cmp bx, 0x825
    je .i_add_xmm8_xmm2
    cmp bx, 0x826
    je .i_add_xmm8_xmm3
    cmp bx, 0x827
    je .i_add_xmm8_xmm4
    cmp bx, 0x828
    je .i_add_xmm8_xmm5
    cmp bx, 0x829
    je .i_add_xmm8_xmm6
    cmp bx, 0x82a
    je .i_add_xmm8_xmm7
    cmp bx, 0x82b
    je .i_add_xmm8_xmm8
    cmp bx, 0x82c
    je .i_add_xmm8_xmm9
    cmp bx, 0x82d
    je .i_add_xmm8_xmm10
    cmp bx, 0x82e
    je .i_add_xmm8_xmm11
    cmp bx, 0x82f
    je .i_add_xmm8_xmm12
    cmp bx, 0x830
    je .i_add_xmm8_xmm13
    cmp bx, 0x831
    je .i_add_xmm8_xmm14
    cmp bx, 0x832
    je .i_add_xmm8_xmm15
    cmp bx, 0x833
    je .i_add_xmm9_xmm0
    cmp bx, 0x834
    je .i_add_xmm9_xmm1
    cmp bx, 0x835
    je .i_add_xmm9_xmm2
    cmp bx, 0x836
    je .i_add_xmm9_xmm3
    cmp bx, 0x837
    je .i_add_xmm9_xmm4
    cmp bx, 0x838
    je .i_add_xmm9_xmm5
    cmp bx, 0x839
    je .i_add_xmm9_xmm6
    cmp bx, 0x83a
    je .i_add_xmm9_xmm7
    cmp bx, 0x83b
    je .i_add_xmm9_xmm8
    cmp bx, 0x83c
    je .i_add_xmm9_xmm9
    cmp bx, 0x83d
    je .i_add_xmm9_xmm10
    cmp bx, 0x83e
    je .i_add_xmm9_xmm11
    cmp bx, 0x83f
    je .i_add_xmm9_xmm12
    cmp bx, 0x840
    je .i_add_xmm9_xmm13
    cmp bx, 0x841
    je .i_add_xmm9_xmm14
    cmp bx, 0x842
    je .i_add_xmm9_xmm15
    cmp bx, 0x843
    je .i_add_xmm10_xmm0
    cmp bx, 0x844
    je .i_add_xmm10_xmm1
    cmp bx, 0x845
    je .i_add_xmm10_xmm2
    cmp bx, 0x846
    je .i_add_xmm10_xmm3
    cmp bx, 0x847
    je .i_add_xmm10_xmm4
    cmp bx, 0x848
    je .i_add_xmm10_xmm5
    cmp bx, 0x849
    je .i_add_xmm10_xmm6
    cmp bx, 0x84a
    je .i_add_xmm10_xmm7
    cmp bx, 0x84b
    je .i_add_xmm10_xmm8
    cmp bx, 0x84c
    je .i_add_xmm10_xmm9
    cmp bx, 0x84d
    je .i_add_xmm10_xmm10
    cmp bx, 0x84e
    je .i_add_xmm10_xmm11
    cmp bx, 0x84f
    je .i_add_xmm10_xmm12
    cmp bx, 0x850
    je .i_add_xmm10_xmm13
    cmp bx, 0x851
    je .i_add_xmm10_xmm14
    cmp bx, 0x852
    je .i_add_xmm10_xmm15
    cmp bx, 0x853
    je .i_add_xmm11_xmm0
    cmp bx, 0x854
    je .i_add_xmm11_xmm1
    cmp bx, 0x855
    je .i_add_xmm11_xmm2
    cmp bx, 0x856
    je .i_add_xmm11_xmm3
    cmp bx, 0x857
    je .i_add_xmm11_xmm4
    cmp bx, 0x858
    je .i_add_xmm11_xmm5
    cmp bx, 0x859
    je .i_add_xmm11_xmm6
    cmp bx, 0x85a
    je .i_add_xmm11_xmm7
    cmp bx, 0x85b
    je .i_add_xmm11_xmm8
    cmp bx, 0x85c
    je .i_add_xmm11_xmm9
    cmp bx, 0x85d
    je .i_add_xmm11_xmm10
    cmp bx, 0x85e
    je .i_add_xmm11_xmm11
    cmp bx, 0x85f
    je .i_add_xmm11_xmm12
    cmp bx, 0x860
    je .i_add_xmm11_xmm13
    cmp bx, 0x861
    je .i_add_xmm11_xmm14
    cmp bx, 0x862
    je .i_add_xmm11_xmm15
    cmp bx, 0x863
    je .i_add_xmm12_xmm0
    cmp bx, 0x864
    je .i_add_xmm12_xmm1
    cmp bx, 0x865
    je .i_add_xmm12_xmm2
    cmp bx, 0x866
    je .i_add_xmm12_xmm3
    cmp bx, 0x867
    je .i_add_xmm12_xmm4
    cmp bx, 0x868
    je .i_add_xmm12_xmm5
    cmp bx, 0x869
    je .i_add_xmm12_xmm6
    cmp bx, 0x86a
    je .i_add_xmm12_xmm7
    cmp bx, 0x86b
    je .i_add_xmm12_xmm8
    cmp bx, 0x86c
    je .i_add_xmm12_xmm9
    cmp bx, 0x86d
    je .i_add_xmm12_xmm10
    cmp bx, 0x86e
    je .i_add_xmm12_xmm11
    cmp bx, 0x86f
    je .i_add_xmm12_xmm12
    cmp bx, 0x870
    je .i_add_xmm12_xmm13
    cmp bx, 0x871
    je .i_add_xmm12_xmm14
    cmp bx, 0x872
    je .i_add_xmm12_xmm15
    cmp bx, 0x873
    je .i_add_xmm13_xmm0
    cmp bx, 0x874
    je .i_add_xmm13_xmm1
    cmp bx, 0x875
    je .i_add_xmm13_xmm2
    cmp bx, 0x876
    je .i_add_xmm13_xmm3
    cmp bx, 0x877
    je .i_add_xmm13_xmm4
    cmp bx, 0x878
    je .i_add_xmm13_xmm5
    cmp bx, 0x879
    je .i_add_xmm13_xmm6
    cmp bx, 0x87a
    je .i_add_xmm13_xmm7
    cmp bx, 0x87b
    je .i_add_xmm13_xmm8
    cmp bx, 0x87c
    je .i_add_xmm13_xmm9
    cmp bx, 0x87d
    je .i_add_xmm13_xmm10
    cmp bx, 0x87e
    je .i_add_xmm13_xmm11
    cmp bx, 0x87f
    je .i_add_xmm13_xmm12
    cmp bx, 0x880
    je .i_add_xmm13_xmm13
    cmp bx, 0x881
    je .i_add_xmm13_xmm14
    cmp bx, 0x882
    je .i_add_xmm13_xmm15
    cmp bx, 0x883
    je .i_add_xmm14_xmm0
    cmp bx, 0x884
    je .i_add_xmm14_xmm1
    cmp bx, 0x885
    je .i_add_xmm14_xmm2
    cmp bx, 0x886
    je .i_add_xmm14_xmm3
    cmp bx, 0x887
    je .i_add_xmm14_xmm4
    cmp bx, 0x888
    je .i_add_xmm14_xmm5
    cmp bx, 0x889
    je .i_add_xmm14_xmm6
    cmp bx, 0x88a
    je .i_add_xmm14_xmm7
    cmp bx, 0x88b
    je .i_add_xmm14_xmm8
    cmp bx, 0x88c
    je .i_add_xmm14_xmm9
    cmp bx, 0x88d
    je .i_add_xmm14_xmm10
    cmp bx, 0x88e
    je .i_add_xmm14_xmm11
    cmp bx, 0x88f
    je .i_add_xmm14_xmm12
    cmp bx, 0x890
    je .i_add_xmm14_xmm13
    cmp bx, 0x891
    je .i_add_xmm14_xmm14
    cmp bx, 0x892
    je .i_add_xmm14_xmm15
    cmp bx, 0x893
    je .i_add_xmm15_xmm0
    cmp bx, 0x894
    je .i_add_xmm15_xmm1
    cmp bx, 0x895
    je .i_add_xmm15_xmm2
    cmp bx, 0x896
    je .i_add_xmm15_xmm3
    cmp bx, 0x897
    je .i_add_xmm15_xmm4
    cmp bx, 0x898
    je .i_add_xmm15_xmm5
    cmp bx, 0x899
    je .i_add_xmm15_xmm6
    cmp bx, 0x89a
    je .i_add_xmm15_xmm7
    cmp bx, 0x89b
    je .i_add_xmm15_xmm8
    cmp bx, 0x89c
    je .i_add_xmm15_xmm9
    cmp bx, 0x89d
    je .i_add_xmm15_xmm10
    cmp bx, 0x89e
    je .i_add_xmm15_xmm11
    cmp bx, 0x89f
    je .i_add_xmm15_xmm12
    cmp bx, 0x8a0
    je .i_add_xmm15_xmm13
    cmp bx, 0x8a1
    je .i_add_xmm15_xmm14
    cmp bx, 0x8a2
    je .i_add_xmm15_xmm15
    cmp bx, 0x8a3
    je .i_or_rax_rax
    cmp bx, 0x8a4
    je .i_or_rax_rcx
    cmp bx, 0x8a5
    je .i_or_rax_rdx
    cmp bx, 0x8a6
    je .i_or_rax_r8
    cmp bx, 0x8a7
    je .i_or_rax_r9
    cmp bx, 0x8a8
    je .i_or_rax_r10
    cmp bx, 0x8a9
    je .i_or_rax_r11
    cmp bx, 0x8aa
    je .i_or_rax_r12
    cmp bx, 0x8ab
    je .i_or_rax_r13
    cmp bx, 0x8ac
    je .i_or_rax_rsi
    cmp bx, 0x8ad
    je .i_or_rax_rdi
    cmp bx, 0x8ae
    je .i_or_rax_rsp
    cmp bx, 0x8af
    je .i_or_rax_rbp
    cmp bx, 0x8b0
    je .i_or_rcx_rax
    cmp bx, 0x8b1
    je .i_or_rcx_rcx
    cmp bx, 0x8b2
    je .i_or_rcx_rdx
    cmp bx, 0x8b3
    je .i_or_rcx_r8
    cmp bx, 0x8b4
    je .i_or_rcx_r9
    cmp bx, 0x8b5
    je .i_or_rcx_r10
    cmp bx, 0x8b6
    je .i_or_rcx_r11
    cmp bx, 0x8b7
    je .i_or_rcx_r12
    cmp bx, 0x8b8
    je .i_or_rcx_r13
    cmp bx, 0x8b9
    je .i_or_rcx_rsi
    cmp bx, 0x8ba
    je .i_or_rcx_rdi
    cmp bx, 0x8bb
    je .i_or_rcx_rsp
    cmp bx, 0x8bc
    je .i_or_rcx_rbp
    cmp bx, 0x8bd
    je .i_or_rdx_rax
    cmp bx, 0x8be
    je .i_or_rdx_rcx
    cmp bx, 0x8bf
    je .i_or_rdx_rdx
    cmp bx, 0x8c0
    je .i_or_rdx_r8
    cmp bx, 0x8c1
    je .i_or_rdx_r9
    cmp bx, 0x8c2
    je .i_or_rdx_r10
    cmp bx, 0x8c3
    je .i_or_rdx_r11
    cmp bx, 0x8c4
    je .i_or_rdx_r12
    cmp bx, 0x8c5
    je .i_or_rdx_r13
    cmp bx, 0x8c6
    je .i_or_rdx_rsi
    cmp bx, 0x8c7
    je .i_or_rdx_rdi
    cmp bx, 0x8c8
    je .i_or_rdx_rsp
    cmp bx, 0x8c9
    je .i_or_rdx_rbp
    cmp bx, 0x8ca
    je .i_or_r8_rax
    cmp bx, 0x8cb
    je .i_or_r8_rcx
    cmp bx, 0x8cc
    je .i_or_r8_rdx
    cmp bx, 0x8cd
    je .i_or_r8_r8
    cmp bx, 0x8ce
    je .i_or_r8_r9
    cmp bx, 0x8cf
    je .i_or_r8_r10
    cmp bx, 0x8d0
    je .i_or_r8_r11
    cmp bx, 0x8d1
    je .i_or_r8_r12
    cmp bx, 0x8d2
    je .i_or_r8_r13
    cmp bx, 0x8d3
    je .i_or_r8_rsi
    cmp bx, 0x8d4
    je .i_or_r8_rdi
    cmp bx, 0x8d5
    je .i_or_r8_rsp
    cmp bx, 0x8d6
    je .i_or_r8_rbp
    cmp bx, 0x8d7
    je .i_or_r9_rax
    cmp bx, 0x8d8
    je .i_or_r9_rcx
    cmp bx, 0x8d9
    je .i_or_r9_rdx
    cmp bx, 0x8da
    je .i_or_r9_r8
    cmp bx, 0x8db
    je .i_or_r9_r9
    cmp bx, 0x8dc
    je .i_or_r9_r10
    cmp bx, 0x8dd
    je .i_or_r9_r11
    cmp bx, 0x8de
    je .i_or_r9_r12
    cmp bx, 0x8df
    je .i_or_r9_r13
    cmp bx, 0x8e0
    je .i_or_r9_rsi
    cmp bx, 0x8e1
    je .i_or_r9_rdi
    cmp bx, 0x8e2
    je .i_or_r9_rsp
    cmp bx, 0x8e3
    je .i_or_r9_rbp
    cmp bx, 0x8e4
    je .i_or_r10_rax
    cmp bx, 0x8e5
    je .i_or_r10_rcx
    cmp bx, 0x8e6
    je .i_or_r10_rdx
    cmp bx, 0x8e7
    je .i_or_r10_r8
    cmp bx, 0x8e8
    je .i_or_r10_r9
    cmp bx, 0x8e9
    je .i_or_r10_r10
    cmp bx, 0x8ea
    je .i_or_r10_r11
    cmp bx, 0x8eb
    je .i_or_r10_r12
    cmp bx, 0x8ec
    je .i_or_r10_r13
    cmp bx, 0x8ed
    je .i_or_r10_rsi
    cmp bx, 0x8ee
    je .i_or_r10_rdi
    cmp bx, 0x8ef
    je .i_or_r10_rsp
    cmp bx, 0x8f0
    je .i_or_r10_rbp
    cmp bx, 0x8f1
    je .i_or_r11_rax
    cmp bx, 0x8f2
    je .i_or_r11_rcx
    cmp bx, 0x8f3
    je .i_or_r11_rdx
    cmp bx, 0x8f4
    je .i_or_r11_r8
    cmp bx, 0x8f5
    je .i_or_r11_r9
    cmp bx, 0x8f6
    je .i_or_r11_r10
    cmp bx, 0x8f7
    je .i_or_r11_r11
    cmp bx, 0x8f8
    je .i_or_r11_r12
    cmp bx, 0x8f9
    je .i_or_r11_r13
    cmp bx, 0x8fa
    je .i_or_r11_rsi
    cmp bx, 0x8fb
    je .i_or_r11_rdi
    cmp bx, 0x8fc
    je .i_or_r11_rsp
    cmp bx, 0x8fd
    je .i_or_r11_rbp
    cmp bx, 0x8fe
    je .i_or_r12_rax
    cmp bx, 0x8ff
    je .i_or_r12_rcx
    cmp bx, 0x900
    je .i_or_r12_rdx
    cmp bx, 0x901
    je .i_or_r12_r8
    cmp bx, 0x902
    je .i_or_r12_r9
    cmp bx, 0x903
    je .i_or_r12_r10
    cmp bx, 0x904
    je .i_or_r12_r11
    cmp bx, 0x905
    je .i_or_r12_r12
    cmp bx, 0x906
    je .i_or_r12_r13
    cmp bx, 0x907
    je .i_or_r12_rsi
    cmp bx, 0x908
    je .i_or_r12_rdi
    cmp bx, 0x909
    je .i_or_r12_rsp
    cmp bx, 0x90a
    je .i_or_r12_rbp
    cmp bx, 0x90b
    je .i_or_r13_rax
    cmp bx, 0x90c
    je .i_or_r13_rcx
    cmp bx, 0x90d
    je .i_or_r13_rdx
    cmp bx, 0x90e
    je .i_or_r13_r8
    cmp bx, 0x90f
    je .i_or_r13_r9
    cmp bx, 0x910
    je .i_or_r13_r10
    cmp bx, 0x911
    je .i_or_r13_r11
    cmp bx, 0x912
    je .i_or_r13_r12
    cmp bx, 0x913
    je .i_or_r13_r13
    cmp bx, 0x914
    je .i_or_r13_rsi
    cmp bx, 0x915
    je .i_or_r13_rdi
    cmp bx, 0x916
    je .i_or_r13_rsp
    cmp bx, 0x917
    je .i_or_r13_rbp
    cmp bx, 0x918
    je .i_or_rsi_rax
    cmp bx, 0x919
    je .i_or_rsi_rcx
    cmp bx, 0x91a
    je .i_or_rsi_rdx
    cmp bx, 0x91b
    je .i_or_rsi_r8
    cmp bx, 0x91c
    je .i_or_rsi_r9
    cmp bx, 0x91d
    je .i_or_rsi_r10
    cmp bx, 0x91e
    je .i_or_rsi_r11
    cmp bx, 0x91f
    je .i_or_rsi_r12
    cmp bx, 0x920
    je .i_or_rsi_r13
    cmp bx, 0x921
    je .i_or_rsi_rsi
    cmp bx, 0x922
    je .i_or_rsi_rdi
    cmp bx, 0x923
    je .i_or_rsi_rsp
    cmp bx, 0x924
    je .i_or_rsi_rbp
    cmp bx, 0x925
    je .i_or_rdi_rax
    cmp bx, 0x926
    je .i_or_rdi_rcx
    cmp bx, 0x927
    je .i_or_rdi_rdx
    cmp bx, 0x928
    je .i_or_rdi_r8
    cmp bx, 0x929
    je .i_or_rdi_r9
    cmp bx, 0x92a
    je .i_or_rdi_r10
    cmp bx, 0x92b
    je .i_or_rdi_r11
    cmp bx, 0x92c
    je .i_or_rdi_r12
    cmp bx, 0x92d
    je .i_or_rdi_r13
    cmp bx, 0x92e
    je .i_or_rdi_rsi
    cmp bx, 0x92f
    je .i_or_rdi_rdi
    cmp bx, 0x930
    je .i_or_rdi_rsp
    cmp bx, 0x931
    je .i_or_rdi_rbp
    cmp bx, 0x932
    je .i_or_rsp_rax
    cmp bx, 0x933
    je .i_or_rsp_rcx
    cmp bx, 0x934
    je .i_or_rsp_rdx
    cmp bx, 0x935
    je .i_or_rsp_r8
    cmp bx, 0x936
    je .i_or_rsp_r9
    cmp bx, 0x937
    je .i_or_rsp_r10
    cmp bx, 0x938
    je .i_or_rsp_r11
    cmp bx, 0x939
    je .i_or_rsp_r12
    cmp bx, 0x93a
    je .i_or_rsp_r13
    cmp bx, 0x93b
    je .i_or_rsp_rsi
    cmp bx, 0x93c
    je .i_or_rsp_rdi
    cmp bx, 0x93d
    je .i_or_rsp_rsp
    cmp bx, 0x93e
    je .i_or_rsp_rbp
    cmp bx, 0x93f
    je .i_or_rbp_rax
    cmp bx, 0x940
    je .i_or_rbp_rcx
    cmp bx, 0x941
    je .i_or_rbp_rdx
    cmp bx, 0x942
    je .i_or_rbp_r8
    cmp bx, 0x943
    je .i_or_rbp_r9
    cmp bx, 0x944
    je .i_or_rbp_r10
    cmp bx, 0x945
    je .i_or_rbp_r11
    cmp bx, 0x946
    je .i_or_rbp_r12
    cmp bx, 0x947
    je .i_or_rbp_r13
    cmp bx, 0x948
    je .i_or_rbp_rsi
    cmp bx, 0x949
    je .i_or_rbp_rdi
    cmp bx, 0x94a
    je .i_or_rbp_rsp
    cmp bx, 0x94b
    je .i_or_rbp_rbp
    cmp bx, 0x94c
    je .i_or_eax_eax
    cmp bx, 0x94d
    je .i_or_eax_ecx
    cmp bx, 0x94e
    je .i_or_eax_edx
    cmp bx, 0x94f
    je .i_or_eax_esi
    cmp bx, 0x950
    je .i_or_eax_edi
    cmp bx, 0x951
    je .i_or_eax_esp
    cmp bx, 0x952
    je .i_or_eax_ebp
    cmp bx, 0x953
    je .i_or_ecx_eax
    cmp bx, 0x954
    je .i_or_ecx_ecx
    cmp bx, 0x955
    je .i_or_ecx_edx
    cmp bx, 0x956
    je .i_or_ecx_esi
    cmp bx, 0x957
    je .i_or_ecx_edi
    cmp bx, 0x958
    je .i_or_ecx_esp
    cmp bx, 0x959
    je .i_or_ecx_ebp
    cmp bx, 0x95a
    je .i_or_edx_eax
    cmp bx, 0x95b
    je .i_or_edx_ecx
    cmp bx, 0x95c
    je .i_or_edx_edx
    cmp bx, 0x95d
    je .i_or_edx_esi
    cmp bx, 0x95e
    je .i_or_edx_edi
    cmp bx, 0x95f
    je .i_or_edx_esp
    cmp bx, 0x960
    je .i_or_edx_ebp
    cmp bx, 0x961
    je .i_or_esi_eax
    cmp bx, 0x962
    je .i_or_esi_ecx
    cmp bx, 0x963
    je .i_or_esi_edx
    cmp bx, 0x964
    je .i_or_esi_esi
    cmp bx, 0x965
    je .i_or_esi_edi
    cmp bx, 0x966
    je .i_or_esi_esp
    cmp bx, 0x967
    je .i_or_esi_ebp
    cmp bx, 0x968
    je .i_or_edi_eax
    cmp bx, 0x969
    je .i_or_edi_ecx
    cmp bx, 0x96a
    je .i_or_edi_edx
    cmp bx, 0x96b
    je .i_or_edi_esi
    cmp bx, 0x96c
    je .i_or_edi_edi
    cmp bx, 0x96d
    je .i_or_edi_esp
    cmp bx, 0x96e
    je .i_or_edi_ebp
    cmp bx, 0x96f
    je .i_or_esp_eax
    cmp bx, 0x970
    je .i_or_esp_ecx
    cmp bx, 0x971
    je .i_or_esp_edx
    cmp bx, 0x972
    je .i_or_esp_esi
    cmp bx, 0x973
    je .i_or_esp_edi
    cmp bx, 0x974
    je .i_or_esp_esp
    cmp bx, 0x975
    je .i_or_esp_ebp
    cmp bx, 0x976
    je .i_or_ebp_eax
    cmp bx, 0x977
    je .i_or_ebp_ecx
    cmp bx, 0x978
    je .i_or_ebp_edx
    cmp bx, 0x979
    je .i_or_ebp_esi
    cmp bx, 0x97a
    je .i_or_ebp_edi
    cmp bx, 0x97b
    je .i_or_ebp_esp
    cmp bx, 0x97c
    je .i_or_ebp_ebp
    cmp bx, 0x97d
    je .i_or_ax_ax
    cmp bx, 0x97e
    je .i_or_ax_cx
    cmp bx, 0x97f
    je .i_or_ax_dx
    cmp bx, 0x980
    je .i_or_ax_si
    cmp bx, 0x981
    je .i_or_ax_di
    cmp bx, 0x982
    je .i_or_ax_sp
    cmp bx, 0x983
    je .i_or_ax_bp
    cmp bx, 0x984
    je .i_or_cx_ax
    cmp bx, 0x985
    je .i_or_cx_cx
    cmp bx, 0x986
    je .i_or_cx_dx
    cmp bx, 0x987
    je .i_or_cx_si
    cmp bx, 0x988
    je .i_or_cx_di
    cmp bx, 0x989
    je .i_or_cx_sp
    cmp bx, 0x98a
    je .i_or_cx_bp
    cmp bx, 0x98b
    je .i_or_dx_ax
    cmp bx, 0x98c
    je .i_or_dx_cx
    cmp bx, 0x98d
    je .i_or_dx_dx
    cmp bx, 0x98e
    je .i_or_dx_si
    cmp bx, 0x98f
    je .i_or_dx_di
    cmp bx, 0x990
    je .i_or_dx_sp
    cmp bx, 0x991
    je .i_or_dx_bp
    cmp bx, 0x992
    je .i_or_si_ax
    cmp bx, 0x993
    je .i_or_si_cx
    cmp bx, 0x994
    je .i_or_si_dx
    cmp bx, 0x995
    je .i_or_si_si
    cmp bx, 0x996
    je .i_or_si_di
    cmp bx, 0x997
    je .i_or_si_sp
    cmp bx, 0x998
    je .i_or_si_bp
    cmp bx, 0x999
    je .i_or_di_ax
    cmp bx, 0x99a
    je .i_or_di_cx
    cmp bx, 0x99b
    je .i_or_di_dx
    cmp bx, 0x99c
    je .i_or_di_si
    cmp bx, 0x99d
    je .i_or_di_di
    cmp bx, 0x99e
    je .i_or_di_sp
    cmp bx, 0x99f
    je .i_or_di_bp
    cmp bx, 0x9a0
    je .i_or_sp_ax
    cmp bx, 0x9a1
    je .i_or_sp_cx
    cmp bx, 0x9a2
    je .i_or_sp_dx
    cmp bx, 0x9a3
    je .i_or_sp_si
    cmp bx, 0x9a4
    je .i_or_sp_di
    cmp bx, 0x9a5
    je .i_or_sp_sp
    cmp bx, 0x9a6
    je .i_or_sp_bp
    cmp bx, 0x9a7
    je .i_or_bp_ax
    cmp bx, 0x9a8
    je .i_or_bp_cx
    cmp bx, 0x9a9
    je .i_or_bp_dx
    cmp bx, 0x9aa
    je .i_or_bp_si
    cmp bx, 0x9ab
    je .i_or_bp_di
    cmp bx, 0x9ac
    je .i_or_bp_sp
    cmp bx, 0x9ad
    je .i_or_bp_bp
    cmp bx, 0x9ae
    je .i_or_al_al
    cmp bx, 0x9af
    je .i_or_al_cl
    cmp bx, 0x9b0
    je .i_or_al_dl
    cmp bx, 0x9b1
    je .i_or_cl_al
    cmp bx, 0x9b2
    je .i_or_cl_cl
    cmp bx, 0x9b3
    je .i_or_cl_dl
    cmp bx, 0x9b4
    je .i_or_dl_al
    cmp bx, 0x9b5
    je .i_or_dl_cl
    cmp bx, 0x9b6
    je .i_or_dl_dl
    cmp bx, 0x9b7
    je .i_xor_xmm0_xmm0
    cmp bx, 0x9b8
    je .i_xor_xmm0_xmm1
    cmp bx, 0x9b9
    je .i_xor_xmm0_xmm2
    cmp bx, 0x9ba
    je .i_xor_xmm0_xmm3
    cmp bx, 0x9bb
    je .i_xor_xmm0_xmm4
    cmp bx, 0x9bc
    je .i_xor_xmm0_xmm5
    cmp bx, 0x9bd
    je .i_xor_xmm0_xmm6
    cmp bx, 0x9be
    je .i_xor_xmm0_xmm7
    cmp bx, 0x9bf
    je .i_xor_xmm0_xmm8
    cmp bx, 0x9c0
    je .i_xor_xmm0_xmm9
    cmp bx, 0x9c1
    je .i_xor_xmm0_xmm10
    cmp bx, 0x9c2
    je .i_xor_xmm0_xmm11
    cmp bx, 0x9c3
    je .i_xor_xmm0_xmm12
    cmp bx, 0x9c4
    je .i_xor_xmm0_xmm13
    cmp bx, 0x9c5
    je .i_xor_xmm0_xmm14
    cmp bx, 0x9c6
    je .i_xor_xmm0_xmm15
    cmp bx, 0x9c7
    je .i_xor_xmm1_xmm0
    cmp bx, 0x9c8
    je .i_xor_xmm1_xmm1
    cmp bx, 0x9c9
    je .i_xor_xmm1_xmm2
    cmp bx, 0x9ca
    je .i_xor_xmm1_xmm3
    cmp bx, 0x9cb
    je .i_xor_xmm1_xmm4
    cmp bx, 0x9cc
    je .i_xor_xmm1_xmm5
    cmp bx, 0x9cd
    je .i_xor_xmm1_xmm6
    cmp bx, 0x9ce
    je .i_xor_xmm1_xmm7
    cmp bx, 0x9cf
    je .i_xor_xmm1_xmm8
    cmp bx, 0x9d0
    je .i_xor_xmm1_xmm9
    cmp bx, 0x9d1
    je .i_xor_xmm1_xmm10
    cmp bx, 0x9d2
    je .i_xor_xmm1_xmm11
    cmp bx, 0x9d3
    je .i_xor_xmm1_xmm12
    cmp bx, 0x9d4
    je .i_xor_xmm1_xmm13
    cmp bx, 0x9d5
    je .i_xor_xmm1_xmm14
    cmp bx, 0x9d6
    je .i_xor_xmm1_xmm15
    cmp bx, 0x9d7
    je .i_xor_xmm2_xmm0
    cmp bx, 0x9d8
    je .i_xor_xmm2_xmm1
    cmp bx, 0x9d9
    je .i_xor_xmm2_xmm2
    cmp bx, 0x9da
    je .i_xor_xmm2_xmm3
    cmp bx, 0x9db
    je .i_xor_xmm2_xmm4
    cmp bx, 0x9dc
    je .i_xor_xmm2_xmm5
    cmp bx, 0x9dd
    je .i_xor_xmm2_xmm6
    cmp bx, 0x9de
    je .i_xor_xmm2_xmm7
    cmp bx, 0x9df
    je .i_xor_xmm2_xmm8
    cmp bx, 0x9e0
    je .i_xor_xmm2_xmm9
    cmp bx, 0x9e1
    je .i_xor_xmm2_xmm10
    cmp bx, 0x9e2
    je .i_xor_xmm2_xmm11
    cmp bx, 0x9e3
    je .i_xor_xmm2_xmm12
    cmp bx, 0x9e4
    je .i_xor_xmm2_xmm13
    cmp bx, 0x9e5
    je .i_xor_xmm2_xmm14
    cmp bx, 0x9e6
    je .i_xor_xmm2_xmm15
    cmp bx, 0x9e7
    je .i_xor_xmm3_xmm0
    cmp bx, 0x9e8
    je .i_xor_xmm3_xmm1
    cmp bx, 0x9e9
    je .i_xor_xmm3_xmm2
    cmp bx, 0x9ea
    je .i_xor_xmm3_xmm3
    cmp bx, 0x9eb
    je .i_xor_xmm3_xmm4
    cmp bx, 0x9ec
    je .i_xor_xmm3_xmm5
    cmp bx, 0x9ed
    je .i_xor_xmm3_xmm6
    cmp bx, 0x9ee
    je .i_xor_xmm3_xmm7
    cmp bx, 0x9ef
    je .i_xor_xmm3_xmm8
    cmp bx, 0x9f0
    je .i_xor_xmm3_xmm9
    cmp bx, 0x9f1
    je .i_xor_xmm3_xmm10
    cmp bx, 0x9f2
    je .i_xor_xmm3_xmm11
    cmp bx, 0x9f3
    je .i_xor_xmm3_xmm12
    cmp bx, 0x9f4
    je .i_xor_xmm3_xmm13
    cmp bx, 0x9f5
    je .i_xor_xmm3_xmm14
    cmp bx, 0x9f6
    je .i_xor_xmm3_xmm15
    cmp bx, 0x9f7
    je .i_xor_xmm4_xmm0
    cmp bx, 0x9f8
    je .i_xor_xmm4_xmm1
    cmp bx, 0x9f9
    je .i_xor_xmm4_xmm2
    cmp bx, 0x9fa
    je .i_xor_xmm4_xmm3
    cmp bx, 0x9fb
    je .i_xor_xmm4_xmm4
    cmp bx, 0x9fc
    je .i_xor_xmm4_xmm5
    cmp bx, 0x9fd
    je .i_xor_xmm4_xmm6
    cmp bx, 0x9fe
    je .i_xor_xmm4_xmm7
    cmp bx, 0x9ff
    je .i_xor_xmm4_xmm8
    cmp bx, 0xa00
    je .i_xor_xmm4_xmm9
    cmp bx, 0xa01
    je .i_xor_xmm4_xmm10
    cmp bx, 0xa02
    je .i_xor_xmm4_xmm11
    cmp bx, 0xa03
    je .i_xor_xmm4_xmm12
    cmp bx, 0xa04
    je .i_xor_xmm4_xmm13
    cmp bx, 0xa05
    je .i_xor_xmm4_xmm14
    cmp bx, 0xa06
    je .i_xor_xmm4_xmm15
    cmp bx, 0xa07
    je .i_xor_xmm5_xmm0
    cmp bx, 0xa08
    je .i_xor_xmm5_xmm1
    cmp bx, 0xa09
    je .i_xor_xmm5_xmm2
    cmp bx, 0xa0a
    je .i_xor_xmm5_xmm3
    cmp bx, 0xa0b
    je .i_xor_xmm5_xmm4
    cmp bx, 0xa0c
    je .i_xor_xmm5_xmm5
    cmp bx, 0xa0d
    je .i_xor_xmm5_xmm6
    cmp bx, 0xa0e
    je .i_xor_xmm5_xmm7
    cmp bx, 0xa0f
    je .i_xor_xmm5_xmm8
    cmp bx, 0xa10
    je .i_xor_xmm5_xmm9
    cmp bx, 0xa11
    je .i_xor_xmm5_xmm10
    cmp bx, 0xa12
    je .i_xor_xmm5_xmm11
    cmp bx, 0xa13
    je .i_xor_xmm5_xmm12
    cmp bx, 0xa14
    je .i_xor_xmm5_xmm13
    cmp bx, 0xa15
    je .i_xor_xmm5_xmm14
    cmp bx, 0xa16
    je .i_xor_xmm5_xmm15
    cmp bx, 0xa17
    je .i_xor_xmm6_xmm0
    cmp bx, 0xa18
    je .i_xor_xmm6_xmm1
    cmp bx, 0xa19
    je .i_xor_xmm6_xmm2
    cmp bx, 0xa1a
    je .i_xor_xmm6_xmm3
    cmp bx, 0xa1b
    je .i_xor_xmm6_xmm4
    cmp bx, 0xa1c
    je .i_xor_xmm6_xmm5
    cmp bx, 0xa1d
    je .i_xor_xmm6_xmm6
    cmp bx, 0xa1e
    je .i_xor_xmm6_xmm7
    cmp bx, 0xa1f
    je .i_xor_xmm6_xmm8
    cmp bx, 0xa20
    je .i_xor_xmm6_xmm9
    cmp bx, 0xa21
    je .i_xor_xmm6_xmm10
    cmp bx, 0xa22
    je .i_xor_xmm6_xmm11
    cmp bx, 0xa23
    je .i_xor_xmm6_xmm12
    cmp bx, 0xa24
    je .i_xor_xmm6_xmm13
    cmp bx, 0xa25
    je .i_xor_xmm6_xmm14
    cmp bx, 0xa26
    je .i_xor_xmm6_xmm15
    cmp bx, 0xa27
    je .i_xor_xmm7_xmm0
    cmp bx, 0xa28
    je .i_xor_xmm7_xmm1
    cmp bx, 0xa29
    je .i_xor_xmm7_xmm2
    cmp bx, 0xa2a
    je .i_xor_xmm7_xmm3
    cmp bx, 0xa2b
    je .i_xor_xmm7_xmm4
    cmp bx, 0xa2c
    je .i_xor_xmm7_xmm5
    cmp bx, 0xa2d
    je .i_xor_xmm7_xmm6
    cmp bx, 0xa2e
    je .i_xor_xmm7_xmm7
    cmp bx, 0xa2f
    je .i_xor_xmm7_xmm8
    cmp bx, 0xa30
    je .i_xor_xmm7_xmm9
    cmp bx, 0xa31
    je .i_xor_xmm7_xmm10
    cmp bx, 0xa32
    je .i_xor_xmm7_xmm11
    cmp bx, 0xa33
    je .i_xor_xmm7_xmm12
    cmp bx, 0xa34
    je .i_xor_xmm7_xmm13
    cmp bx, 0xa35
    je .i_xor_xmm7_xmm14
    cmp bx, 0xa36
    je .i_xor_xmm7_xmm15
    cmp bx, 0xa37
    je .i_xor_xmm8_xmm0
    cmp bx, 0xa38
    je .i_xor_xmm8_xmm1
    cmp bx, 0xa39
    je .i_xor_xmm8_xmm2
    cmp bx, 0xa3a
    je .i_xor_xmm8_xmm3
    cmp bx, 0xa3b
    je .i_xor_xmm8_xmm4
    cmp bx, 0xa3c
    je .i_xor_xmm8_xmm5
    cmp bx, 0xa3d
    je .i_xor_xmm8_xmm6
    cmp bx, 0xa3e
    je .i_xor_xmm8_xmm7
    cmp bx, 0xa3f
    je .i_xor_xmm8_xmm8
    cmp bx, 0xa40
    je .i_xor_xmm8_xmm9
    cmp bx, 0xa41
    je .i_xor_xmm8_xmm10
    cmp bx, 0xa42
    je .i_xor_xmm8_xmm11
    cmp bx, 0xa43
    je .i_xor_xmm8_xmm12
    cmp bx, 0xa44
    je .i_xor_xmm8_xmm13
    cmp bx, 0xa45
    je .i_xor_xmm8_xmm14
    cmp bx, 0xa46
    je .i_xor_xmm8_xmm15
    cmp bx, 0xa47
    je .i_xor_xmm9_xmm0
    cmp bx, 0xa48
    je .i_xor_xmm9_xmm1
    cmp bx, 0xa49
    je .i_xor_xmm9_xmm2
    cmp bx, 0xa4a
    je .i_xor_xmm9_xmm3
    cmp bx, 0xa4b
    je .i_xor_xmm9_xmm4
    cmp bx, 0xa4c
    je .i_xor_xmm9_xmm5
    cmp bx, 0xa4d
    je .i_xor_xmm9_xmm6
    cmp bx, 0xa4e
    je .i_xor_xmm9_xmm7
    cmp bx, 0xa4f
    je .i_xor_xmm9_xmm8
    cmp bx, 0xa50
    je .i_xor_xmm9_xmm9
    cmp bx, 0xa51
    je .i_xor_xmm9_xmm10
    cmp bx, 0xa52
    je .i_xor_xmm9_xmm11
    cmp bx, 0xa53
    je .i_xor_xmm9_xmm12
    cmp bx, 0xa54
    je .i_xor_xmm9_xmm13
    cmp bx, 0xa55
    je .i_xor_xmm9_xmm14
    cmp bx, 0xa56
    je .i_xor_xmm9_xmm15
    cmp bx, 0xa57
    je .i_xor_xmm10_xmm0
    cmp bx, 0xa58
    je .i_xor_xmm10_xmm1
    cmp bx, 0xa59
    je .i_xor_xmm10_xmm2
    cmp bx, 0xa5a
    je .i_xor_xmm10_xmm3
    cmp bx, 0xa5b
    je .i_xor_xmm10_xmm4
    cmp bx, 0xa5c
    je .i_xor_xmm10_xmm5
    cmp bx, 0xa5d
    je .i_xor_xmm10_xmm6
    cmp bx, 0xa5e
    je .i_xor_xmm10_xmm7
    cmp bx, 0xa5f
    je .i_xor_xmm10_xmm8
    cmp bx, 0xa60
    je .i_xor_xmm10_xmm9
    cmp bx, 0xa61
    je .i_xor_xmm10_xmm10
    cmp bx, 0xa62
    je .i_xor_xmm10_xmm11
    cmp bx, 0xa63
    je .i_xor_xmm10_xmm12
    cmp bx, 0xa64
    je .i_xor_xmm10_xmm13
    cmp bx, 0xa65
    je .i_xor_xmm10_xmm14
    cmp bx, 0xa66
    je .i_xor_xmm10_xmm15
    cmp bx, 0xa67
    je .i_xor_xmm11_xmm0
    cmp bx, 0xa68
    je .i_xor_xmm11_xmm1
    cmp bx, 0xa69
    je .i_xor_xmm11_xmm2
    cmp bx, 0xa6a
    je .i_xor_xmm11_xmm3
    cmp bx, 0xa6b
    je .i_xor_xmm11_xmm4
    cmp bx, 0xa6c
    je .i_xor_xmm11_xmm5
    cmp bx, 0xa6d
    je .i_xor_xmm11_xmm6
    cmp bx, 0xa6e
    je .i_xor_xmm11_xmm7
    cmp bx, 0xa6f
    je .i_xor_xmm11_xmm8
    cmp bx, 0xa70
    je .i_xor_xmm11_xmm9
    cmp bx, 0xa71
    je .i_xor_xmm11_xmm10
    cmp bx, 0xa72
    je .i_xor_xmm11_xmm11
    cmp bx, 0xa73
    je .i_xor_xmm11_xmm12
    cmp bx, 0xa74
    je .i_xor_xmm11_xmm13
    cmp bx, 0xa75
    je .i_xor_xmm11_xmm14
    cmp bx, 0xa76
    je .i_xor_xmm11_xmm15
    cmp bx, 0xa77
    je .i_xor_xmm12_xmm0
    cmp bx, 0xa78
    je .i_xor_xmm12_xmm1
    cmp bx, 0xa79
    je .i_xor_xmm12_xmm2
    cmp bx, 0xa7a
    je .i_xor_xmm12_xmm3
    cmp bx, 0xa7b
    je .i_xor_xmm12_xmm4
    cmp bx, 0xa7c
    je .i_xor_xmm12_xmm5
    cmp bx, 0xa7d
    je .i_xor_xmm12_xmm6
    cmp bx, 0xa7e
    je .i_xor_xmm12_xmm7
    cmp bx, 0xa7f
    je .i_xor_xmm12_xmm8
    cmp bx, 0xa80
    je .i_xor_xmm12_xmm9
    cmp bx, 0xa81
    je .i_xor_xmm12_xmm10
    cmp bx, 0xa82
    je .i_xor_xmm12_xmm11
    cmp bx, 0xa83
    je .i_xor_xmm12_xmm12
    cmp bx, 0xa84
    je .i_xor_xmm12_xmm13
    cmp bx, 0xa85
    je .i_xor_xmm12_xmm14
    cmp bx, 0xa86
    je .i_xor_xmm12_xmm15
    cmp bx, 0xa87
    je .i_xor_xmm13_xmm0
    cmp bx, 0xa88
    je .i_xor_xmm13_xmm1
    cmp bx, 0xa89
    je .i_xor_xmm13_xmm2
    cmp bx, 0xa8a
    je .i_xor_xmm13_xmm3
    cmp bx, 0xa8b
    je .i_xor_xmm13_xmm4
    cmp bx, 0xa8c
    je .i_xor_xmm13_xmm5
    cmp bx, 0xa8d
    je .i_xor_xmm13_xmm6
    cmp bx, 0xa8e
    je .i_xor_xmm13_xmm7
    cmp bx, 0xa8f
    je .i_xor_xmm13_xmm8
    cmp bx, 0xa90
    je .i_xor_xmm13_xmm9
    cmp bx, 0xa91
    je .i_xor_xmm13_xmm10
    cmp bx, 0xa92
    je .i_xor_xmm13_xmm11
    cmp bx, 0xa93
    je .i_xor_xmm13_xmm12
    cmp bx, 0xa94
    je .i_xor_xmm13_xmm13
    cmp bx, 0xa95
    je .i_xor_xmm13_xmm14
    cmp bx, 0xa96
    je .i_xor_xmm13_xmm15
    cmp bx, 0xa97
    je .i_xor_xmm14_xmm0
    cmp bx, 0xa98
    je .i_xor_xmm14_xmm1
    cmp bx, 0xa99
    je .i_xor_xmm14_xmm2
    cmp bx, 0xa9a
    je .i_xor_xmm14_xmm3
    cmp bx, 0xa9b
    je .i_xor_xmm14_xmm4
    cmp bx, 0xa9c
    je .i_xor_xmm14_xmm5
    cmp bx, 0xa9d
    je .i_xor_xmm14_xmm6
    cmp bx, 0xa9e
    je .i_xor_xmm14_xmm7
    cmp bx, 0xa9f
    je .i_xor_xmm14_xmm8
    cmp bx, 0xaa0
    je .i_xor_xmm14_xmm9
    cmp bx, 0xaa1
    je .i_xor_xmm14_xmm10
    cmp bx, 0xaa2
    je .i_xor_xmm14_xmm11
    cmp bx, 0xaa3
    je .i_xor_xmm14_xmm12
    cmp bx, 0xaa4
    je .i_xor_xmm14_xmm13
    cmp bx, 0xaa5
    je .i_xor_xmm14_xmm14
    cmp bx, 0xaa6
    je .i_xor_xmm14_xmm15
    cmp bx, 0xaa7
    je .i_xor_xmm15_xmm0
    cmp bx, 0xaa8
    je .i_xor_xmm15_xmm1
    cmp bx, 0xaa9
    je .i_xor_xmm15_xmm2
    cmp bx, 0xaaa
    je .i_xor_xmm15_xmm3
    cmp bx, 0xaab
    je .i_xor_xmm15_xmm4
    cmp bx, 0xaac
    je .i_xor_xmm15_xmm5
    cmp bx, 0xaad
    je .i_xor_xmm15_xmm6
    cmp bx, 0xaae
    je .i_xor_xmm15_xmm7
    cmp bx, 0xaaf
    je .i_xor_xmm15_xmm8
    cmp bx, 0xab0
    je .i_xor_xmm15_xmm9
    cmp bx, 0xab1
    je .i_xor_xmm15_xmm10
    cmp bx, 0xab2
    je .i_xor_xmm15_xmm11
    cmp bx, 0xab3
    je .i_xor_xmm15_xmm12
    cmp bx, 0xab4
    je .i_xor_xmm15_xmm13
    cmp bx, 0xab5
    je .i_xor_xmm15_xmm14
    cmp bx, 0xab6
    je .i_xor_xmm15_xmm15
    cmp bx, 0xab7
    je .i_xor_rax_rax
    cmp bx, 0xab8
    je .i_xor_rax_rcx
    cmp bx, 0xab9
    je .i_xor_rax_rdx
    cmp bx, 0xaba
    je .i_xor_rax_r8
    cmp bx, 0xabb
    je .i_xor_rax_r9
    cmp bx, 0xabc
    je .i_xor_rax_r10
    cmp bx, 0xabd
    je .i_xor_rax_r11
    cmp bx, 0xabe
    je .i_xor_rax_r12
    cmp bx, 0xabf
    je .i_xor_rax_r13
    cmp bx, 0xac0
    je .i_xor_rax_rsi
    cmp bx, 0xac1
    je .i_xor_rax_rdi
    cmp bx, 0xac2
    je .i_xor_rax_rsp
    cmp bx, 0xac3
    je .i_xor_rax_rbp
    cmp bx, 0xac4
    je .i_xor_rcx_rax
    cmp bx, 0xac5
    je .i_xor_rcx_rcx
    cmp bx, 0xac6
    je .i_xor_rcx_rdx
    cmp bx, 0xac7
    je .i_xor_rcx_r8
    cmp bx, 0xac8
    je .i_xor_rcx_r9
    cmp bx, 0xac9
    je .i_xor_rcx_r10
    cmp bx, 0xaca
    je .i_xor_rcx_r11
    cmp bx, 0xacb
    je .i_xor_rcx_r12
    cmp bx, 0xacc
    je .i_xor_rcx_r13
    cmp bx, 0xacd
    je .i_xor_rcx_rsi
    cmp bx, 0xace
    je .i_xor_rcx_rdi
    cmp bx, 0xacf
    je .i_xor_rcx_rsp
    cmp bx, 0xad0
    je .i_xor_rcx_rbp
    cmp bx, 0xad1
    je .i_xor_rdx_rax
    cmp bx, 0xad2
    je .i_xor_rdx_rcx
    cmp bx, 0xad3
    je .i_xor_rdx_rdx
    cmp bx, 0xad4
    je .i_xor_rdx_r8
    cmp bx, 0xad5
    je .i_xor_rdx_r9
    cmp bx, 0xad6
    je .i_xor_rdx_r10
    cmp bx, 0xad7
    je .i_xor_rdx_r11
    cmp bx, 0xad8
    je .i_xor_rdx_r12
    cmp bx, 0xad9
    je .i_xor_rdx_r13
    cmp bx, 0xada
    je .i_xor_rdx_rsi
    cmp bx, 0xadb
    je .i_xor_rdx_rdi
    cmp bx, 0xadc
    je .i_xor_rdx_rsp
    cmp bx, 0xadd
    je .i_xor_rdx_rbp
    cmp bx, 0xade
    je .i_xor_r8_rax
    cmp bx, 0xadf
    je .i_xor_r8_rcx
    cmp bx, 0xae0
    je .i_xor_r8_rdx
    cmp bx, 0xae1
    je .i_xor_r8_r8
    cmp bx, 0xae2
    je .i_xor_r8_r9
    cmp bx, 0xae3
    je .i_xor_r8_r10
    cmp bx, 0xae4
    je .i_xor_r8_r11
    cmp bx, 0xae5
    je .i_xor_r8_r12
    cmp bx, 0xae6
    je .i_xor_r8_r13
    cmp bx, 0xae7
    je .i_xor_r8_rsi
    cmp bx, 0xae8
    je .i_xor_r8_rdi
    cmp bx, 0xae9
    je .i_xor_r8_rsp
    cmp bx, 0xaea
    je .i_xor_r8_rbp
    cmp bx, 0xaeb
    je .i_xor_r9_rax
    cmp bx, 0xaec
    je .i_xor_r9_rcx
    cmp bx, 0xaed
    je .i_xor_r9_rdx
    cmp bx, 0xaee
    je .i_xor_r9_r8
    cmp bx, 0xaef
    je .i_xor_r9_r9
    cmp bx, 0xaf0
    je .i_xor_r9_r10
    cmp bx, 0xaf1
    je .i_xor_r9_r11
    cmp bx, 0xaf2
    je .i_xor_r9_r12
    cmp bx, 0xaf3
    je .i_xor_r9_r13
    cmp bx, 0xaf4
    je .i_xor_r9_rsi
    cmp bx, 0xaf5
    je .i_xor_r9_rdi
    cmp bx, 0xaf6
    je .i_xor_r9_rsp
    cmp bx, 0xaf7
    je .i_xor_r9_rbp
    cmp bx, 0xaf8
    je .i_xor_r10_rax
    cmp bx, 0xaf9
    je .i_xor_r10_rcx
    cmp bx, 0xafa
    je .i_xor_r10_rdx
    cmp bx, 0xafb
    je .i_xor_r10_r8
    cmp bx, 0xafc
    je .i_xor_r10_r9
    cmp bx, 0xafd
    je .i_xor_r10_r10
    cmp bx, 0xafe
    je .i_xor_r10_r11
    cmp bx, 0xaff
    je .i_xor_r10_r12
    cmp bx, 0xb00
    je .i_xor_r10_r13
    cmp bx, 0xb01
    je .i_xor_r10_rsi
    cmp bx, 0xb02
    je .i_xor_r10_rdi
    cmp bx, 0xb03
    je .i_xor_r10_rsp
    cmp bx, 0xb04
    je .i_xor_r10_rbp
    cmp bx, 0xb05
    je .i_xor_r11_rax
    cmp bx, 0xb06
    je .i_xor_r11_rcx
    cmp bx, 0xb07
    je .i_xor_r11_rdx
    cmp bx, 0xb08
    je .i_xor_r11_r8
    cmp bx, 0xb09
    je .i_xor_r11_r9
    cmp bx, 0xb0a
    je .i_xor_r11_r10
    cmp bx, 0xb0b
    je .i_xor_r11_r11
    cmp bx, 0xb0c
    je .i_xor_r11_r12
    cmp bx, 0xb0d
    je .i_xor_r11_r13
    cmp bx, 0xb0e
    je .i_xor_r11_rsi
    cmp bx, 0xb0f
    je .i_xor_r11_rdi
    cmp bx, 0xb10
    je .i_xor_r11_rsp
    cmp bx, 0xb11
    je .i_xor_r11_rbp
    cmp bx, 0xb12
    je .i_xor_r12_rax
    cmp bx, 0xb13
    je .i_xor_r12_rcx
    cmp bx, 0xb14
    je .i_xor_r12_rdx
    cmp bx, 0xb15
    je .i_xor_r12_r8
    cmp bx, 0xb16
    je .i_xor_r12_r9
    cmp bx, 0xb17
    je .i_xor_r12_r10
    cmp bx, 0xb18
    je .i_xor_r12_r11
    cmp bx, 0xb19
    je .i_xor_r12_r12
    cmp bx, 0xb1a
    je .i_xor_r12_r13
    cmp bx, 0xb1b
    je .i_xor_r12_rsi
    cmp bx, 0xb1c
    je .i_xor_r12_rdi
    cmp bx, 0xb1d
    je .i_xor_r12_rsp
    cmp bx, 0xb1e
    je .i_xor_r12_rbp
    cmp bx, 0xb1f
    je .i_xor_r13_rax
    cmp bx, 0xb20
    je .i_xor_r13_rcx
    cmp bx, 0xb21
    je .i_xor_r13_rdx
    cmp bx, 0xb22
    je .i_xor_r13_r8
    cmp bx, 0xb23
    je .i_xor_r13_r9
    cmp bx, 0xb24
    je .i_xor_r13_r10
    cmp bx, 0xb25
    je .i_xor_r13_r11
    cmp bx, 0xb26
    je .i_xor_r13_r12
    cmp bx, 0xb27
    je .i_xor_r13_r13
    cmp bx, 0xb28
    je .i_xor_r13_rsi
    cmp bx, 0xb29
    je .i_xor_r13_rdi
    cmp bx, 0xb2a
    je .i_xor_r13_rsp
    cmp bx, 0xb2b
    je .i_xor_r13_rbp
    cmp bx, 0xb2c
    je .i_xor_rsi_rax
    cmp bx, 0xb2d
    je .i_xor_rsi_rcx
    cmp bx, 0xb2e
    je .i_xor_rsi_rdx
    cmp bx, 0xb2f
    je .i_xor_rsi_r8
    cmp bx, 0xb30
    je .i_xor_rsi_r9
    cmp bx, 0xb31
    je .i_xor_rsi_r10
    cmp bx, 0xb32
    je .i_xor_rsi_r11
    cmp bx, 0xb33
    je .i_xor_rsi_r12
    cmp bx, 0xb34
    je .i_xor_rsi_r13
    cmp bx, 0xb35
    je .i_xor_rsi_rsi
    cmp bx, 0xb36
    je .i_xor_rsi_rdi
    cmp bx, 0xb37
    je .i_xor_rsi_rsp
    cmp bx, 0xb38
    je .i_xor_rsi_rbp
    cmp bx, 0xb39
    je .i_xor_rdi_rax
    cmp bx, 0xb3a
    je .i_xor_rdi_rcx
    cmp bx, 0xb3b
    je .i_xor_rdi_rdx
    cmp bx, 0xb3c
    je .i_xor_rdi_r8
    cmp bx, 0xb3d
    je .i_xor_rdi_r9
    cmp bx, 0xb3e
    je .i_xor_rdi_r10
    cmp bx, 0xb3f
    je .i_xor_rdi_r11
    cmp bx, 0xb40
    je .i_xor_rdi_r12
    cmp bx, 0xb41
    je .i_xor_rdi_r13
    cmp bx, 0xb42
    je .i_xor_rdi_rsi
    cmp bx, 0xb43
    je .i_xor_rdi_rdi
    cmp bx, 0xb44
    je .i_xor_rdi_rsp
    cmp bx, 0xb45
    je .i_xor_rdi_rbp
    cmp bx, 0xb46
    je .i_xor_rsp_rax
    cmp bx, 0xb47
    je .i_xor_rsp_rcx
    cmp bx, 0xb48
    je .i_xor_rsp_rdx
    cmp bx, 0xb49
    je .i_xor_rsp_r8
    cmp bx, 0xb4a
    je .i_xor_rsp_r9
    cmp bx, 0xb4b
    je .i_xor_rsp_r10
    cmp bx, 0xb4c
    je .i_xor_rsp_r11
    cmp bx, 0xb4d
    je .i_xor_rsp_r12
    cmp bx, 0xb4e
    je .i_xor_rsp_r13
    cmp bx, 0xb4f
    je .i_xor_rsp_rsi
    cmp bx, 0xb50
    je .i_xor_rsp_rdi
    cmp bx, 0xb51
    je .i_xor_rsp_rsp
    cmp bx, 0xb52
    je .i_xor_rsp_rbp
    cmp bx, 0xb53
    je .i_xor_rbp_rax
    cmp bx, 0xb54
    je .i_xor_rbp_rcx
    cmp bx, 0xb55
    je .i_xor_rbp_rdx
    cmp bx, 0xb56
    je .i_xor_rbp_r8
    cmp bx, 0xb57
    je .i_xor_rbp_r9
    cmp bx, 0xb58
    je .i_xor_rbp_r10
    cmp bx, 0xb59
    je .i_xor_rbp_r11
    cmp bx, 0xb5a
    je .i_xor_rbp_r12
    cmp bx, 0xb5b
    je .i_xor_rbp_r13
    cmp bx, 0xb5c
    je .i_xor_rbp_rsi
    cmp bx, 0xb5d
    je .i_xor_rbp_rdi
    cmp bx, 0xb5e
    je .i_xor_rbp_rsp
    cmp bx, 0xb5f
    je .i_xor_rbp_rbp
    cmp bx, 0xb60
    je .i_xor_eax_eax
    cmp bx, 0xb61
    je .i_xor_eax_ecx
    cmp bx, 0xb62
    je .i_xor_eax_edx
    cmp bx, 0xb63
    je .i_xor_eax_esi
    cmp bx, 0xb64
    je .i_xor_eax_edi
    cmp bx, 0xb65
    je .i_xor_eax_esp
    cmp bx, 0xb66
    je .i_xor_eax_ebp
    cmp bx, 0xb67
    je .i_xor_ecx_eax
    cmp bx, 0xb68
    je .i_xor_ecx_ecx
    cmp bx, 0xb69
    je .i_xor_ecx_edx
    cmp bx, 0xb6a
    je .i_xor_ecx_esi
    cmp bx, 0xb6b
    je .i_xor_ecx_edi
    cmp bx, 0xb6c
    je .i_xor_ecx_esp
    cmp bx, 0xb6d
    je .i_xor_ecx_ebp
    cmp bx, 0xb6e
    je .i_xor_edx_eax
    cmp bx, 0xb6f
    je .i_xor_edx_ecx
    cmp bx, 0xb70
    je .i_xor_edx_edx
    cmp bx, 0xb71
    je .i_xor_edx_esi
    cmp bx, 0xb72
    je .i_xor_edx_edi
    cmp bx, 0xb73
    je .i_xor_edx_esp
    cmp bx, 0xb74
    je .i_xor_edx_ebp
    cmp bx, 0xb75
    je .i_xor_esi_eax
    cmp bx, 0xb76
    je .i_xor_esi_ecx
    cmp bx, 0xb77
    je .i_xor_esi_edx
    cmp bx, 0xb78
    je .i_xor_esi_esi
    cmp bx, 0xb79
    je .i_xor_esi_edi
    cmp bx, 0xb7a
    je .i_xor_esi_esp
    cmp bx, 0xb7b
    je .i_xor_esi_ebp
    cmp bx, 0xb7c
    je .i_xor_edi_eax
    cmp bx, 0xb7d
    je .i_xor_edi_ecx
    cmp bx, 0xb7e
    je .i_xor_edi_edx
    cmp bx, 0xb7f
    je .i_xor_edi_esi
    cmp bx, 0xb80
    je .i_xor_edi_edi
    cmp bx, 0xb81
    je .i_xor_edi_esp
    cmp bx, 0xb82
    je .i_xor_edi_ebp
    cmp bx, 0xb83
    je .i_xor_esp_eax
    cmp bx, 0xb84
    je .i_xor_esp_ecx
    cmp bx, 0xb85
    je .i_xor_esp_edx
    cmp bx, 0xb86
    je .i_xor_esp_esi
    cmp bx, 0xb87
    je .i_xor_esp_edi
    cmp bx, 0xb88
    je .i_xor_esp_esp
    cmp bx, 0xb89
    je .i_xor_esp_ebp
    cmp bx, 0xb8a
    je .i_xor_ebp_eax
    cmp bx, 0xb8b
    je .i_xor_ebp_ecx
    cmp bx, 0xb8c
    je .i_xor_ebp_edx
    cmp bx, 0xb8d
    je .i_xor_ebp_esi
    cmp bx, 0xb8e
    je .i_xor_ebp_edi
    cmp bx, 0xb8f
    je .i_xor_ebp_esp
    cmp bx, 0xb90
    je .i_xor_ebp_ebp
    cmp bx, 0xb91
    je .i_xor_ax_ax
    cmp bx, 0xb92
    je .i_xor_ax_cx
    cmp bx, 0xb93
    je .i_xor_ax_dx
    cmp bx, 0xb94
    je .i_xor_ax_si
    cmp bx, 0xb95
    je .i_xor_ax_di
    cmp bx, 0xb96
    je .i_xor_ax_sp
    cmp bx, 0xb97
    je .i_xor_ax_bp
    cmp bx, 0xb98
    je .i_xor_cx_ax
    cmp bx, 0xb99
    je .i_xor_cx_cx
    cmp bx, 0xb9a
    je .i_xor_cx_dx
    cmp bx, 0xb9b
    je .i_xor_cx_si
    cmp bx, 0xb9c
    je .i_xor_cx_di
    cmp bx, 0xb9d
    je .i_xor_cx_sp
    cmp bx, 0xb9e
    je .i_xor_cx_bp
    cmp bx, 0xb9f
    je .i_xor_dx_ax
    cmp bx, 0xba0
    je .i_xor_dx_cx
    cmp bx, 0xba1
    je .i_xor_dx_dx
    cmp bx, 0xba2
    je .i_xor_dx_si
    cmp bx, 0xba3
    je .i_xor_dx_di
    cmp bx, 0xba4
    je .i_xor_dx_sp
    cmp bx, 0xba5
    je .i_xor_dx_bp
    cmp bx, 0xba6
    je .i_xor_si_ax
    cmp bx, 0xba7
    je .i_xor_si_cx
    cmp bx, 0xba8
    je .i_xor_si_dx
    cmp bx, 0xba9
    je .i_xor_si_si
    cmp bx, 0xbaa
    je .i_xor_si_di
    cmp bx, 0xbab
    je .i_xor_si_sp
    cmp bx, 0xbac
    je .i_xor_si_bp
    cmp bx, 0xbad
    je .i_xor_di_ax
    cmp bx, 0xbae
    je .i_xor_di_cx
    cmp bx, 0xbaf
    je .i_xor_di_dx
    cmp bx, 0xbb0
    je .i_xor_di_si
    cmp bx, 0xbb1
    je .i_xor_di_di
    cmp bx, 0xbb2
    je .i_xor_di_sp
    cmp bx, 0xbb3
    je .i_xor_di_bp
    cmp bx, 0xbb4
    je .i_xor_sp_ax
    cmp bx, 0xbb5
    je .i_xor_sp_cx
    cmp bx, 0xbb6
    je .i_xor_sp_dx
    cmp bx, 0xbb7
    je .i_xor_sp_si
    cmp bx, 0xbb8
    je .i_xor_sp_di
    cmp bx, 0xbb9
    je .i_xor_sp_sp
    cmp bx, 0xbba
    je .i_xor_sp_bp
    cmp bx, 0xbbb
    je .i_xor_bp_ax
    cmp bx, 0xbbc
    je .i_xor_bp_cx
    cmp bx, 0xbbd
    je .i_xor_bp_dx
    cmp bx, 0xbbe
    je .i_xor_bp_si
    cmp bx, 0xbbf
    je .i_xor_bp_di
    cmp bx, 0xbc0
    je .i_xor_bp_sp
    cmp bx, 0xbc1
    je .i_xor_bp_bp
    cmp bx, 0xbc2
    je .i_xor_al_al
    cmp bx, 0xbc3
    je .i_xor_al_cl
    cmp bx, 0xbc4
    je .i_xor_al_dl
    cmp bx, 0xbc5
    je .i_xor_cl_al
    cmp bx, 0xbc6
    je .i_xor_cl_cl
    cmp bx, 0xbc7
    je .i_xor_cl_dl
    cmp bx, 0xbc8
    je .i_xor_dl_al
    cmp bx, 0xbc9
    je .i_xor_dl_cl
    cmp bx, 0xbca
    je .i_xor_dl_dl
    cmp bx, 0xbcb
    je .i_ldd_rax
    cmp bx, 0xbcc
    je .i_ldd_rcx
    cmp bx, 0xbcd
    je .i_ldd_rdx
    cmp bx, 0xbce
    je .i_ldd_r8
    cmp bx, 0xbcf
    je .i_ldd_r9
    cmp bx, 0xbd0
    je .i_ldd_r10
    cmp bx, 0xbd1
    je .i_ldd_r11
    cmp bx, 0xbd2
    je .i_ldd_r12
    cmp bx, 0xbd3
    je .i_ldd_r13
    cmp bx, 0xbd4
    je .i_ldd_rsi
    cmp bx, 0xbd5
    je .i_ldd_rdi
    cmp bx, 0xbd6
    je .i_ldd_rsp
    cmp bx, 0xbd7
    je .i_ldd_rbp
    cmp bx, 0xbd8
    je .i_mov_m_rax
    cmp bx, 0xbd9
    je .i_mov_m_rcx
    cmp bx, 0xbda
    je .i_mov_m_rdx
    cmp bx, 0xbdb
    je .i_mov_m_r8
    cmp bx, 0xbdc
    je .i_mov_m_r9
    cmp bx, 0xbdd
    je .i_mov_m_r10
    cmp bx, 0xbde
    je .i_mov_m_r11
    cmp bx, 0xbdf
    je .i_mov_m_r12
    cmp bx, 0xbe0
    je .i_mov_m_r13
    cmp bx, 0xbe1
    je .i_mov_m_rsi
    cmp bx, 0xbe2
    je .i_mov_m_rdi
    cmp bx, 0xbe3
    je .i_mov_m_rsp
    cmp bx, 0xbe4
    je .i_mov_m_rbp
    cmp bx, 0xbe5
    je .i_mov_d_rax
    cmp bx, 0xbe6
    je .i_mov_d_rcx
    cmp bx, 0xbe7
    je .i_mov_d_rdx
    cmp bx, 0xbe8
    je .i_mov_d_r8
    cmp bx, 0xbe9
    je .i_mov_d_r9
    cmp bx, 0xbea
    je .i_mov_d_r10
    cmp bx, 0xbeb
    je .i_mov_d_r11
    cmp bx, 0xbec
    je .i_mov_d_r12
    cmp bx, 0xbed
    je .i_mov_d_r13
    cmp bx, 0xbee
    je .i_mov_d_rsi
    cmp bx, 0xbef
    je .i_mov_d_rdi
    cmp bx, 0xbf0
    je .i_mov_d_rsp
    cmp bx, 0xbf1
    je .i_mov_d_rbp
    cmp bx, 0xbf2
    je .i_cmp_rax
    cmp bx, 0xbf3
    je .i_cmp_rcx
    cmp bx, 0xbf4
    je .i_cmp_rdx
    cmp bx, 0xbf5
    je .i_cmp_r8
    cmp bx, 0xbf6
    je .i_cmp_r9
    cmp bx, 0xbf7
    je .i_cmp_r10
    cmp bx, 0xbf8
    je .i_cmp_r11
    cmp bx, 0xbf9
    je .i_cmp_r12
    cmp bx, 0xbfa
    je .i_cmp_r13
    cmp bx, 0xbfb
    je .i_cmp_rsi
    cmp bx, 0xbfc
    je .i_cmp_rdi
    cmp bx, 0xbfd
    je .i_cmp_rsp
    cmp bx, 0xbfe
    je .i_cmp_rbp
    cmp bx, 0xbff
    je .i_cmp_rax_rax
    cmp bx, 0xc00
    je .i_cmp_rax_rcx
    cmp bx, 0xc01
    je .i_cmp_rax_rdx
    cmp bx, 0xc02
    je .i_cmp_rax_r8
    cmp bx, 0xc03
    je .i_cmp_rax_r9
    cmp bx, 0xc04
    je .i_cmp_rax_r10
    cmp bx, 0xc05
    je .i_cmp_rax_r11
    cmp bx, 0xc06
    je .i_cmp_rax_r12
    cmp bx, 0xc07
    je .i_cmp_rax_r13
    cmp bx, 0xc08
    je .i_cmp_rax_rsi
    cmp bx, 0xc09
    je .i_cmp_rax_rdi
    cmp bx, 0xc0a
    je .i_cmp_rax_rsp
    cmp bx, 0xc0b
    je .i_cmp_rax_rbp
    cmp bx, 0xc0c
    je .i_cmp_rcx_rax
    cmp bx, 0xc0d
    je .i_cmp_rcx_rcx
    cmp bx, 0xc0e
    je .i_cmp_rcx_rdx
    cmp bx, 0xc0f
    je .i_cmp_rcx_r8
    cmp bx, 0xc10
    je .i_cmp_rcx_r9
    cmp bx, 0xc11
    je .i_cmp_rcx_r10
    cmp bx, 0xc12
    je .i_cmp_rcx_r11
    cmp bx, 0xc13
    je .i_cmp_rcx_r12
    cmp bx, 0xc14
    je .i_cmp_rcx_r13
    cmp bx, 0xc15
    je .i_cmp_rcx_rsi
    cmp bx, 0xc16
    je .i_cmp_rcx_rdi
    cmp bx, 0xc17
    je .i_cmp_rcx_rsp
    cmp bx, 0xc18
    je .i_cmp_rcx_rbp
    cmp bx, 0xc19
    je .i_cmp_rdx_rax
    cmp bx, 0xc1a
    je .i_cmp_rdx_rcx
    cmp bx, 0xc1b
    je .i_cmp_rdx_rdx
    cmp bx, 0xc1c
    je .i_cmp_rdx_r8
    cmp bx, 0xc1d
    je .i_cmp_rdx_r9
    cmp bx, 0xc1e
    je .i_cmp_rdx_r10
    cmp bx, 0xc1f
    je .i_cmp_rdx_r11
    cmp bx, 0xc20
    je .i_cmp_rdx_r12
    cmp bx, 0xc21
    je .i_cmp_rdx_r13
    cmp bx, 0xc22
    je .i_cmp_rdx_rsi
    cmp bx, 0xc23
    je .i_cmp_rdx_rdi
    cmp bx, 0xc24
    je .i_cmp_rdx_rsp
    cmp bx, 0xc25
    je .i_cmp_rdx_rbp
    cmp bx, 0xc26
    je .i_cmp_r8_rax
    cmp bx, 0xc27
    je .i_cmp_r8_rcx
    cmp bx, 0xc28
    je .i_cmp_r8_rdx
    cmp bx, 0xc29
    je .i_cmp_r8_r8
    cmp bx, 0xc2a
    je .i_cmp_r8_r9
    cmp bx, 0xc2b
    je .i_cmp_r8_r10
    cmp bx, 0xc2c
    je .i_cmp_r8_r11
    cmp bx, 0xc2d
    je .i_cmp_r8_r12
    cmp bx, 0xc2e
    je .i_cmp_r8_r13
    cmp bx, 0xc2f
    je .i_cmp_r8_rsi
    cmp bx, 0xc30
    je .i_cmp_r8_rdi
    cmp bx, 0xc31
    je .i_cmp_r8_rsp
    cmp bx, 0xc32
    je .i_cmp_r8_rbp
    cmp bx, 0xc33
    je .i_cmp_r9_rax
    cmp bx, 0xc34
    je .i_cmp_r9_rcx
    cmp bx, 0xc35
    je .i_cmp_r9_rdx
    cmp bx, 0xc36
    je .i_cmp_r9_r8
    cmp bx, 0xc37
    je .i_cmp_r9_r9
    cmp bx, 0xc38
    je .i_cmp_r9_r10
    cmp bx, 0xc39
    je .i_cmp_r9_r11
    cmp bx, 0xc3a
    je .i_cmp_r9_r12
    cmp bx, 0xc3b
    je .i_cmp_r9_r13
    cmp bx, 0xc3c
    je .i_cmp_r9_rsi
    cmp bx, 0xc3d
    je .i_cmp_r9_rdi
    cmp bx, 0xc3e
    je .i_cmp_r9_rsp
    cmp bx, 0xc3f
    je .i_cmp_r9_rbp
    cmp bx, 0xc40
    je .i_cmp_r10_rax
    cmp bx, 0xc41
    je .i_cmp_r10_rcx
    cmp bx, 0xc42
    je .i_cmp_r10_rdx
    cmp bx, 0xc43
    je .i_cmp_r10_r8
    cmp bx, 0xc44
    je .i_cmp_r10_r9
    cmp bx, 0xc45
    je .i_cmp_r10_r10
    cmp bx, 0xc46
    je .i_cmp_r10_r11
    cmp bx, 0xc47
    je .i_cmp_r10_r12
    cmp bx, 0xc48
    je .i_cmp_r10_r13
    cmp bx, 0xc49
    je .i_cmp_r10_rsi
    cmp bx, 0xc4a
    je .i_cmp_r10_rdi
    cmp bx, 0xc4b
    je .i_cmp_r10_rsp
    cmp bx, 0xc4c
    je .i_cmp_r10_rbp
    cmp bx, 0xc4d
    je .i_cmp_r11_rax
    cmp bx, 0xc4e
    je .i_cmp_r11_rcx
    cmp bx, 0xc4f
    je .i_cmp_r11_rdx
    cmp bx, 0xc50
    je .i_cmp_r11_r8
    cmp bx, 0xc51
    je .i_cmp_r11_r9
    cmp bx, 0xc52
    je .i_cmp_r11_r10
    cmp bx, 0xc53
    je .i_cmp_r11_r11
    cmp bx, 0xc54
    je .i_cmp_r11_r12
    cmp bx, 0xc55
    je .i_cmp_r11_r13
    cmp bx, 0xc56
    je .i_cmp_r11_rsi
    cmp bx, 0xc57
    je .i_cmp_r11_rdi
    cmp bx, 0xc58
    je .i_cmp_r11_rsp
    cmp bx, 0xc59
    je .i_cmp_r11_rbp
    cmp bx, 0xc5a
    je .i_cmp_r12_rax
    cmp bx, 0xc5b
    je .i_cmp_r12_rcx
    cmp bx, 0xc5c
    je .i_cmp_r12_rdx
    cmp bx, 0xc5d
    je .i_cmp_r12_r8
    cmp bx, 0xc5e
    je .i_cmp_r12_r9
    cmp bx, 0xc5f
    je .i_cmp_r12_r10
    cmp bx, 0xc60
    je .i_cmp_r12_r11
    cmp bx, 0xc61
    je .i_cmp_r12_r12
    cmp bx, 0xc62
    je .i_cmp_r12_r13
    cmp bx, 0xc63
    je .i_cmp_r12_rsi
    cmp bx, 0xc64
    je .i_cmp_r12_rdi
    cmp bx, 0xc65
    je .i_cmp_r12_rsp
    cmp bx, 0xc66
    je .i_cmp_r12_rbp
    cmp bx, 0xc67
    je .i_cmp_r13_rax
    cmp bx, 0xc68
    je .i_cmp_r13_rcx
    cmp bx, 0xc69
    je .i_cmp_r13_rdx
    cmp bx, 0xc6a
    je .i_cmp_r13_r8
    cmp bx, 0xc6b
    je .i_cmp_r13_r9
    cmp bx, 0xc6c
    je .i_cmp_r13_r10
    cmp bx, 0xc6d
    je .i_cmp_r13_r11
    cmp bx, 0xc6e
    je .i_cmp_r13_r12
    cmp bx, 0xc6f
    je .i_cmp_r13_r13
    cmp bx, 0xc70
    je .i_cmp_r13_rsi
    cmp bx, 0xc71
    je .i_cmp_r13_rdi
    cmp bx, 0xc72
    je .i_cmp_r13_rsp
    cmp bx, 0xc73
    je .i_cmp_r13_rbp
    cmp bx, 0xc74
    je .i_cmp_rsi_rax
    cmp bx, 0xc75
    je .i_cmp_rsi_rcx
    cmp bx, 0xc76
    je .i_cmp_rsi_rdx
    cmp bx, 0xc77
    je .i_cmp_rsi_r8
    cmp bx, 0xc78
    je .i_cmp_rsi_r9
    cmp bx, 0xc79
    je .i_cmp_rsi_r10
    cmp bx, 0xc7a
    je .i_cmp_rsi_r11
    cmp bx, 0xc7b
    je .i_cmp_rsi_r12
    cmp bx, 0xc7c
    je .i_cmp_rsi_r13
    cmp bx, 0xc7d
    je .i_cmp_rsi_rsi
    cmp bx, 0xc7e
    je .i_cmp_rsi_rdi
    cmp bx, 0xc7f
    je .i_cmp_rsi_rsp
    cmp bx, 0xc80
    je .i_cmp_rsi_rbp
    cmp bx, 0xc81
    je .i_cmp_rdi_rax
    cmp bx, 0xc82
    je .i_cmp_rdi_rcx
    cmp bx, 0xc83
    je .i_cmp_rdi_rdx
    cmp bx, 0xc84
    je .i_cmp_rdi_r8
    cmp bx, 0xc85
    je .i_cmp_rdi_r9
    cmp bx, 0xc86
    je .i_cmp_rdi_r10
    cmp bx, 0xc87
    je .i_cmp_rdi_r11
    cmp bx, 0xc88
    je .i_cmp_rdi_r12
    cmp bx, 0xc89
    je .i_cmp_rdi_r13
    cmp bx, 0xc8a
    je .i_cmp_rdi_rsi
    cmp bx, 0xc8b
    je .i_cmp_rdi_rdi
    cmp bx, 0xc8c
    je .i_cmp_rdi_rsp
    cmp bx, 0xc8d
    je .i_cmp_rdi_rbp
    cmp bx, 0xc8e
    je .i_cmp_rsp_rax
    cmp bx, 0xc8f
    je .i_cmp_rsp_rcx
    cmp bx, 0xc90
    je .i_cmp_rsp_rdx
    cmp bx, 0xc91
    je .i_cmp_rsp_r8
    cmp bx, 0xc92
    je .i_cmp_rsp_r9
    cmp bx, 0xc93
    je .i_cmp_rsp_r10
    cmp bx, 0xc94
    je .i_cmp_rsp_r11
    cmp bx, 0xc95
    je .i_cmp_rsp_r12
    cmp bx, 0xc96
    je .i_cmp_rsp_r13
    cmp bx, 0xc97
    je .i_cmp_rsp_rsi
    cmp bx, 0xc98
    je .i_cmp_rsp_rdi
    cmp bx, 0xc99
    je .i_cmp_rsp_rsp
    cmp bx, 0xc9a
    je .i_cmp_rsp_rbp
    cmp bx, 0xc9b
    je .i_cmp_rbp_rax
    cmp bx, 0xc9c
    je .i_cmp_rbp_rcx
    cmp bx, 0xc9d
    je .i_cmp_rbp_rdx
    cmp bx, 0xc9e
    je .i_cmp_rbp_r8
    cmp bx, 0xc9f
    je .i_cmp_rbp_r9
    cmp bx, 0xca0
    je .i_cmp_rbp_r10
    cmp bx, 0xca1
    je .i_cmp_rbp_r11
    cmp bx, 0xca2
    je .i_cmp_rbp_r12
    cmp bx, 0xca3
    je .i_cmp_rbp_r13
    cmp bx, 0xca4
    je .i_cmp_rbp_rsi
    cmp bx, 0xca5
    je .i_cmp_rbp_rdi
    cmp bx, 0xca6
    je .i_cmp_rbp_rsp
    cmp bx, 0xca7
    je .i_cmp_rbp_rbp
    cmp bx, 0xca8
    je .i_dref_rax_rax
    cmp bx, 0xca9
    je .i_dref_rax_rcx
    cmp bx, 0xcaa
    je .i_dref_rax_rdx
    cmp bx, 0xcab
    je .i_dref_rax_r8
    cmp bx, 0xcac
    je .i_dref_rax_r9
    cmp bx, 0xcad
    je .i_dref_rax_r10
    cmp bx, 0xcae
    je .i_dref_rax_r11
    cmp bx, 0xcaf
    je .i_dref_rax_r12
    cmp bx, 0xcb0
    je .i_dref_rax_r13
    cmp bx, 0xcb1
    je .i_dref_rax_rsi
    cmp bx, 0xcb2
    je .i_dref_rax_rdi
    cmp bx, 0xcb3
    je .i_dref_rax_rsp
    cmp bx, 0xcb4
    je .i_dref_rax_rbp
    cmp bx, 0xcb5
    je .i_dref_rcx_rax
    cmp bx, 0xcb6
    je .i_dref_rcx_rcx
    cmp bx, 0xcb7
    je .i_dref_rcx_rdx
    cmp bx, 0xcb8
    je .i_dref_rcx_r8
    cmp bx, 0xcb9
    je .i_dref_rcx_r9
    cmp bx, 0xcba
    je .i_dref_rcx_r10
    cmp bx, 0xcbb
    je .i_dref_rcx_r11
    cmp bx, 0xcbc
    je .i_dref_rcx_r12
    cmp bx, 0xcbd
    je .i_dref_rcx_r13
    cmp bx, 0xcbe
    je .i_dref_rcx_rsi
    cmp bx, 0xcbf
    je .i_dref_rcx_rdi
    cmp bx, 0xcc0
    je .i_dref_rcx_rsp
    cmp bx, 0xcc1
    je .i_dref_rcx_rbp
    cmp bx, 0xcc2
    je .i_dref_rdx_rax
    cmp bx, 0xcc3
    je .i_dref_rdx_rcx
    cmp bx, 0xcc4
    je .i_dref_rdx_rdx
    cmp bx, 0xcc5
    je .i_dref_rdx_r8
    cmp bx, 0xcc6
    je .i_dref_rdx_r9
    cmp bx, 0xcc7
    je .i_dref_rdx_r10
    cmp bx, 0xcc8
    je .i_dref_rdx_r11
    cmp bx, 0xcc9
    je .i_dref_rdx_r12
    cmp bx, 0xcca
    je .i_dref_rdx_r13
    cmp bx, 0xccb
    je .i_dref_rdx_rsi
    cmp bx, 0xccc
    je .i_dref_rdx_rdi
    cmp bx, 0xccd
    je .i_dref_rdx_rsp
    cmp bx, 0xcce
    je .i_dref_rdx_rbp
    cmp bx, 0xccf
    je .i_dref_r8_rax
    cmp bx, 0xcd0
    je .i_dref_r8_rcx
    cmp bx, 0xcd1
    je .i_dref_r8_rdx
    cmp bx, 0xcd2
    je .i_dref_r8_r8
    cmp bx, 0xcd3
    je .i_dref_r8_r9
    cmp bx, 0xcd4
    je .i_dref_r8_r10
    cmp bx, 0xcd5
    je .i_dref_r8_r11
    cmp bx, 0xcd6
    je .i_dref_r8_r12
    cmp bx, 0xcd7
    je .i_dref_r8_r13
    cmp bx, 0xcd8
    je .i_dref_r8_rsi
    cmp bx, 0xcd9
    je .i_dref_r8_rdi
    cmp bx, 0xcda
    je .i_dref_r8_rsp
    cmp bx, 0xcdb
    je .i_dref_r8_rbp
    cmp bx, 0xcdc
    je .i_dref_r9_rax
    cmp bx, 0xcdd
    je .i_dref_r9_rcx
    cmp bx, 0xcde
    je .i_dref_r9_rdx
    cmp bx, 0xcdf
    je .i_dref_r9_r8
    cmp bx, 0xce0
    je .i_dref_r9_r9
    cmp bx, 0xce1
    je .i_dref_r9_r10
    cmp bx, 0xce2
    je .i_dref_r9_r11
    cmp bx, 0xce3
    je .i_dref_r9_r12
    cmp bx, 0xce4
    je .i_dref_r9_r13
    cmp bx, 0xce5
    je .i_dref_r9_rsi
    cmp bx, 0xce6
    je .i_dref_r9_rdi
    cmp bx, 0xce7
    je .i_dref_r9_rsp
    cmp bx, 0xce8
    je .i_dref_r9_rbp
    cmp bx, 0xce9
    je .i_dref_r10_rax
    cmp bx, 0xcea
    je .i_dref_r10_rcx
    cmp bx, 0xceb
    je .i_dref_r10_rdx
    cmp bx, 0xcec
    je .i_dref_r10_r8
    cmp bx, 0xced
    je .i_dref_r10_r9
    cmp bx, 0xcee
    je .i_dref_r10_r10
    cmp bx, 0xcef
    je .i_dref_r10_r11
    cmp bx, 0xcf0
    je .i_dref_r10_r12
    cmp bx, 0xcf1
    je .i_dref_r10_r13
    cmp bx, 0xcf2
    je .i_dref_r10_rsi
    cmp bx, 0xcf3
    je .i_dref_r10_rdi
    cmp bx, 0xcf4
    je .i_dref_r10_rsp
    cmp bx, 0xcf5
    je .i_dref_r10_rbp
    cmp bx, 0xcf6
    je .i_dref_r11_rax
    cmp bx, 0xcf7
    je .i_dref_r11_rcx
    cmp bx, 0xcf8
    je .i_dref_r11_rdx
    cmp bx, 0xcf9
    je .i_dref_r11_r8
    cmp bx, 0xcfa
    je .i_dref_r11_r9
    cmp bx, 0xcfb
    je .i_dref_r11_r10
    cmp bx, 0xcfc
    je .i_dref_r11_r11
    cmp bx, 0xcfd
    je .i_dref_r11_r12
    cmp bx, 0xcfe
    je .i_dref_r11_r13
    cmp bx, 0xcff
    je .i_dref_r11_rsi
    cmp bx, 0xd00
    je .i_dref_r11_rdi
    cmp bx, 0xd01
    je .i_dref_r11_rsp
    cmp bx, 0xd02
    je .i_dref_r11_rbp
    cmp bx, 0xd03
    je .i_dref_r12_rax
    cmp bx, 0xd04
    je .i_dref_r12_rcx
    cmp bx, 0xd05
    je .i_dref_r12_rdx
    cmp bx, 0xd06
    je .i_dref_r12_r8
    cmp bx, 0xd07
    je .i_dref_r12_r9
    cmp bx, 0xd08
    je .i_dref_r12_r10
    cmp bx, 0xd09
    je .i_dref_r12_r11
    cmp bx, 0xd0a
    je .i_dref_r12_r12
    cmp bx, 0xd0b
    je .i_dref_r12_r13
    cmp bx, 0xd0c
    je .i_dref_r12_rsi
    cmp bx, 0xd0d
    je .i_dref_r12_rdi
    cmp bx, 0xd0e
    je .i_dref_r12_rsp
    cmp bx, 0xd0f
    je .i_dref_r12_rbp
    cmp bx, 0xd10
    je .i_dref_r13_rax
    cmp bx, 0xd11
    je .i_dref_r13_rcx
    cmp bx, 0xd12
    je .i_dref_r13_rdx
    cmp bx, 0xd13
    je .i_dref_r13_r8
    cmp bx, 0xd14
    je .i_dref_r13_r9
    cmp bx, 0xd15
    je .i_dref_r13_r10
    cmp bx, 0xd16
    je .i_dref_r13_r11
    cmp bx, 0xd17
    je .i_dref_r13_r12
    cmp bx, 0xd18
    je .i_dref_r13_r13
    cmp bx, 0xd19
    je .i_dref_r13_rsi
    cmp bx, 0xd1a
    je .i_dref_r13_rdi
    cmp bx, 0xd1b
    je .i_dref_r13_rsp
    cmp bx, 0xd1c
    je .i_dref_r13_rbp
    cmp bx, 0xd1d
    je .i_dref_rsi_rax
    cmp bx, 0xd1e
    je .i_dref_rsi_rcx
    cmp bx, 0xd1f
    je .i_dref_rsi_rdx
    cmp bx, 0xd20
    je .i_dref_rsi_r8
    cmp bx, 0xd21
    je .i_dref_rsi_r9
    cmp bx, 0xd22
    je .i_dref_rsi_r10
    cmp bx, 0xd23
    je .i_dref_rsi_r11
    cmp bx, 0xd24
    je .i_dref_rsi_r12
    cmp bx, 0xd25
    je .i_dref_rsi_r13
    cmp bx, 0xd26
    je .i_dref_rsi_rsi
    cmp bx, 0xd27
    je .i_dref_rsi_rdi
    cmp bx, 0xd28
    je .i_dref_rsi_rsp
    cmp bx, 0xd29
    je .i_dref_rsi_rbp
    cmp bx, 0xd2a
    je .i_dref_rdi_rax
    cmp bx, 0xd2b
    je .i_dref_rdi_rcx
    cmp bx, 0xd2c
    je .i_dref_rdi_rdx
    cmp bx, 0xd2d
    je .i_dref_rdi_r8
    cmp bx, 0xd2e
    je .i_dref_rdi_r9
    cmp bx, 0xd2f
    je .i_dref_rdi_r10
    cmp bx, 0xd30
    je .i_dref_rdi_r11
    cmp bx, 0xd31
    je .i_dref_rdi_r12
    cmp bx, 0xd32
    je .i_dref_rdi_r13
    cmp bx, 0xd33
    je .i_dref_rdi_rsi
    cmp bx, 0xd34
    je .i_dref_rdi_rdi
    cmp bx, 0xd35
    je .i_dref_rdi_rsp
    cmp bx, 0xd36
    je .i_dref_rdi_rbp
    cmp bx, 0xd37
    je .i_dref_rsp_rax
    cmp bx, 0xd38
    je .i_dref_rsp_rcx
    cmp bx, 0xd39
    je .i_dref_rsp_rdx
    cmp bx, 0xd3a
    je .i_dref_rsp_r8
    cmp bx, 0xd3b
    je .i_dref_rsp_r9
    cmp bx, 0xd3c
    je .i_dref_rsp_r10
    cmp bx, 0xd3d
    je .i_dref_rsp_r11
    cmp bx, 0xd3e
    je .i_dref_rsp_r12
    cmp bx, 0xd3f
    je .i_dref_rsp_r13
    cmp bx, 0xd40
    je .i_dref_rsp_rsi
    cmp bx, 0xd41
    je .i_dref_rsp_rdi
    cmp bx, 0xd42
    je .i_dref_rsp_rsp
    cmp bx, 0xd43
    je .i_dref_rsp_rbp
    cmp bx, 0xd44
    je .i_dref_rbp_rax
    cmp bx, 0xd45
    je .i_dref_rbp_rcx
    cmp bx, 0xd46
    je .i_dref_rbp_rdx
    cmp bx, 0xd47
    je .i_dref_rbp_r8
    cmp bx, 0xd48
    je .i_dref_rbp_r9
    cmp bx, 0xd49
    je .i_dref_rbp_r10
    cmp bx, 0xd4a
    je .i_dref_rbp_r11
    cmp bx, 0xd4b
    je .i_dref_rbp_r12
    cmp bx, 0xd4c
    je .i_dref_rbp_r13
    cmp bx, 0xd4d
    je .i_dref_rbp_rsi
    cmp bx, 0xd4e
    je .i_dref_rbp_rdi
    cmp bx, 0xd4f
    je .i_dref_rbp_rsp
    cmp bx, 0xd50
    je .i_dref_rbp_rbp
    cmp bx, 0xd51
    je .i_jmp
    cmp bx, 0xd52
    je .i_je
    cmp bx, 0xd53
    je .i_jz
    cmp bx, 0xd54
    je .i_jne
    cmp bx, 0xd55
    je .i_jl
    cmp bx, 0xd56
    je .i_jg
    cmp bx, 0xd57
    je .i_jle
    cmp bx, 0xd58
    je .i_jge
    cmp bx, 0xd59
    je .i_call
    cmp bx, 0xd5a
    je .i_extern_call
    cmp bx, 0xd5b
    je .i_ret
    cmp bx, 0xd5c
    je .i_leave
    cmp bx, 0xd5d
    je .i_enter


    mov cx, bx
    mov rdx, r14
    sub rdx, r14
    call handle_invalid_bvm_oper
    mov rax, 1
    jmp ._return


    .i_exit:
    jmp ._return
    jmp ._loop

    .i_nop:
    jmp ._loop

    .i_mov_mm_64b:
    mov rbx, [r14+2]
    mov [r14], rbx
    add r14, 16
    jmp ._loop

    .i_mov_mm_32b:
    mov ebx, [r14+2]
    mov [r14], ebx
    add r14, 8
    jmp ._loop

    .i_mov_mm_16b:
    mov bl, [r14+2] 
    mov [r14], bl 
    add r14, 2
    jmp ._loop

    .i_push_rax:
    push rax
    add r14, 8
    jmp ._loop

    .i_push_rcx:
    push rcx
    add r14, 8
    jmp ._loop

    .i_push_rdx:
    push rdx
    add r14, 8
    jmp ._loop

    .i_push_r8:
    push r8
    add r14, 8
    jmp ._loop

    .i_push_r9:
    push r9
    add r14, 8
    jmp ._loop

    .i_push_r10:
    push r10
    add r14, 8
    jmp ._loop

    .i_push_r11:
    push r11
    add r14, 8
    jmp ._loop

    .i_push_r12:
    push r12
    add r14, 8
    jmp ._loop

    .i_push_r13:
    push r13
    add r14, 8
    jmp ._loop

    .i_push_rsi:
    push rsi
    add r14, 8
    jmp ._loop

    .i_push_rdi:
    push rdi
    add r14, 8
    jmp ._loop

    .i_push_rsp:
    push rsp
    add r14, 8
    jmp ._loop

    .i_push_rbp:
    push rbp
    add r14, 8
    jmp ._loop

    .i_pop_rax:
    pop rax
    add r14, 8
    jmp ._loop

    .i_pop_rcx:
    pop rcx
    add r14, 8
    jmp ._loop

    .i_pop_rdx:
    pop rdx
    add r14, 8
    jmp ._loop

    .i_pop_r8:
    pop r8
    add r14, 8
    jmp ._loop

    .i_pop_r9:
    pop r9
    add r14, 8
    jmp ._loop

    .i_pop_r10:
    pop r10
    add r14, 8
    jmp ._loop

    .i_pop_r11:
    pop r11
    add r14, 8
    jmp ._loop

    .i_pop_r12:
    pop r12
    add r14, 8
    jmp ._loop

    .i_pop_r13:
    pop r13
    add r14, 8
    jmp ._loop

    .i_pop_rsi:
    pop rsi
    add r14, 8
    jmp ._loop

    .i_pop_rdi:
    pop rdi
    add r14, 8
    jmp ._loop

    .i_pop_rsp:
    pop rsp
    add r14, 8
    jmp ._loop

    .i_pop_rbp:
    pop rbp
    add r14, 8
    jmp ._loop

    .i_dref_rax:
    mov rax, [rax]
    add r14, 8
    jmp ._loop

    .i_dref_rcx:
    mov rcx, [rcx]
    add r14, 8
    jmp ._loop

    .i_dref_rdx:
    mov rdx, [rdx]
    add r14, 8
    jmp ._loop

    .i_dref_r8:
    mov r8, [r8]
    add r14, 8
    jmp ._loop

    .i_dref_r9:
    mov r9, [r9]
    add r14, 8
    jmp ._loop

    .i_dref_r10:
    mov r10, [r10]
    add r14, 8
    jmp ._loop

    .i_dref_r11:
    mov r11, [r11]
    add r14, 8
    jmp ._loop

    .i_dref_r12:
    mov r12, [r12]
    add r14, 8
    jmp ._loop

    .i_dref_r13:
    mov r13, [r13]
    add r14, 8
    jmp ._loop

    .i_dref_rsi:
    mov rsi, [rsi]
    add r14, 8
    jmp ._loop

    .i_dref_rdi:
    mov rdi, [rdi]
    add r14, 8
    jmp ._loop

    .i_dref_rsp:
    mov rsp, [rsp]
    add r14, 8
    jmp ._loop

    .i_dref_rbp:
    mov rbp, [rbp]
    add r14, 8
    jmp ._loop

    .i_ddref_rax:
    mov rax, [rax]
    add rax, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_rcx:
    mov rcx, [rcx]
    add rcx, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_rdx:
    mov rdx, [rdx]
    add rdx, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_r8:
    mov r8, [r8]
    add r8, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_r9:
    mov r9, [r9]
    add r9, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_r10:
    mov r10, [r10]
    add r10, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_r11:
    mov r11, [r11]
    add r11, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_r12:
    mov r12, [r12]
    add r12, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_r13:
    mov r13, [r13]
    add r13, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_rsi:
    mov rsi, [rsi]
    add rsi, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_rdi:
    mov rdi, [rdi]
    add rdi, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_rsp:
    mov rsp, [rsp]
    add rsp, [r15+16]
    add r14, 8
    jmp ._loop

    .i_ddref_rbp:
    mov rbp, [rbp]
    add rbp, [r15+16]
    add r14, 8
    jmp ._loop

    .i_mov_rax:
    mov rax, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_rcx:
    mov rcx, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_rdx:
    mov rdx, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_r8:
    mov r8, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_r9:
    mov r9, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_r10:
    mov r10, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_r11:
    mov r11, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_r12:
    mov r12, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_r13:
    mov r13, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_rsi:
    mov rsi, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_rdi:
    mov rdi, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_rsp:
    mov rsp, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_rbp:
    mov rbp, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_eax:
    mov eax, [r14]
    add r14, 4
    jmp ._loop

    .i_mov_ecx:
    mov ecx, [r14]
    add r14, 4
    jmp ._loop

    .i_mov_edx:
    mov edx, [r14]
    add r14, 4
    jmp ._loop

    .i_mov_esi:
    mov esi, [r14]
    add r14, 4
    jmp ._loop

    .i_mov_edi:
    mov edi, [r14]
    add r14, 4
    jmp ._loop

    .i_mov_esp:
    mov esp, [r14]
    add r14, 4
    jmp ._loop

    .i_mov_ebp:
    mov ebp, [r14]
    add r14, 4
    jmp ._loop

    .i_mov_ax:
    mov ax, [r14]
    add r14, 2
    jmp ._loop

    .i_mov_cx:
    mov cx, [r14]
    add r14, 2
    jmp ._loop

    .i_mov_dx:
    mov dx, [r14]
    add r14, 2
    jmp ._loop

    .i_mov_si:
    mov si, [r14]
    add r14, 2
    jmp ._loop

    .i_mov_di:
    mov di, [r14]
    add r14, 2
    jmp ._loop

    .i_mov_sp:
    mov sp, [r14]
    add r14, 2
    jmp ._loop

    .i_mov_bp:
    mov bp, [r14]
    add r14, 2
    jmp ._loop

    .i_mov_al:
    mov al, [r14]
    add r14, 1
    jmp ._loop

    .i_mov_cl:
    mov cl, [r14]
    add r14, 1
    jmp ._loop

    .i_mov_dl:
    mov dl, [r14]
    add r14, 1
    jmp ._loop

    .i_mov_xmm0:
    movss xmm0, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm1:
    movss xmm1, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm2:
    movss xmm2, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm3:
    movss xmm3, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm4:
    movss xmm4, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm5:
    movss xmm5, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm6:
    movss xmm6, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm7:
    movss xmm7, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm8:
    movss xmm8, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm9:
    movss xmm9, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm10:
    movss xmm10, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm11:
    movss xmm11, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm12:
    movss xmm12, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm13:
    movss xmm13, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm14:
    movss xmm14, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_xmm15:
    movss xmm15, [r14]
    add r14, 16
    jmp ._loop

    .i_add_rax:
    add rax, [r14]
    add r14, 8
    jmp ._loop

    .i_add_rcx:
    add rcx, [r14]
    add r14, 8
    jmp ._loop

    .i_add_rdx:
    add rdx, [r14]
    add r14, 8
    jmp ._loop

    .i_add_r8:
    add r8, [r14]
    add r14, 8
    jmp ._loop

    .i_add_r9:
    add r9, [r14]
    add r14, 8
    jmp ._loop

    .i_add_r10:
    add r10, [r14]
    add r14, 8
    jmp ._loop

    .i_add_r11:
    add r11, [r14]
    add r14, 8
    jmp ._loop

    .i_add_r12:
    add r12, [r14]
    add r14, 8
    jmp ._loop

    .i_add_r13:
    add r13, [r14]
    add r14, 8
    jmp ._loop

    .i_add_rsi:
    add rsi, [r14]
    add r14, 8
    jmp ._loop

    .i_add_rdi:
    add rdi, [r14]
    add r14, 8
    jmp ._loop

    .i_add_rsp:
    add rsp, [r14]
    add r14, 8
    jmp ._loop

    .i_add_rbp:
    add rbp, [r14]
    add r14, 8
    jmp ._loop

    .i_add_eax:
    add eax, [r14]
    add r14, 4
    jmp ._loop

    .i_add_ecx:
    add ecx, [r14]
    add r14, 4
    jmp ._loop

    .i_add_edx:
    add edx, [r14]
    add r14, 4
    jmp ._loop

    .i_add_esi:
    add esi, [r14]
    add r14, 4
    jmp ._loop

    .i_add_edi:
    add edi, [r14]
    add r14, 4
    jmp ._loop

    .i_add_esp:
    add esp, [r14]
    add r14, 4
    jmp ._loop

    .i_add_ebp:
    add ebp, [r14]
    add r14, 4
    jmp ._loop

    .i_add_ax:
    add ax, [r14]
    add r14, 2
    jmp ._loop

    .i_add_cx:
    add cx, [r14]
    add r14, 2
    jmp ._loop

    .i_add_dx:
    add dx, [r14]
    add r14, 2
    jmp ._loop

    .i_add_si:
    add si, [r14]
    add r14, 2
    jmp ._loop

    .i_add_di:
    add di, [r14]
    add r14, 2
    jmp ._loop

    .i_add_sp:
    add sp, [r14]
    add r14, 2
    jmp ._loop

    .i_add_bp:
    add bp, [r14]
    add r14, 2
    jmp ._loop

    .i_add_al:
    add al, [r14]
    add r14, 1
    jmp ._loop

    .i_add_cl:
    add cl, [r14]
    add r14, 1
    jmp ._loop

    .i_add_dl:
    add dl, [r14]
    add r14, 1
    jmp ._loop

    .i_sub_rax:
    sub rax, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_rcx:
    sub rcx, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_rdx:
    sub rdx, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_r8:
    sub r8, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_r9:
    sub r9, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_r10:
    sub r10, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_r11:
    sub r11, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_r12:
    sub r12, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_r13:
    sub r13, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_rsi:
    sub rsi, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_rdi:
    sub rdi, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_rsp:
    sub rsp, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_rbp:
    sub rbp, [r14]
    add r14, 8
    jmp ._loop

    .i_sub_eax:
    sub eax, [r14]
    add r14, 4
    jmp ._loop

    .i_sub_ecx:
    sub ecx, [r14]
    add r14, 4
    jmp ._loop

    .i_sub_edx:
    sub edx, [r14]
    add r14, 4
    jmp ._loop

    .i_sub_esi:
    sub esi, [r14]
    add r14, 4
    jmp ._loop

    .i_sub_edi:
    sub edi, [r14]
    add r14, 4
    jmp ._loop

    .i_sub_esp:
    sub esp, [r14]
    add r14, 4
    jmp ._loop

    .i_sub_ebp:
    sub ebp, [r14]
    add r14, 4
    jmp ._loop

    .i_sub_ax:
    sub ax, [r14]
    add r14, 2
    jmp ._loop

    .i_sub_cx:
    sub cx, [r14]
    add r14, 2
    jmp ._loop

    .i_sub_dx:
    sub dx, [r14]
    add r14, 2
    jmp ._loop

    .i_sub_si:
    sub si, [r14]
    add r14, 2
    jmp ._loop

    .i_sub_di:
    sub di, [r14]
    add r14, 2
    jmp ._loop

    .i_sub_sp:
    sub sp, [r14]
    add r14, 2
    jmp ._loop

    .i_sub_bp:
    sub bp, [r14]
    add r14, 2
    jmp ._loop

    .i_sub_al:
    sub al, [r14]
    add r14, 1
    jmp ._loop

    .i_sub_cl:
    sub cl, [r14]
    add r14, 1
    jmp ._loop

    .i_sub_dl:
    sub dl, [r14]
    add r14, 1
    jmp ._loop

    .i_imul_rax:
    imul rax, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_rcx:
    imul rcx, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_rdx:
    imul rdx, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_r8:
    imul r8, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_r9:
    imul r9, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_r10:
    imul r10, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_r11:
    imul r11, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_r12:
    imul r12, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_r13:
    imul r13, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_rsi:
    imul rsi, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_rdi:
    imul rdi, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_rsp:
    imul rsp, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_rbp:
    imul rbp, [r14]
    add r14, 8
    jmp ._loop

    .i_imul_eax:
    imul eax, [r14]
    add r14, 4
    jmp ._loop

    .i_imul_ecx:
    imul ecx, [r14]
    add r14, 4
    jmp ._loop

    .i_imul_edx:
    imul edx, [r14]
    add r14, 4
    jmp ._loop

    .i_imul_esi:
    imul esi, [r14]
    add r14, 4
    jmp ._loop

    .i_imul_edi:
    imul edi, [r14]
    add r14, 4
    jmp ._loop

    .i_imul_esp:
    imul esp, [r14]
    add r14, 4
    jmp ._loop

    .i_imul_ebp:
    imul ebp, [r14]
    add r14, 4
    jmp ._loop

    .i_imul_ax:
    imul ax, [r14]
    add r14, 2
    jmp ._loop

    .i_imul_cx:
    imul cx, [r14]
    add r14, 2
    jmp ._loop

    .i_imul_dx:
    imul dx, [r14]
    add r14, 2
    jmp ._loop

    .i_imul_si:
    imul si, [r14]
    add r14, 2
    jmp ._loop

    .i_imul_di:
    imul di, [r14]
    add r14, 2
    jmp ._loop

    .i_imul_sp:
    imul sp, [r14]
    add r14, 2
    jmp ._loop

    .i_imul_bp:
    imul bp, [r14]
    add r14, 2
    jmp ._loop

    .i_and_rax:
    and rax, [r14]
    add r14, 8
    jmp ._loop

    .i_and_rcx:
    and rcx, [r14]
    add r14, 8
    jmp ._loop

    .i_and_rdx:
    and rdx, [r14]
    add r14, 8
    jmp ._loop

    .i_and_r8:
    and r8, [r14]
    add r14, 8
    jmp ._loop

    .i_and_r9:
    and r9, [r14]
    add r14, 8
    jmp ._loop

    .i_and_r10:
    and r10, [r14]
    add r14, 8
    jmp ._loop

    .i_and_r11:
    and r11, [r14]
    add r14, 8
    jmp ._loop

    .i_and_r12:
    and r12, [r14]
    add r14, 8
    jmp ._loop

    .i_and_r13:
    and r13, [r14]
    add r14, 8
    jmp ._loop

    .i_and_rsi:
    and rsi, [r14]
    add r14, 8
    jmp ._loop

    .i_and_rdi:
    and rdi, [r14]
    add r14, 8
    jmp ._loop

    .i_and_rsp:
    and rsp, [r14]
    add r14, 8
    jmp ._loop

    .i_and_rbp:
    and rbp, [r14]
    add r14, 8
    jmp ._loop

    .i_and_eax:
    and eax, [r14]
    add r14, 4
    jmp ._loop

    .i_and_ecx:
    and ecx, [r14]
    add r14, 4
    jmp ._loop

    .i_and_edx:
    and edx, [r14]
    add r14, 4
    jmp ._loop

    .i_and_esi:
    and esi, [r14]
    add r14, 4
    jmp ._loop

    .i_and_edi:
    and edi, [r14]
    add r14, 4
    jmp ._loop

    .i_and_esp:
    and esp, [r14]
    add r14, 4
    jmp ._loop

    .i_and_ebp:
    and ebp, [r14]
    add r14, 4
    jmp ._loop

    .i_and_ax:
    and ax, [r14]
    add r14, 2
    jmp ._loop

    .i_and_cx:
    and cx, [r14]
    add r14, 2
    jmp ._loop

    .i_and_dx:
    and dx, [r14]
    add r14, 2
    jmp ._loop

    .i_and_si:
    and si, [r14]
    add r14, 2
    jmp ._loop

    .i_and_di:
    and di, [r14]
    add r14, 2
    jmp ._loop

    .i_and_sp:
    and sp, [r14]
    add r14, 2
    jmp ._loop

    .i_and_bp:
    and bp, [r14]
    add r14, 2
    jmp ._loop

    .i_and_al:
    and al, [r14]
    add r14, 1
    jmp ._loop

    .i_and_cl:
    and cl, [r14]
    add r14, 1
    jmp ._loop

    .i_and_dl:
    and dl, [r14]
    add r14, 1
    jmp ._loop

    .i_and_xmm0:
    pand xmm0, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm1:
    pand xmm1, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm2:
    pand xmm2, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm3:
    pand xmm3, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm4:
    pand xmm4, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm5:
    pand xmm5, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm6:
    pand xmm6, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm7:
    pand xmm7, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm8:
    pand xmm8, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm9:
    pand xmm9, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm10:
    pand xmm10, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm11:
    pand xmm11, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm12:
    pand xmm12, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm13:
    pand xmm13, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm14:
    pand xmm14, [r14]
    add r14, 16
    jmp ._loop

    .i_and_xmm15:
    pand xmm15, [r14]
    add r14, 16
    jmp ._loop

    .i_or_rax:
    or rax, [r14]
    add r14, 8
    jmp ._loop

    .i_or_rcx:
    or rcx, [r14]
    add r14, 8
    jmp ._loop

    .i_or_rdx:
    or rdx, [r14]
    add r14, 8
    jmp ._loop

    .i_or_r8:
    or r8, [r14]
    add r14, 8
    jmp ._loop

    .i_or_r9:
    or r9, [r14]
    add r14, 8
    jmp ._loop

    .i_or_r10:
    or r10, [r14]
    add r14, 8
    jmp ._loop

    .i_or_r11:
    or r11, [r14]
    add r14, 8
    jmp ._loop

    .i_or_r12:
    or r12, [r14]
    add r14, 8
    jmp ._loop

    .i_or_r13:
    or r13, [r14]
    add r14, 8
    jmp ._loop

    .i_or_rsi:
    or rsi, [r14]
    add r14, 8
    jmp ._loop

    .i_or_rdi:
    or rdi, [r14]
    add r14, 8
    jmp ._loop

    .i_or_rsp:
    or rsp, [r14]
    add r14, 8
    jmp ._loop

    .i_or_rbp:
    or rbp, [r14]
    add r14, 8
    jmp ._loop

    .i_or_eax:
    or eax, [r14]
    add r14, 4
    jmp ._loop

    .i_or_ecx:
    or ecx, [r14]
    add r14, 4
    jmp ._loop

    .i_or_edx:
    or edx, [r14]
    add r14, 4
    jmp ._loop

    .i_or_esi:
    or esi, [r14]
    add r14, 4
    jmp ._loop

    .i_or_edi:
    or edi, [r14]
    add r14, 4
    jmp ._loop

    .i_or_esp:
    or esp, [r14]
    add r14, 4
    jmp ._loop

    .i_or_ebp:
    or ebp, [r14]
    add r14, 4
    jmp ._loop

    .i_or_ax:
    or ax, [r14]
    add r14, 2
    jmp ._loop

    .i_or_cx:
    or cx, [r14]
    add r14, 2
    jmp ._loop

    .i_or_dx:
    or dx, [r14]
    add r14, 2
    jmp ._loop

    .i_or_si:
    or si, [r14]
    add r14, 2
    jmp ._loop

    .i_or_di:
    or di, [r14]
    add r14, 2
    jmp ._loop

    .i_or_sp:
    or sp, [r14]
    add r14, 2
    jmp ._loop

    .i_or_bp:
    or bp, [r14]
    add r14, 2
    jmp ._loop

    .i_or_al:
    or al, [r14]
    add r14, 1
    jmp ._loop

    .i_or_cl:
    or cl, [r14]
    add r14, 1
    jmp ._loop

    .i_or_dl:
    or dl, [r14]
    add r14, 1
    jmp ._loop

    .i_or_xmm0:
    por xmm0, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm1:
    por xmm1, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm2:
    por xmm2, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm3:
    por xmm3, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm4:
    por xmm4, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm5:
    por xmm5, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm6:
    por xmm6, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm7:
    por xmm7, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm8:
    por xmm8, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm9:
    por xmm9, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm10:
    por xmm10, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm11:
    por xmm11, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm12:
    por xmm12, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm13:
    por xmm13, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm14:
    por xmm14, [r14]
    add r14, 16
    jmp ._loop

    .i_or_xmm15:
    por xmm15, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_rax:
    xor rax, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_rcx:
    xor rcx, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_rdx:
    xor rdx, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_r8:
    xor r8, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_r9:
    xor r9, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_r10:
    xor r10, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_r11:
    xor r11, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_r12:
    xor r12, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_r13:
    xor r13, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_rsi:
    xor rsi, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_rdi:
    xor rdi, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_rsp:
    xor rsp, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_rbp:
    xor rbp, [r14]
    add r14, 8
    jmp ._loop

    .i_xor_eax:
    xor eax, [r14]
    add r14, 4
    jmp ._loop

    .i_xor_ecx:
    xor ecx, [r14]
    add r14, 4
    jmp ._loop

    .i_xor_edx:
    xor edx, [r14]
    add r14, 4
    jmp ._loop

    .i_xor_esi:
    xor esi, [r14]
    add r14, 4
    jmp ._loop

    .i_xor_edi:
    xor edi, [r14]
    add r14, 4
    jmp ._loop

    .i_xor_esp:
    xor esp, [r14]
    add r14, 4
    jmp ._loop

    .i_xor_ebp:
    xor ebp, [r14]
    add r14, 4
    jmp ._loop

    .i_xor_ax:
    xor ax, [r14]
    add r14, 2
    jmp ._loop

    .i_xor_cx:
    xor cx, [r14]
    add r14, 2
    jmp ._loop

    .i_xor_dx:
    xor dx, [r14]
    add r14, 2
    jmp ._loop

    .i_xor_si:
    xor si, [r14]
    add r14, 2
    jmp ._loop

    .i_xor_di:
    xor di, [r14]
    add r14, 2
    jmp ._loop

    .i_xor_sp:
    xor sp, [r14]
    add r14, 2
    jmp ._loop

    .i_xor_bp:
    xor bp, [r14]
    add r14, 2
    jmp ._loop

    .i_xor_al:
    xor al, [r14]
    add r14, 1
    jmp ._loop

    .i_xor_cl:
    xor cl, [r14]
    add r14, 1
    jmp ._loop

    .i_xor_dl:
    xor dl, [r14]
    add r14, 1
    jmp ._loop

    .i_xor_xmm0:
    pxor xmm0, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm1:
    pxor xmm1, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm2:
    pxor xmm2, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm3:
    pxor xmm3, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm4:
    pxor xmm4, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm5:
    pxor xmm5, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm6:
    pxor xmm6, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm7:
    pxor xmm7, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm8:
    pxor xmm8, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm9:
    pxor xmm9, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm10:
    pxor xmm10, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm11:
    pxor xmm11, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm12:
    pxor xmm12, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm13:
    pxor xmm13, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm14:
    pxor xmm14, [r14]
    add r14, 16
    jmp ._loop

    .i_xor_xmm15:
    pxor xmm15, [r14]
    add r14, 16
    jmp ._loop

    .i_mov_rax_rax:
    mov rax, rax
    jmp ._loop

    .i_mov_rax_rcx:
    mov rax, rcx
    jmp ._loop

    .i_mov_rax_rdx:
    mov rax, rdx
    jmp ._loop

    .i_mov_rax_r8:
    mov rax, r8
    jmp ._loop

    .i_mov_rax_r9:
    mov rax, r9
    jmp ._loop

    .i_mov_rax_r10:
    mov rax, r10
    jmp ._loop

    .i_mov_rax_r11:
    mov rax, r11
    jmp ._loop

    .i_mov_rax_r12:
    mov rax, r12
    jmp ._loop

    .i_mov_rax_r13:
    mov rax, r13
    jmp ._loop

    .i_mov_rax_rsi:
    mov rax, rsi
    jmp ._loop

    .i_mov_rax_rdi:
    mov rax, rdi
    jmp ._loop

    .i_mov_rax_rsp:
    mov rax, rsp
    jmp ._loop

    .i_mov_rax_rbp:
    mov rax, rbp
    jmp ._loop

    .i_mov_rcx_rax:
    mov rcx, rax
    jmp ._loop

    .i_mov_rcx_rcx:
    mov rcx, rcx
    jmp ._loop

    .i_mov_rcx_rdx:
    mov rcx, rdx
    jmp ._loop

    .i_mov_rcx_r8:
    mov rcx, r8
    jmp ._loop

    .i_mov_rcx_r9:
    mov rcx, r9
    jmp ._loop

    .i_mov_rcx_r10:
    mov rcx, r10
    jmp ._loop

    .i_mov_rcx_r11:
    mov rcx, r11
    jmp ._loop

    .i_mov_rcx_r12:
    mov rcx, r12
    jmp ._loop

    .i_mov_rcx_r13:
    mov rcx, r13
    jmp ._loop

    .i_mov_rcx_rsi:
    mov rcx, rsi
    jmp ._loop

    .i_mov_rcx_rdi:
    mov rcx, rdi
    jmp ._loop

    .i_mov_rcx_rsp:
    mov rcx, rsp
    jmp ._loop

    .i_mov_rcx_rbp:
    mov rcx, rbp
    jmp ._loop

    .i_mov_rdx_rax:
    mov rdx, rax
    jmp ._loop

    .i_mov_rdx_rcx:
    mov rdx, rcx
    jmp ._loop

    .i_mov_rdx_rdx:
    mov rdx, rdx
    jmp ._loop

    .i_mov_rdx_r8:
    mov rdx, r8
    jmp ._loop

    .i_mov_rdx_r9:
    mov rdx, r9
    jmp ._loop

    .i_mov_rdx_r10:
    mov rdx, r10
    jmp ._loop

    .i_mov_rdx_r11:
    mov rdx, r11
    jmp ._loop

    .i_mov_rdx_r12:
    mov rdx, r12
    jmp ._loop

    .i_mov_rdx_r13:
    mov rdx, r13
    jmp ._loop

    .i_mov_rdx_rsi:
    mov rdx, rsi
    jmp ._loop

    .i_mov_rdx_rdi:
    mov rdx, rdi
    jmp ._loop

    .i_mov_rdx_rsp:
    mov rdx, rsp
    jmp ._loop

    .i_mov_rdx_rbp:
    mov rdx, rbp
    jmp ._loop

    .i_mov_r8_rax:
    mov r8, rax
    jmp ._loop

    .i_mov_r8_rcx:
    mov r8, rcx
    jmp ._loop

    .i_mov_r8_rdx:
    mov r8, rdx
    jmp ._loop

    .i_mov_r8_r8:
    mov r8, r8
    jmp ._loop

    .i_mov_r8_r9:
    mov r8, r9
    jmp ._loop

    .i_mov_r8_r10:
    mov r8, r10
    jmp ._loop

    .i_mov_r8_r11:
    mov r8, r11
    jmp ._loop

    .i_mov_r8_r12:
    mov r8, r12
    jmp ._loop

    .i_mov_r8_r13:
    mov r8, r13
    jmp ._loop

    .i_mov_r8_rsi:
    mov r8, rsi
    jmp ._loop

    .i_mov_r8_rdi:
    mov r8, rdi
    jmp ._loop

    .i_mov_r8_rsp:
    mov r8, rsp
    jmp ._loop

    .i_mov_r8_rbp:
    mov r8, rbp
    jmp ._loop

    .i_mov_r9_rax:
    mov r9, rax
    jmp ._loop

    .i_mov_r9_rcx:
    mov r9, rcx
    jmp ._loop

    .i_mov_r9_rdx:
    mov r9, rdx
    jmp ._loop

    .i_mov_r9_r8:
    mov r9, r8
    jmp ._loop

    .i_mov_r9_r9:
    mov r9, r9
    jmp ._loop

    .i_mov_r9_r10:
    mov r9, r10
    jmp ._loop

    .i_mov_r9_r11:
    mov r9, r11
    jmp ._loop

    .i_mov_r9_r12:
    mov r9, r12
    jmp ._loop

    .i_mov_r9_r13:
    mov r9, r13
    jmp ._loop

    .i_mov_r9_rsi:
    mov r9, rsi
    jmp ._loop

    .i_mov_r9_rdi:
    mov r9, rdi
    jmp ._loop

    .i_mov_r9_rsp:
    mov r9, rsp
    jmp ._loop

    .i_mov_r9_rbp:
    mov r9, rbp
    jmp ._loop

    .i_mov_r10_rax:
    mov r10, rax
    jmp ._loop

    .i_mov_r10_rcx:
    mov r10, rcx
    jmp ._loop

    .i_mov_r10_rdx:
    mov r10, rdx
    jmp ._loop

    .i_mov_r10_r8:
    mov r10, r8
    jmp ._loop

    .i_mov_r10_r9:
    mov r10, r9
    jmp ._loop

    .i_mov_r10_r10:
    mov r10, r10
    jmp ._loop

    .i_mov_r10_r11:
    mov r10, r11
    jmp ._loop

    .i_mov_r10_r12:
    mov r10, r12
    jmp ._loop

    .i_mov_r10_r13:
    mov r10, r13
    jmp ._loop

    .i_mov_r10_rsi:
    mov r10, rsi
    jmp ._loop

    .i_mov_r10_rdi:
    mov r10, rdi
    jmp ._loop

    .i_mov_r10_rsp:
    mov r10, rsp
    jmp ._loop

    .i_mov_r10_rbp:
    mov r10, rbp
    jmp ._loop

    .i_mov_r11_rax:
    mov r11, rax
    jmp ._loop

    .i_mov_r11_rcx:
    mov r11, rcx
    jmp ._loop

    .i_mov_r11_rdx:
    mov r11, rdx
    jmp ._loop

    .i_mov_r11_r8:
    mov r11, r8
    jmp ._loop

    .i_mov_r11_r9:
    mov r11, r9
    jmp ._loop

    .i_mov_r11_r10:
    mov r11, r10
    jmp ._loop

    .i_mov_r11_r11:
    mov r11, r11
    jmp ._loop

    .i_mov_r11_r12:
    mov r11, r12
    jmp ._loop

    .i_mov_r11_r13:
    mov r11, r13
    jmp ._loop

    .i_mov_r11_rsi:
    mov r11, rsi
    jmp ._loop

    .i_mov_r11_rdi:
    mov r11, rdi
    jmp ._loop

    .i_mov_r11_rsp:
    mov r11, rsp
    jmp ._loop

    .i_mov_r11_rbp:
    mov r11, rbp
    jmp ._loop

    .i_mov_r12_rax:
    mov r12, rax
    jmp ._loop

    .i_mov_r12_rcx:
    mov r12, rcx
    jmp ._loop

    .i_mov_r12_rdx:
    mov r12, rdx
    jmp ._loop

    .i_mov_r12_r8:
    mov r12, r8
    jmp ._loop

    .i_mov_r12_r9:
    mov r12, r9
    jmp ._loop

    .i_mov_r12_r10:
    mov r12, r10
    jmp ._loop

    .i_mov_r12_r11:
    mov r12, r11
    jmp ._loop

    .i_mov_r12_r12:
    mov r12, r12
    jmp ._loop

    .i_mov_r12_r13:
    mov r12, r13
    jmp ._loop

    .i_mov_r12_rsi:
    mov r12, rsi
    jmp ._loop

    .i_mov_r12_rdi:
    mov r12, rdi
    jmp ._loop

    .i_mov_r12_rsp:
    mov r12, rsp
    jmp ._loop

    .i_mov_r12_rbp:
    mov r12, rbp
    jmp ._loop

    .i_mov_r13_rax:
    mov r13, rax
    jmp ._loop

    .i_mov_r13_rcx:
    mov r13, rcx
    jmp ._loop

    .i_mov_r13_rdx:
    mov r13, rdx
    jmp ._loop

    .i_mov_r13_r8:
    mov r13, r8
    jmp ._loop

    .i_mov_r13_r9:
    mov r13, r9
    jmp ._loop

    .i_mov_r13_r10:
    mov r13, r10
    jmp ._loop

    .i_mov_r13_r11:
    mov r13, r11
    jmp ._loop

    .i_mov_r13_r12:
    mov r13, r12
    jmp ._loop

    .i_mov_r13_r13:
    mov r13, r13
    jmp ._loop

    .i_mov_r13_rsi:
    mov r13, rsi
    jmp ._loop

    .i_mov_r13_rdi:
    mov r13, rdi
    jmp ._loop

    .i_mov_r13_rsp:
    mov r13, rsp
    jmp ._loop

    .i_mov_r13_rbp:
    mov r13, rbp
    jmp ._loop

    .i_mov_rsi_rax:
    mov rsi, rax
    jmp ._loop

    .i_mov_rsi_rcx:
    mov rsi, rcx
    jmp ._loop

    .i_mov_rsi_rdx:
    mov rsi, rdx
    jmp ._loop

    .i_mov_rsi_r8:
    mov rsi, r8
    jmp ._loop

    .i_mov_rsi_r9:
    mov rsi, r9
    jmp ._loop

    .i_mov_rsi_r10:
    mov rsi, r10
    jmp ._loop

    .i_mov_rsi_r11:
    mov rsi, r11
    jmp ._loop

    .i_mov_rsi_r12:
    mov rsi, r12
    jmp ._loop

    .i_mov_rsi_r13:
    mov rsi, r13
    jmp ._loop

    .i_mov_rsi_rsi:
    mov rsi, rsi
    jmp ._loop

    .i_mov_rsi_rdi:
    mov rsi, rdi
    jmp ._loop

    .i_mov_rsi_rsp:
    mov rsi, rsp
    jmp ._loop

    .i_mov_rsi_rbp:
    mov rsi, rbp
    jmp ._loop

    .i_mov_rdi_rax:
    mov rdi, rax
    jmp ._loop

    .i_mov_rdi_rcx:
    mov rdi, rcx
    jmp ._loop

    .i_mov_rdi_rdx:
    mov rdi, rdx
    jmp ._loop

    .i_mov_rdi_r8:
    mov rdi, r8
    jmp ._loop

    .i_mov_rdi_r9:
    mov rdi, r9
    jmp ._loop

    .i_mov_rdi_r10:
    mov rdi, r10
    jmp ._loop

    .i_mov_rdi_r11:
    mov rdi, r11
    jmp ._loop

    .i_mov_rdi_r12:
    mov rdi, r12
    jmp ._loop

    .i_mov_rdi_r13:
    mov rdi, r13
    jmp ._loop

    .i_mov_rdi_rsi:
    mov rdi, rsi
    jmp ._loop

    .i_mov_rdi_rdi:
    mov rdi, rdi
    jmp ._loop

    .i_mov_rdi_rsp:
    mov rdi, rsp
    jmp ._loop

    .i_mov_rdi_rbp:
    mov rdi, rbp
    jmp ._loop

    .i_mov_rsp_rax:
    mov rsp, rax
    jmp ._loop

    .i_mov_rsp_rcx:
    mov rsp, rcx
    jmp ._loop

    .i_mov_rsp_rdx:
    mov rsp, rdx
    jmp ._loop

    .i_mov_rsp_r8:
    mov rsp, r8
    jmp ._loop

    .i_mov_rsp_r9:
    mov rsp, r9
    jmp ._loop

    .i_mov_rsp_r10:
    mov rsp, r10
    jmp ._loop

    .i_mov_rsp_r11:
    mov rsp, r11
    jmp ._loop

    .i_mov_rsp_r12:
    mov rsp, r12
    jmp ._loop

    .i_mov_rsp_r13:
    mov rsp, r13
    jmp ._loop

    .i_mov_rsp_rsi:
    mov rsp, rsi
    jmp ._loop

    .i_mov_rsp_rdi:
    mov rsp, rdi
    jmp ._loop

    .i_mov_rsp_rsp:
    mov rsp, rsp
    jmp ._loop

    .i_mov_rsp_rbp:
    mov rsp, rbp
    jmp ._loop

    .i_mov_rbp_rax:
    mov rbp, rax
    jmp ._loop

    .i_mov_rbp_rcx:
    mov rbp, rcx
    jmp ._loop

    .i_mov_rbp_rdx:
    mov rbp, rdx
    jmp ._loop

    .i_mov_rbp_r8:
    mov rbp, r8
    jmp ._loop

    .i_mov_rbp_r9:
    mov rbp, r9
    jmp ._loop

    .i_mov_rbp_r10:
    mov rbp, r10
    jmp ._loop

    .i_mov_rbp_r11:
    mov rbp, r11
    jmp ._loop

    .i_mov_rbp_r12:
    mov rbp, r12
    jmp ._loop

    .i_mov_rbp_r13:
    mov rbp, r13
    jmp ._loop

    .i_mov_rbp_rsi:
    mov rbp, rsi
    jmp ._loop

    .i_mov_rbp_rdi:
    mov rbp, rdi
    jmp ._loop

    .i_mov_rbp_rsp:
    mov rbp, rsp
    jmp ._loop

    .i_mov_rbp_rbp:
    mov rbp, rbp
    jmp ._loop

    .i_mov_eax_eax:
    mov eax, eax
    jmp ._loop

    .i_mov_eax_ecx:
    mov eax, ecx
    jmp ._loop

    .i_mov_eax_edx:
    mov eax, edx
    jmp ._loop

    .i_mov_eax_esi:
    mov eax, esi
    jmp ._loop

    .i_mov_eax_edi:
    mov eax, edi
    jmp ._loop

    .i_mov_eax_esp:
    mov eax, esp
    jmp ._loop

    .i_mov_eax_ebp:
    mov eax, ebp
    jmp ._loop

    .i_mov_ecx_eax:
    mov ecx, eax
    jmp ._loop

    .i_mov_ecx_ecx:
    mov ecx, ecx
    jmp ._loop

    .i_mov_ecx_edx:
    mov ecx, edx
    jmp ._loop

    .i_mov_ecx_esi:
    mov ecx, esi
    jmp ._loop

    .i_mov_ecx_edi:
    mov ecx, edi
    jmp ._loop

    .i_mov_ecx_esp:
    mov ecx, esp
    jmp ._loop

    .i_mov_ecx_ebp:
    mov ecx, ebp
    jmp ._loop

    .i_mov_edx_eax:
    mov edx, eax
    jmp ._loop

    .i_mov_edx_ecx:
    mov edx, ecx
    jmp ._loop

    .i_mov_edx_edx:
    mov edx, edx
    jmp ._loop

    .i_mov_edx_esi:
    mov edx, esi
    jmp ._loop

    .i_mov_edx_edi:
    mov edx, edi
    jmp ._loop

    .i_mov_edx_esp:
    mov edx, esp
    jmp ._loop

    .i_mov_edx_ebp:
    mov edx, ebp
    jmp ._loop

    .i_mov_esi_eax:
    mov esi, eax
    jmp ._loop

    .i_mov_esi_ecx:
    mov esi, ecx
    jmp ._loop

    .i_mov_esi_edx:
    mov esi, edx
    jmp ._loop

    .i_mov_esi_esi:
    mov esi, esi
    jmp ._loop

    .i_mov_esi_edi:
    mov esi, edi
    jmp ._loop

    .i_mov_esi_esp:
    mov esi, esp
    jmp ._loop

    .i_mov_esi_ebp:
    mov esi, ebp
    jmp ._loop

    .i_mov_edi_eax:
    mov edi, eax
    jmp ._loop

    .i_mov_edi_ecx:
    mov edi, ecx
    jmp ._loop

    .i_mov_edi_edx:
    mov edi, edx
    jmp ._loop

    .i_mov_edi_esi:
    mov edi, esi
    jmp ._loop

    .i_mov_edi_edi:
    mov edi, edi
    jmp ._loop

    .i_mov_edi_esp:
    mov edi, esp
    jmp ._loop

    .i_mov_edi_ebp:
    mov edi, ebp
    jmp ._loop

    .i_mov_esp_eax:
    mov esp, eax
    jmp ._loop

    .i_mov_esp_ecx:
    mov esp, ecx
    jmp ._loop

    .i_mov_esp_edx:
    mov esp, edx
    jmp ._loop

    .i_mov_esp_esi:
    mov esp, esi
    jmp ._loop

    .i_mov_esp_edi:
    mov esp, edi
    jmp ._loop

    .i_mov_esp_esp:
    mov esp, esp
    jmp ._loop

    .i_mov_esp_ebp:
    mov esp, ebp
    jmp ._loop

    .i_mov_ebp_eax:
    mov ebp, eax
    jmp ._loop

    .i_mov_ebp_ecx:
    mov ebp, ecx
    jmp ._loop

    .i_mov_ebp_edx:
    mov ebp, edx
    jmp ._loop

    .i_mov_ebp_esi:
    mov ebp, esi
    jmp ._loop

    .i_mov_ebp_edi:
    mov ebp, edi
    jmp ._loop

    .i_mov_ebp_esp:
    mov ebp, esp
    jmp ._loop

    .i_mov_ebp_ebp:
    mov ebp, ebp
    jmp ._loop

    .i_mov_ax_ax:
    mov ax, ax
    jmp ._loop

    .i_mov_ax_cx:
    mov ax, cx
    jmp ._loop

    .i_mov_ax_dx:
    mov ax, dx
    jmp ._loop

    .i_mov_ax_si:
    mov ax, si
    jmp ._loop

    .i_mov_ax_di:
    mov ax, di
    jmp ._loop

    .i_mov_ax_sp:
    mov ax, sp
    jmp ._loop

    .i_mov_ax_bp:
    mov ax, bp
    jmp ._loop

    .i_mov_cx_ax:
    mov cx, ax
    jmp ._loop

    .i_mov_cx_cx:
    mov cx, cx
    jmp ._loop

    .i_mov_cx_dx:
    mov cx, dx
    jmp ._loop

    .i_mov_cx_si:
    mov cx, si
    jmp ._loop

    .i_mov_cx_di:
    mov cx, di
    jmp ._loop

    .i_mov_cx_sp:
    mov cx, sp
    jmp ._loop

    .i_mov_cx_bp:
    mov cx, bp
    jmp ._loop

    .i_mov_dx_ax:
    mov dx, ax
    jmp ._loop

    .i_mov_dx_cx:
    mov dx, cx
    jmp ._loop

    .i_mov_dx_dx:
    mov dx, dx
    jmp ._loop

    .i_mov_dx_si:
    mov dx, si
    jmp ._loop

    .i_mov_dx_di:
    mov dx, di
    jmp ._loop

    .i_mov_dx_sp:
    mov dx, sp
    jmp ._loop

    .i_mov_dx_bp:
    mov dx, bp
    jmp ._loop

    .i_mov_si_ax:
    mov si, ax
    jmp ._loop

    .i_mov_si_cx:
    mov si, cx
    jmp ._loop

    .i_mov_si_dx:
    mov si, dx
    jmp ._loop

    .i_mov_si_si:
    mov si, si
    jmp ._loop

    .i_mov_si_di:
    mov si, di
    jmp ._loop

    .i_mov_si_sp:
    mov si, sp
    jmp ._loop

    .i_mov_si_bp:
    mov si, bp
    jmp ._loop

    .i_mov_di_ax:
    mov di, ax
    jmp ._loop

    .i_mov_di_cx:
    mov di, cx
    jmp ._loop

    .i_mov_di_dx:
    mov di, dx
    jmp ._loop

    .i_mov_di_si:
    mov di, si
    jmp ._loop

    .i_mov_di_di:
    mov di, di
    jmp ._loop

    .i_mov_di_sp:
    mov di, sp
    jmp ._loop

    .i_mov_di_bp:
    mov di, bp
    jmp ._loop

    .i_mov_sp_ax:
    mov sp, ax
    jmp ._loop

    .i_mov_sp_cx:
    mov sp, cx
    jmp ._loop

    .i_mov_sp_dx:
    mov sp, dx
    jmp ._loop

    .i_mov_sp_si:
    mov sp, si
    jmp ._loop

    .i_mov_sp_di:
    mov sp, di
    jmp ._loop

    .i_mov_sp_sp:
    mov sp, sp
    jmp ._loop

    .i_mov_sp_bp:
    mov sp, bp
    jmp ._loop

    .i_mov_bp_ax:
    mov bp, ax
    jmp ._loop

    .i_mov_bp_cx:
    mov bp, cx
    jmp ._loop

    .i_mov_bp_dx:
    mov bp, dx
    jmp ._loop

    .i_mov_bp_si:
    mov bp, si
    jmp ._loop

    .i_mov_bp_di:
    mov bp, di
    jmp ._loop

    .i_mov_bp_sp:
    mov bp, sp
    jmp ._loop

    .i_mov_bp_bp:
    mov bp, bp
    jmp ._loop

    .i_mov_al_al:
    mov al, al
    jmp ._loop

    .i_mov_al_cl:
    mov al, cl
    jmp ._loop

    .i_mov_al_dl:
    mov al, dl
    jmp ._loop

    .i_mov_cl_al:
    mov cl, al
    jmp ._loop

    .i_mov_cl_cl:
    mov cl, cl
    jmp ._loop

    .i_mov_cl_dl:
    mov cl, dl
    jmp ._loop

    .i_mov_dl_al:
    mov dl, al
    jmp ._loop

    .i_mov_dl_cl:
    mov dl, cl
    jmp ._loop

    .i_mov_dl_dl:
    mov dl, dl
    jmp ._loop

    .i_mov_xmm0_xmm0:
    movss xmm0, xmm0
    jmp ._loop

    .i_mov_xmm0_xmm1:
    movss xmm0, xmm1
    jmp ._loop

    .i_mov_xmm0_xmm2:
    movss xmm0, xmm2
    jmp ._loop

    .i_mov_xmm0_xmm3:
    movss xmm0, xmm3
    jmp ._loop

    .i_mov_xmm0_xmm4:
    movss xmm0, xmm4
    jmp ._loop

    .i_mov_xmm0_xmm5:
    movss xmm0, xmm5
    jmp ._loop

    .i_mov_xmm0_xmm6:
    movss xmm0, xmm6
    jmp ._loop

    .i_mov_xmm0_xmm7:
    movss xmm0, xmm7
    jmp ._loop

    .i_mov_xmm0_xmm8:
    movss xmm0, xmm8
    jmp ._loop

    .i_mov_xmm0_xmm9:
    movss xmm0, xmm9
    jmp ._loop

    .i_mov_xmm0_xmm10:
    movss xmm0, xmm10
    jmp ._loop

    .i_mov_xmm0_xmm11:
    movss xmm0, xmm11
    jmp ._loop

    .i_mov_xmm0_xmm12:
    movss xmm0, xmm12
    jmp ._loop

    .i_mov_xmm0_xmm13:
    movss xmm0, xmm13
    jmp ._loop

    .i_mov_xmm0_xmm14:
    movss xmm0, xmm14
    jmp ._loop

    .i_mov_xmm0_xmm15:
    movss xmm0, xmm15
    jmp ._loop

    .i_mov_xmm1_xmm0:
    movss xmm1, xmm0
    jmp ._loop

    .i_mov_xmm1_xmm1:
    movss xmm1, xmm1
    jmp ._loop

    .i_mov_xmm1_xmm2:
    movss xmm1, xmm2
    jmp ._loop

    .i_mov_xmm1_xmm3:
    movss xmm1, xmm3
    jmp ._loop

    .i_mov_xmm1_xmm4:
    movss xmm1, xmm4
    jmp ._loop

    .i_mov_xmm1_xmm5:
    movss xmm1, xmm5
    jmp ._loop

    .i_mov_xmm1_xmm6:
    movss xmm1, xmm6
    jmp ._loop

    .i_mov_xmm1_xmm7:
    movss xmm1, xmm7
    jmp ._loop

    .i_mov_xmm1_xmm8:
    movss xmm1, xmm8
    jmp ._loop

    .i_mov_xmm1_xmm9:
    movss xmm1, xmm9
    jmp ._loop

    .i_mov_xmm1_xmm10:
    movss xmm1, xmm10
    jmp ._loop

    .i_mov_xmm1_xmm11:
    movss xmm1, xmm11
    jmp ._loop

    .i_mov_xmm1_xmm12:
    movss xmm1, xmm12
    jmp ._loop

    .i_mov_xmm1_xmm13:
    movss xmm1, xmm13
    jmp ._loop

    .i_mov_xmm1_xmm14:
    movss xmm1, xmm14
    jmp ._loop

    .i_mov_xmm1_xmm15:
    movss xmm1, xmm15
    jmp ._loop

    .i_mov_xmm2_xmm0:
    movss xmm2, xmm0
    jmp ._loop

    .i_mov_xmm2_xmm1:
    movss xmm2, xmm1
    jmp ._loop

    .i_mov_xmm2_xmm2:
    movss xmm2, xmm2
    jmp ._loop

    .i_mov_xmm2_xmm3:
    movss xmm2, xmm3
    jmp ._loop

    .i_mov_xmm2_xmm4:
    movss xmm2, xmm4
    jmp ._loop

    .i_mov_xmm2_xmm5:
    movss xmm2, xmm5
    jmp ._loop

    .i_mov_xmm2_xmm6:
    movss xmm2, xmm6
    jmp ._loop

    .i_mov_xmm2_xmm7:
    movss xmm2, xmm7
    jmp ._loop

    .i_mov_xmm2_xmm8:
    movss xmm2, xmm8
    jmp ._loop

    .i_mov_xmm2_xmm9:
    movss xmm2, xmm9
    jmp ._loop

    .i_mov_xmm2_xmm10:
    movss xmm2, xmm10
    jmp ._loop

    .i_mov_xmm2_xmm11:
    movss xmm2, xmm11
    jmp ._loop

    .i_mov_xmm2_xmm12:
    movss xmm2, xmm12
    jmp ._loop

    .i_mov_xmm2_xmm13:
    movss xmm2, xmm13
    jmp ._loop

    .i_mov_xmm2_xmm14:
    movss xmm2, xmm14
    jmp ._loop

    .i_mov_xmm2_xmm15:
    movss xmm2, xmm15
    jmp ._loop

    .i_mov_xmm3_xmm0:
    movss xmm3, xmm0
    jmp ._loop

    .i_mov_xmm3_xmm1:
    movss xmm3, xmm1
    jmp ._loop

    .i_mov_xmm3_xmm2:
    movss xmm3, xmm2
    jmp ._loop

    .i_mov_xmm3_xmm3:
    movss xmm3, xmm3
    jmp ._loop

    .i_mov_xmm3_xmm4:
    movss xmm3, xmm4
    jmp ._loop

    .i_mov_xmm3_xmm5:
    movss xmm3, xmm5
    jmp ._loop

    .i_mov_xmm3_xmm6:
    movss xmm3, xmm6
    jmp ._loop

    .i_mov_xmm3_xmm7:
    movss xmm3, xmm7
    jmp ._loop

    .i_mov_xmm3_xmm8:
    movss xmm3, xmm8
    jmp ._loop

    .i_mov_xmm3_xmm9:
    movss xmm3, xmm9
    jmp ._loop

    .i_mov_xmm3_xmm10:
    movss xmm3, xmm10
    jmp ._loop

    .i_mov_xmm3_xmm11:
    movss xmm3, xmm11
    jmp ._loop

    .i_mov_xmm3_xmm12:
    movss xmm3, xmm12
    jmp ._loop

    .i_mov_xmm3_xmm13:
    movss xmm3, xmm13
    jmp ._loop

    .i_mov_xmm3_xmm14:
    movss xmm3, xmm14
    jmp ._loop

    .i_mov_xmm3_xmm15:
    movss xmm3, xmm15
    jmp ._loop

    .i_mov_xmm4_xmm0:
    movss xmm4, xmm0
    jmp ._loop

    .i_mov_xmm4_xmm1:
    movss xmm4, xmm1
    jmp ._loop

    .i_mov_xmm4_xmm2:
    movss xmm4, xmm2
    jmp ._loop

    .i_mov_xmm4_xmm3:
    movss xmm4, xmm3
    jmp ._loop

    .i_mov_xmm4_xmm4:
    movss xmm4, xmm4
    jmp ._loop

    .i_mov_xmm4_xmm5:
    movss xmm4, xmm5
    jmp ._loop

    .i_mov_xmm4_xmm6:
    movss xmm4, xmm6
    jmp ._loop

    .i_mov_xmm4_xmm7:
    movss xmm4, xmm7
    jmp ._loop

    .i_mov_xmm4_xmm8:
    movss xmm4, xmm8
    jmp ._loop

    .i_mov_xmm4_xmm9:
    movss xmm4, xmm9
    jmp ._loop

    .i_mov_xmm4_xmm10:
    movss xmm4, xmm10
    jmp ._loop

    .i_mov_xmm4_xmm11:
    movss xmm4, xmm11
    jmp ._loop

    .i_mov_xmm4_xmm12:
    movss xmm4, xmm12
    jmp ._loop

    .i_mov_xmm4_xmm13:
    movss xmm4, xmm13
    jmp ._loop

    .i_mov_xmm4_xmm14:
    movss xmm4, xmm14
    jmp ._loop

    .i_mov_xmm4_xmm15:
    movss xmm4, xmm15
    jmp ._loop

    .i_mov_xmm5_xmm0:
    movss xmm5, xmm0
    jmp ._loop

    .i_mov_xmm5_xmm1:
    movss xmm5, xmm1
    jmp ._loop

    .i_mov_xmm5_xmm2:
    movss xmm5, xmm2
    jmp ._loop

    .i_mov_xmm5_xmm3:
    movss xmm5, xmm3
    jmp ._loop

    .i_mov_xmm5_xmm4:
    movss xmm5, xmm4
    jmp ._loop

    .i_mov_xmm5_xmm5:
    movss xmm5, xmm5
    jmp ._loop

    .i_mov_xmm5_xmm6:
    movss xmm5, xmm6
    jmp ._loop

    .i_mov_xmm5_xmm7:
    movss xmm5, xmm7
    jmp ._loop

    .i_mov_xmm5_xmm8:
    movss xmm5, xmm8
    jmp ._loop

    .i_mov_xmm5_xmm9:
    movss xmm5, xmm9
    jmp ._loop

    .i_mov_xmm5_xmm10:
    movss xmm5, xmm10
    jmp ._loop

    .i_mov_xmm5_xmm11:
    movss xmm5, xmm11
    jmp ._loop

    .i_mov_xmm5_xmm12:
    movss xmm5, xmm12
    jmp ._loop

    .i_mov_xmm5_xmm13:
    movss xmm5, xmm13
    jmp ._loop

    .i_mov_xmm5_xmm14:
    movss xmm5, xmm14
    jmp ._loop

    .i_mov_xmm5_xmm15:
    movss xmm5, xmm15
    jmp ._loop

    .i_mov_xmm6_xmm0:
    movss xmm6, xmm0
    jmp ._loop

    .i_mov_xmm6_xmm1:
    movss xmm6, xmm1
    jmp ._loop

    .i_mov_xmm6_xmm2:
    movss xmm6, xmm2
    jmp ._loop

    .i_mov_xmm6_xmm3:
    movss xmm6, xmm3
    jmp ._loop

    .i_mov_xmm6_xmm4:
    movss xmm6, xmm4
    jmp ._loop

    .i_mov_xmm6_xmm5:
    movss xmm6, xmm5
    jmp ._loop

    .i_mov_xmm6_xmm6:
    movss xmm6, xmm6
    jmp ._loop

    .i_mov_xmm6_xmm7:
    movss xmm6, xmm7
    jmp ._loop

    .i_mov_xmm6_xmm8:
    movss xmm6, xmm8
    jmp ._loop

    .i_mov_xmm6_xmm9:
    movss xmm6, xmm9
    jmp ._loop

    .i_mov_xmm6_xmm10:
    movss xmm6, xmm10
    jmp ._loop

    .i_mov_xmm6_xmm11:
    movss xmm6, xmm11
    jmp ._loop

    .i_mov_xmm6_xmm12:
    movss xmm6, xmm12
    jmp ._loop

    .i_mov_xmm6_xmm13:
    movss xmm6, xmm13
    jmp ._loop

    .i_mov_xmm6_xmm14:
    movss xmm6, xmm14
    jmp ._loop

    .i_mov_xmm6_xmm15:
    movss xmm6, xmm15
    jmp ._loop

    .i_mov_xmm7_xmm0:
    movss xmm7, xmm0
    jmp ._loop

    .i_mov_xmm7_xmm1:
    movss xmm7, xmm1
    jmp ._loop

    .i_mov_xmm7_xmm2:
    movss xmm7, xmm2
    jmp ._loop

    .i_mov_xmm7_xmm3:
    movss xmm7, xmm3
    jmp ._loop

    .i_mov_xmm7_xmm4:
    movss xmm7, xmm4
    jmp ._loop

    .i_mov_xmm7_xmm5:
    movss xmm7, xmm5
    jmp ._loop

    .i_mov_xmm7_xmm6:
    movss xmm7, xmm6
    jmp ._loop

    .i_mov_xmm7_xmm7:
    movss xmm7, xmm7
    jmp ._loop

    .i_mov_xmm7_xmm8:
    movss xmm7, xmm8
    jmp ._loop

    .i_mov_xmm7_xmm9:
    movss xmm7, xmm9
    jmp ._loop

    .i_mov_xmm7_xmm10:
    movss xmm7, xmm10
    jmp ._loop

    .i_mov_xmm7_xmm11:
    movss xmm7, xmm11
    jmp ._loop

    .i_mov_xmm7_xmm12:
    movss xmm7, xmm12
    jmp ._loop

    .i_mov_xmm7_xmm13:
    movss xmm7, xmm13
    jmp ._loop

    .i_mov_xmm7_xmm14:
    movss xmm7, xmm14
    jmp ._loop

    .i_mov_xmm7_xmm15:
    movss xmm7, xmm15
    jmp ._loop

    .i_mov_xmm8_xmm0:
    movss xmm8, xmm0
    jmp ._loop

    .i_mov_xmm8_xmm1:
    movss xmm8, xmm1
    jmp ._loop

    .i_mov_xmm8_xmm2:
    movss xmm8, xmm2
    jmp ._loop

    .i_mov_xmm8_xmm3:
    movss xmm8, xmm3
    jmp ._loop

    .i_mov_xmm8_xmm4:
    movss xmm8, xmm4
    jmp ._loop

    .i_mov_xmm8_xmm5:
    movss xmm8, xmm5
    jmp ._loop

    .i_mov_xmm8_xmm6:
    movss xmm8, xmm6
    jmp ._loop

    .i_mov_xmm8_xmm7:
    movss xmm8, xmm7
    jmp ._loop

    .i_mov_xmm8_xmm8:
    movss xmm8, xmm8
    jmp ._loop

    .i_mov_xmm8_xmm9:
    movss xmm8, xmm9
    jmp ._loop

    .i_mov_xmm8_xmm10:
    movss xmm8, xmm10
    jmp ._loop

    .i_mov_xmm8_xmm11:
    movss xmm8, xmm11
    jmp ._loop

    .i_mov_xmm8_xmm12:
    movss xmm8, xmm12
    jmp ._loop

    .i_mov_xmm8_xmm13:
    movss xmm8, xmm13
    jmp ._loop

    .i_mov_xmm8_xmm14:
    movss xmm8, xmm14
    jmp ._loop

    .i_mov_xmm8_xmm15:
    movss xmm8, xmm15
    jmp ._loop

    .i_mov_xmm9_xmm0:
    movss xmm9, xmm0
    jmp ._loop

    .i_mov_xmm9_xmm1:
    movss xmm9, xmm1
    jmp ._loop

    .i_mov_xmm9_xmm2:
    movss xmm9, xmm2
    jmp ._loop

    .i_mov_xmm9_xmm3:
    movss xmm9, xmm3
    jmp ._loop

    .i_mov_xmm9_xmm4:
    movss xmm9, xmm4
    jmp ._loop

    .i_mov_xmm9_xmm5:
    movss xmm9, xmm5
    jmp ._loop

    .i_mov_xmm9_xmm6:
    movss xmm9, xmm6
    jmp ._loop

    .i_mov_xmm9_xmm7:
    movss xmm9, xmm7
    jmp ._loop

    .i_mov_xmm9_xmm8:
    movss xmm9, xmm8
    jmp ._loop

    .i_mov_xmm9_xmm9:
    movss xmm9, xmm9
    jmp ._loop

    .i_mov_xmm9_xmm10:
    movss xmm9, xmm10
    jmp ._loop

    .i_mov_xmm9_xmm11:
    movss xmm9, xmm11
    jmp ._loop

    .i_mov_xmm9_xmm12:
    movss xmm9, xmm12
    jmp ._loop

    .i_mov_xmm9_xmm13:
    movss xmm9, xmm13
    jmp ._loop

    .i_mov_xmm9_xmm14:
    movss xmm9, xmm14
    jmp ._loop

    .i_mov_xmm9_xmm15:
    movss xmm9, xmm15
    jmp ._loop

    .i_mov_xmm10_xmm0:
    movss xmm10, xmm0
    jmp ._loop

    .i_mov_xmm10_xmm1:
    movss xmm10, xmm1
    jmp ._loop

    .i_mov_xmm10_xmm2:
    movss xmm10, xmm2
    jmp ._loop

    .i_mov_xmm10_xmm3:
    movss xmm10, xmm3
    jmp ._loop

    .i_mov_xmm10_xmm4:
    movss xmm10, xmm4
    jmp ._loop

    .i_mov_xmm10_xmm5:
    movss xmm10, xmm5
    jmp ._loop

    .i_mov_xmm10_xmm6:
    movss xmm10, xmm6
    jmp ._loop

    .i_mov_xmm10_xmm7:
    movss xmm10, xmm7
    jmp ._loop

    .i_mov_xmm10_xmm8:
    movss xmm10, xmm8
    jmp ._loop

    .i_mov_xmm10_xmm9:
    movss xmm10, xmm9
    jmp ._loop

    .i_mov_xmm10_xmm10:
    movss xmm10, xmm10
    jmp ._loop

    .i_mov_xmm10_xmm11:
    movss xmm10, xmm11
    jmp ._loop

    .i_mov_xmm10_xmm12:
    movss xmm10, xmm12
    jmp ._loop

    .i_mov_xmm10_xmm13:
    movss xmm10, xmm13
    jmp ._loop

    .i_mov_xmm10_xmm14:
    movss xmm10, xmm14
    jmp ._loop

    .i_mov_xmm10_xmm15:
    movss xmm10, xmm15
    jmp ._loop

    .i_mov_xmm11_xmm0:
    movss xmm11, xmm0
    jmp ._loop

    .i_mov_xmm11_xmm1:
    movss xmm11, xmm1
    jmp ._loop

    .i_mov_xmm11_xmm2:
    movss xmm11, xmm2
    jmp ._loop

    .i_mov_xmm11_xmm3:
    movss xmm11, xmm3
    jmp ._loop

    .i_mov_xmm11_xmm4:
    movss xmm11, xmm4
    jmp ._loop

    .i_mov_xmm11_xmm5:
    movss xmm11, xmm5
    jmp ._loop

    .i_mov_xmm11_xmm6:
    movss xmm11, xmm6
    jmp ._loop

    .i_mov_xmm11_xmm7:
    movss xmm11, xmm7
    jmp ._loop

    .i_mov_xmm11_xmm8:
    movss xmm11, xmm8
    jmp ._loop

    .i_mov_xmm11_xmm9:
    movss xmm11, xmm9
    jmp ._loop

    .i_mov_xmm11_xmm10:
    movss xmm11, xmm10
    jmp ._loop

    .i_mov_xmm11_xmm11:
    movss xmm11, xmm11
    jmp ._loop

    .i_mov_xmm11_xmm12:
    movss xmm11, xmm12
    jmp ._loop

    .i_mov_xmm11_xmm13:
    movss xmm11, xmm13
    jmp ._loop

    .i_mov_xmm11_xmm14:
    movss xmm11, xmm14
    jmp ._loop

    .i_mov_xmm11_xmm15:
    movss xmm11, xmm15
    jmp ._loop

    .i_mov_xmm12_xmm0:
    movss xmm12, xmm0
    jmp ._loop

    .i_mov_xmm12_xmm1:
    movss xmm12, xmm1
    jmp ._loop

    .i_mov_xmm12_xmm2:
    movss xmm12, xmm2
    jmp ._loop

    .i_mov_xmm12_xmm3:
    movss xmm12, xmm3
    jmp ._loop

    .i_mov_xmm12_xmm4:
    movss xmm12, xmm4
    jmp ._loop

    .i_mov_xmm12_xmm5:
    movss xmm12, xmm5
    jmp ._loop

    .i_mov_xmm12_xmm6:
    movss xmm12, xmm6
    jmp ._loop

    .i_mov_xmm12_xmm7:
    movss xmm12, xmm7
    jmp ._loop

    .i_mov_xmm12_xmm8:
    movss xmm12, xmm8
    jmp ._loop

    .i_mov_xmm12_xmm9:
    movss xmm12, xmm9
    jmp ._loop

    .i_mov_xmm12_xmm10:
    movss xmm12, xmm10
    jmp ._loop

    .i_mov_xmm12_xmm11:
    movss xmm12, xmm11
    jmp ._loop

    .i_mov_xmm12_xmm12:
    movss xmm12, xmm12
    jmp ._loop

    .i_mov_xmm12_xmm13:
    movss xmm12, xmm13
    jmp ._loop

    .i_mov_xmm12_xmm14:
    movss xmm12, xmm14
    jmp ._loop

    .i_mov_xmm12_xmm15:
    movss xmm12, xmm15
    jmp ._loop

    .i_mov_xmm13_xmm0:
    movss xmm13, xmm0
    jmp ._loop

    .i_mov_xmm13_xmm1:
    movss xmm13, xmm1
    jmp ._loop

    .i_mov_xmm13_xmm2:
    movss xmm13, xmm2
    jmp ._loop

    .i_mov_xmm13_xmm3:
    movss xmm13, xmm3
    jmp ._loop

    .i_mov_xmm13_xmm4:
    movss xmm13, xmm4
    jmp ._loop

    .i_mov_xmm13_xmm5:
    movss xmm13, xmm5
    jmp ._loop

    .i_mov_xmm13_xmm6:
    movss xmm13, xmm6
    jmp ._loop

    .i_mov_xmm13_xmm7:
    movss xmm13, xmm7
    jmp ._loop

    .i_mov_xmm13_xmm8:
    movss xmm13, xmm8
    jmp ._loop

    .i_mov_xmm13_xmm9:
    movss xmm13, xmm9
    jmp ._loop

    .i_mov_xmm13_xmm10:
    movss xmm13, xmm10
    jmp ._loop

    .i_mov_xmm13_xmm11:
    movss xmm13, xmm11
    jmp ._loop

    .i_mov_xmm13_xmm12:
    movss xmm13, xmm12
    jmp ._loop

    .i_mov_xmm13_xmm13:
    movss xmm13, xmm13
    jmp ._loop

    .i_mov_xmm13_xmm14:
    movss xmm13, xmm14
    jmp ._loop

    .i_mov_xmm13_xmm15:
    movss xmm13, xmm15
    jmp ._loop

    .i_mov_xmm14_xmm0:
    movss xmm14, xmm0
    jmp ._loop

    .i_mov_xmm14_xmm1:
    movss xmm14, xmm1
    jmp ._loop

    .i_mov_xmm14_xmm2:
    movss xmm14, xmm2
    jmp ._loop

    .i_mov_xmm14_xmm3:
    movss xmm14, xmm3
    jmp ._loop

    .i_mov_xmm14_xmm4:
    movss xmm14, xmm4
    jmp ._loop

    .i_mov_xmm14_xmm5:
    movss xmm14, xmm5
    jmp ._loop

    .i_mov_xmm14_xmm6:
    movss xmm14, xmm6
    jmp ._loop

    .i_mov_xmm14_xmm7:
    movss xmm14, xmm7
    jmp ._loop

    .i_mov_xmm14_xmm8:
    movss xmm14, xmm8
    jmp ._loop

    .i_mov_xmm14_xmm9:
    movss xmm14, xmm9
    jmp ._loop

    .i_mov_xmm14_xmm10:
    movss xmm14, xmm10
    jmp ._loop

    .i_mov_xmm14_xmm11:
    movss xmm14, xmm11
    jmp ._loop

    .i_mov_xmm14_xmm12:
    movss xmm14, xmm12
    jmp ._loop

    .i_mov_xmm14_xmm13:
    movss xmm14, xmm13
    jmp ._loop

    .i_mov_xmm14_xmm14:
    movss xmm14, xmm14
    jmp ._loop

    .i_mov_xmm14_xmm15:
    movss xmm14, xmm15
    jmp ._loop

    .i_mov_xmm15_xmm0:
    movss xmm15, xmm0
    jmp ._loop

    .i_mov_xmm15_xmm1:
    movss xmm15, xmm1
    jmp ._loop

    .i_mov_xmm15_xmm2:
    movss xmm15, xmm2
    jmp ._loop

    .i_mov_xmm15_xmm3:
    movss xmm15, xmm3
    jmp ._loop

    .i_mov_xmm15_xmm4:
    movss xmm15, xmm4
    jmp ._loop

    .i_mov_xmm15_xmm5:
    movss xmm15, xmm5
    jmp ._loop

    .i_mov_xmm15_xmm6:
    movss xmm15, xmm6
    jmp ._loop

    .i_mov_xmm15_xmm7:
    movss xmm15, xmm7
    jmp ._loop

    .i_mov_xmm15_xmm8:
    movss xmm15, xmm8
    jmp ._loop

    .i_mov_xmm15_xmm9:
    movss xmm15, xmm9
    jmp ._loop

    .i_mov_xmm15_xmm10:
    movss xmm15, xmm10
    jmp ._loop

    .i_mov_xmm15_xmm11:
    movss xmm15, xmm11
    jmp ._loop

    .i_mov_xmm15_xmm12:
    movss xmm15, xmm12
    jmp ._loop

    .i_mov_xmm15_xmm13:
    movss xmm15, xmm13
    jmp ._loop

    .i_mov_xmm15_xmm14:
    movss xmm15, xmm14
    jmp ._loop

    .i_mov_xmm15_xmm15:
    movss xmm15, xmm15
    jmp ._loop

    .i_add_rax_rax:
    add rax, rax
    jmp ._loop

    .i_add_rax_rcx:
    add rax, rcx
    jmp ._loop

    .i_add_rax_rdx:
    add rax, rdx
    jmp ._loop

    .i_add_rax_r8:
    add rax, r8
    jmp ._loop

    .i_add_rax_r9:
    add rax, r9
    jmp ._loop

    .i_add_rax_r10:
    add rax, r10
    jmp ._loop

    .i_add_rax_r11:
    add rax, r11
    jmp ._loop

    .i_add_rax_r12:
    add rax, r12
    jmp ._loop

    .i_add_rax_r13:
    add rax, r13
    jmp ._loop

    .i_add_rax_rsi:
    add rax, rsi
    jmp ._loop

    .i_add_rax_rdi:
    add rax, rdi
    jmp ._loop

    .i_add_rax_rsp:
    add rax, rsp
    jmp ._loop

    .i_add_rax_rbp:
    add rax, rbp
    jmp ._loop

    .i_add_rcx_rax:
    add rcx, rax
    jmp ._loop

    .i_add_rcx_rcx:
    add rcx, rcx
    jmp ._loop

    .i_add_rcx_rdx:
    add rcx, rdx
    jmp ._loop

    .i_add_rcx_r8:
    add rcx, r8
    jmp ._loop

    .i_add_rcx_r9:
    add rcx, r9
    jmp ._loop

    .i_add_rcx_r10:
    add rcx, r10
    jmp ._loop

    .i_add_rcx_r11:
    add rcx, r11
    jmp ._loop

    .i_add_rcx_r12:
    add rcx, r12
    jmp ._loop

    .i_add_rcx_r13:
    add rcx, r13
    jmp ._loop

    .i_add_rcx_rsi:
    add rcx, rsi
    jmp ._loop

    .i_add_rcx_rdi:
    add rcx, rdi
    jmp ._loop

    .i_add_rcx_rsp:
    add rcx, rsp
    jmp ._loop

    .i_add_rcx_rbp:
    add rcx, rbp
    jmp ._loop

    .i_add_rdx_rax:
    add rdx, rax
    jmp ._loop

    .i_add_rdx_rcx:
    add rdx, rcx
    jmp ._loop

    .i_add_rdx_rdx:
    add rdx, rdx
    jmp ._loop

    .i_add_rdx_r8:
    add rdx, r8
    jmp ._loop

    .i_add_rdx_r9:
    add rdx, r9
    jmp ._loop

    .i_add_rdx_r10:
    add rdx, r10
    jmp ._loop

    .i_add_rdx_r11:
    add rdx, r11
    jmp ._loop

    .i_add_rdx_r12:
    add rdx, r12
    jmp ._loop

    .i_add_rdx_r13:
    add rdx, r13
    jmp ._loop

    .i_add_rdx_rsi:
    add rdx, rsi
    jmp ._loop

    .i_add_rdx_rdi:
    add rdx, rdi
    jmp ._loop

    .i_add_rdx_rsp:
    add rdx, rsp
    jmp ._loop

    .i_add_rdx_rbp:
    add rdx, rbp
    jmp ._loop

    .i_add_r8_rax:
    add r8, rax
    jmp ._loop

    .i_add_r8_rcx:
    add r8, rcx
    jmp ._loop

    .i_add_r8_rdx:
    add r8, rdx
    jmp ._loop

    .i_add_r8_r8:
    add r8, r8
    jmp ._loop

    .i_add_r8_r9:
    add r8, r9
    jmp ._loop

    .i_add_r8_r10:
    add r8, r10
    jmp ._loop

    .i_add_r8_r11:
    add r8, r11
    jmp ._loop

    .i_add_r8_r12:
    add r8, r12
    jmp ._loop

    .i_add_r8_r13:
    add r8, r13
    jmp ._loop

    .i_add_r8_rsi:
    add r8, rsi
    jmp ._loop

    .i_add_r8_rdi:
    add r8, rdi
    jmp ._loop

    .i_add_r8_rsp:
    add r8, rsp
    jmp ._loop

    .i_add_r8_rbp:
    add r8, rbp
    jmp ._loop

    .i_add_r9_rax:
    add r9, rax
    jmp ._loop

    .i_add_r9_rcx:
    add r9, rcx
    jmp ._loop

    .i_add_r9_rdx:
    add r9, rdx
    jmp ._loop

    .i_add_r9_r8:
    add r9, r8
    jmp ._loop

    .i_add_r9_r9:
    add r9, r9
    jmp ._loop

    .i_add_r9_r10:
    add r9, r10
    jmp ._loop

    .i_add_r9_r11:
    add r9, r11
    jmp ._loop

    .i_add_r9_r12:
    add r9, r12
    jmp ._loop

    .i_add_r9_r13:
    add r9, r13
    jmp ._loop

    .i_add_r9_rsi:
    add r9, rsi
    jmp ._loop

    .i_add_r9_rdi:
    add r9, rdi
    jmp ._loop

    .i_add_r9_rsp:
    add r9, rsp
    jmp ._loop

    .i_add_r9_rbp:
    add r9, rbp
    jmp ._loop

    .i_add_r10_rax:
    add r10, rax
    jmp ._loop

    .i_add_r10_rcx:
    add r10, rcx
    jmp ._loop

    .i_add_r10_rdx:
    add r10, rdx
    jmp ._loop

    .i_add_r10_r8:
    add r10, r8
    jmp ._loop

    .i_add_r10_r9:
    add r10, r9
    jmp ._loop

    .i_add_r10_r10:
    add r10, r10
    jmp ._loop

    .i_add_r10_r11:
    add r10, r11
    jmp ._loop

    .i_add_r10_r12:
    add r10, r12
    jmp ._loop

    .i_add_r10_r13:
    add r10, r13
    jmp ._loop

    .i_add_r10_rsi:
    add r10, rsi
    jmp ._loop

    .i_add_r10_rdi:
    add r10, rdi
    jmp ._loop

    .i_add_r10_rsp:
    add r10, rsp
    jmp ._loop

    .i_add_r10_rbp:
    add r10, rbp
    jmp ._loop

    .i_add_r11_rax:
    add r11, rax
    jmp ._loop

    .i_add_r11_rcx:
    add r11, rcx
    jmp ._loop

    .i_add_r11_rdx:
    add r11, rdx
    jmp ._loop

    .i_add_r11_r8:
    add r11, r8
    jmp ._loop

    .i_add_r11_r9:
    add r11, r9
    jmp ._loop

    .i_add_r11_r10:
    add r11, r10
    jmp ._loop

    .i_add_r11_r11:
    add r11, r11
    jmp ._loop

    .i_add_r11_r12:
    add r11, r12
    jmp ._loop

    .i_add_r11_r13:
    add r11, r13
    jmp ._loop

    .i_add_r11_rsi:
    add r11, rsi
    jmp ._loop

    .i_add_r11_rdi:
    add r11, rdi
    jmp ._loop

    .i_add_r11_rsp:
    add r11, rsp
    jmp ._loop

    .i_add_r11_rbp:
    add r11, rbp
    jmp ._loop

    .i_add_r12_rax:
    add r12, rax
    jmp ._loop

    .i_add_r12_rcx:
    add r12, rcx
    jmp ._loop

    .i_add_r12_rdx:
    add r12, rdx
    jmp ._loop

    .i_add_r12_r8:
    add r12, r8
    jmp ._loop

    .i_add_r12_r9:
    add r12, r9
    jmp ._loop

    .i_add_r12_r10:
    add r12, r10
    jmp ._loop

    .i_add_r12_r11:
    add r12, r11
    jmp ._loop

    .i_add_r12_r12:
    add r12, r12
    jmp ._loop

    .i_add_r12_r13:
    add r12, r13
    jmp ._loop

    .i_add_r12_rsi:
    add r12, rsi
    jmp ._loop

    .i_add_r12_rdi:
    add r12, rdi
    jmp ._loop

    .i_add_r12_rsp:
    add r12, rsp
    jmp ._loop

    .i_add_r12_rbp:
    add r12, rbp
    jmp ._loop

    .i_add_r13_rax:
    add r13, rax
    jmp ._loop

    .i_add_r13_rcx:
    add r13, rcx
    jmp ._loop

    .i_add_r13_rdx:
    add r13, rdx
    jmp ._loop

    .i_add_r13_r8:
    add r13, r8
    jmp ._loop

    .i_add_r13_r9:
    add r13, r9
    jmp ._loop

    .i_add_r13_r10:
    add r13, r10
    jmp ._loop

    .i_add_r13_r11:
    add r13, r11
    jmp ._loop

    .i_add_r13_r12:
    add r13, r12
    jmp ._loop

    .i_add_r13_r13:
    add r13, r13
    jmp ._loop

    .i_add_r13_rsi:
    add r13, rsi
    jmp ._loop

    .i_add_r13_rdi:
    add r13, rdi
    jmp ._loop

    .i_add_r13_rsp:
    add r13, rsp
    jmp ._loop

    .i_add_r13_rbp:
    add r13, rbp
    jmp ._loop

    .i_add_rsi_rax:
    add rsi, rax
    jmp ._loop

    .i_add_rsi_rcx:
    add rsi, rcx
    jmp ._loop

    .i_add_rsi_rdx:
    add rsi, rdx
    jmp ._loop

    .i_add_rsi_r8:
    add rsi, r8
    jmp ._loop

    .i_add_rsi_r9:
    add rsi, r9
    jmp ._loop

    .i_add_rsi_r10:
    add rsi, r10
    jmp ._loop

    .i_add_rsi_r11:
    add rsi, r11
    jmp ._loop

    .i_add_rsi_r12:
    add rsi, r12
    jmp ._loop

    .i_add_rsi_r13:
    add rsi, r13
    jmp ._loop

    .i_add_rsi_rsi:
    add rsi, rsi
    jmp ._loop

    .i_add_rsi_rdi:
    add rsi, rdi
    jmp ._loop

    .i_add_rsi_rsp:
    add rsi, rsp
    jmp ._loop

    .i_add_rsi_rbp:
    add rsi, rbp
    jmp ._loop

    .i_add_rdi_rax:
    add rdi, rax
    jmp ._loop

    .i_add_rdi_rcx:
    add rdi, rcx
    jmp ._loop

    .i_add_rdi_rdx:
    add rdi, rdx
    jmp ._loop

    .i_add_rdi_r8:
    add rdi, r8
    jmp ._loop

    .i_add_rdi_r9:
    add rdi, r9
    jmp ._loop

    .i_add_rdi_r10:
    add rdi, r10
    jmp ._loop

    .i_add_rdi_r11:
    add rdi, r11
    jmp ._loop

    .i_add_rdi_r12:
    add rdi, r12
    jmp ._loop

    .i_add_rdi_r13:
    add rdi, r13
    jmp ._loop

    .i_add_rdi_rsi:
    add rdi, rsi
    jmp ._loop

    .i_add_rdi_rdi:
    add rdi, rdi
    jmp ._loop

    .i_add_rdi_rsp:
    add rdi, rsp
    jmp ._loop

    .i_add_rdi_rbp:
    add rdi, rbp
    jmp ._loop

    .i_add_rsp_rax:
    add rsp, rax
    jmp ._loop

    .i_add_rsp_rcx:
    add rsp, rcx
    jmp ._loop

    .i_add_rsp_rdx:
    add rsp, rdx
    jmp ._loop

    .i_add_rsp_r8:
    add rsp, r8
    jmp ._loop

    .i_add_rsp_r9:
    add rsp, r9
    jmp ._loop

    .i_add_rsp_r10:
    add rsp, r10
    jmp ._loop

    .i_add_rsp_r11:
    add rsp, r11
    jmp ._loop

    .i_add_rsp_r12:
    add rsp, r12
    jmp ._loop

    .i_add_rsp_r13:
    add rsp, r13
    jmp ._loop

    .i_add_rsp_rsi:
    add rsp, rsi
    jmp ._loop

    .i_add_rsp_rdi:
    add rsp, rdi
    jmp ._loop

    .i_add_rsp_rsp:
    add rsp, rsp
    jmp ._loop

    .i_add_rsp_rbp:
    add rsp, rbp
    jmp ._loop

    .i_add_rbp_rax:
    add rbp, rax
    jmp ._loop

    .i_add_rbp_rcx:
    add rbp, rcx
    jmp ._loop

    .i_add_rbp_rdx:
    add rbp, rdx
    jmp ._loop

    .i_add_rbp_r8:
    add rbp, r8
    jmp ._loop

    .i_add_rbp_r9:
    add rbp, r9
    jmp ._loop

    .i_add_rbp_r10:
    add rbp, r10
    jmp ._loop

    .i_add_rbp_r11:
    add rbp, r11
    jmp ._loop

    .i_add_rbp_r12:
    add rbp, r12
    jmp ._loop

    .i_add_rbp_r13:
    add rbp, r13
    jmp ._loop

    .i_add_rbp_rsi:
    add rbp, rsi
    jmp ._loop

    .i_add_rbp_rdi:
    add rbp, rdi
    jmp ._loop

    .i_add_rbp_rsp:
    add rbp, rsp
    jmp ._loop

    .i_add_rbp_rbp:
    add rbp, rbp
    jmp ._loop

    .i_add_eax_eax:
    add eax, eax
    jmp ._loop

    .i_add_eax_ecx:
    add eax, ecx
    jmp ._loop

    .i_add_eax_edx:
    add eax, edx
    jmp ._loop

    .i_add_eax_esi:
    add eax, esi
    jmp ._loop

    .i_add_eax_edi:
    add eax, edi
    jmp ._loop

    .i_add_eax_esp:
    add eax, esp
    jmp ._loop

    .i_add_eax_ebp:
    add eax, ebp
    jmp ._loop

    .i_add_ecx_eax:
    add ecx, eax
    jmp ._loop

    .i_add_ecx_ecx:
    add ecx, ecx
    jmp ._loop

    .i_add_ecx_edx:
    add ecx, edx
    jmp ._loop

    .i_add_ecx_esi:
    add ecx, esi
    jmp ._loop

    .i_add_ecx_edi:
    add ecx, edi
    jmp ._loop

    .i_add_ecx_esp:
    add ecx, esp
    jmp ._loop

    .i_add_ecx_ebp:
    add ecx, ebp
    jmp ._loop

    .i_add_edx_eax:
    add edx, eax
    jmp ._loop

    .i_add_edx_ecx:
    add edx, ecx
    jmp ._loop

    .i_add_edx_edx:
    add edx, edx
    jmp ._loop

    .i_add_edx_esi:
    add edx, esi
    jmp ._loop

    .i_add_edx_edi:
    add edx, edi
    jmp ._loop

    .i_add_edx_esp:
    add edx, esp
    jmp ._loop

    .i_add_edx_ebp:
    add edx, ebp
    jmp ._loop

    .i_add_esi_eax:
    add esi, eax
    jmp ._loop

    .i_add_esi_ecx:
    add esi, ecx
    jmp ._loop

    .i_add_esi_edx:
    add esi, edx
    jmp ._loop

    .i_add_esi_esi:
    add esi, esi
    jmp ._loop

    .i_add_esi_edi:
    add esi, edi
    jmp ._loop

    .i_add_esi_esp:
    add esi, esp
    jmp ._loop

    .i_add_esi_ebp:
    add esi, ebp
    jmp ._loop

    .i_add_edi_eax:
    add edi, eax
    jmp ._loop

    .i_add_edi_ecx:
    add edi, ecx
    jmp ._loop

    .i_add_edi_edx:
    add edi, edx
    jmp ._loop

    .i_add_edi_esi:
    add edi, esi
    jmp ._loop

    .i_add_edi_edi:
    add edi, edi
    jmp ._loop

    .i_add_edi_esp:
    add edi, esp
    jmp ._loop

    .i_add_edi_ebp:
    add edi, ebp
    jmp ._loop

    .i_add_esp_eax:
    add esp, eax
    jmp ._loop

    .i_add_esp_ecx:
    add esp, ecx
    jmp ._loop

    .i_add_esp_edx:
    add esp, edx
    jmp ._loop

    .i_add_esp_esi:
    add esp, esi
    jmp ._loop

    .i_add_esp_edi:
    add esp, edi
    jmp ._loop

    .i_add_esp_esp:
    add esp, esp
    jmp ._loop

    .i_add_esp_ebp:
    add esp, ebp
    jmp ._loop

    .i_add_ebp_eax:
    add ebp, eax
    jmp ._loop

    .i_add_ebp_ecx:
    add ebp, ecx
    jmp ._loop

    .i_add_ebp_edx:
    add ebp, edx
    jmp ._loop

    .i_add_ebp_esi:
    add ebp, esi
    jmp ._loop

    .i_add_ebp_edi:
    add ebp, edi
    jmp ._loop

    .i_add_ebp_esp:
    add ebp, esp
    jmp ._loop

    .i_add_ebp_ebp:
    add ebp, ebp
    jmp ._loop

    .i_add_ax_ax:
    add ax, ax
    jmp ._loop

    .i_add_ax_cx:
    add ax, cx
    jmp ._loop

    .i_add_ax_dx:
    add ax, dx
    jmp ._loop

    .i_add_ax_si:
    add ax, si
    jmp ._loop

    .i_add_ax_di:
    add ax, di
    jmp ._loop

    .i_add_ax_sp:
    add ax, sp
    jmp ._loop

    .i_add_ax_bp:
    add ax, bp
    jmp ._loop

    .i_add_cx_ax:
    add cx, ax
    jmp ._loop

    .i_add_cx_cx:
    add cx, cx
    jmp ._loop

    .i_add_cx_dx:
    add cx, dx
    jmp ._loop

    .i_add_cx_si:
    add cx, si
    jmp ._loop

    .i_add_cx_di:
    add cx, di
    jmp ._loop

    .i_add_cx_sp:
    add cx, sp
    jmp ._loop

    .i_add_cx_bp:
    add cx, bp
    jmp ._loop

    .i_add_dx_ax:
    add dx, ax
    jmp ._loop

    .i_add_dx_cx:
    add dx, cx
    jmp ._loop

    .i_add_dx_dx:
    add dx, dx
    jmp ._loop

    .i_add_dx_si:
    add dx, si
    jmp ._loop

    .i_add_dx_di:
    add dx, di
    jmp ._loop

    .i_add_dx_sp:
    add dx, sp
    jmp ._loop

    .i_add_dx_bp:
    add dx, bp
    jmp ._loop

    .i_add_si_ax:
    add si, ax
    jmp ._loop

    .i_add_si_cx:
    add si, cx
    jmp ._loop

    .i_add_si_dx:
    add si, dx
    jmp ._loop

    .i_add_si_si:
    add si, si
    jmp ._loop

    .i_add_si_di:
    add si, di
    jmp ._loop

    .i_add_si_sp:
    add si, sp
    jmp ._loop

    .i_add_si_bp:
    add si, bp
    jmp ._loop

    .i_add_di_ax:
    add di, ax
    jmp ._loop

    .i_add_di_cx:
    add di, cx
    jmp ._loop

    .i_add_di_dx:
    add di, dx
    jmp ._loop

    .i_add_di_si:
    add di, si
    jmp ._loop

    .i_add_di_di:
    add di, di
    jmp ._loop

    .i_add_di_sp:
    add di, sp
    jmp ._loop

    .i_add_di_bp:
    add di, bp
    jmp ._loop

    .i_add_sp_ax:
    add sp, ax
    jmp ._loop

    .i_add_sp_cx:
    add sp, cx
    jmp ._loop

    .i_add_sp_dx:
    add sp, dx
    jmp ._loop

    .i_add_sp_si:
    add sp, si
    jmp ._loop

    .i_add_sp_di:
    add sp, di
    jmp ._loop

    .i_add_sp_sp:
    add sp, sp
    jmp ._loop

    .i_add_sp_bp:
    add sp, bp
    jmp ._loop

    .i_add_bp_ax:
    add bp, ax
    jmp ._loop

    .i_add_bp_cx:
    add bp, cx
    jmp ._loop

    .i_add_bp_dx:
    add bp, dx
    jmp ._loop

    .i_add_bp_si:
    add bp, si
    jmp ._loop

    .i_add_bp_di:
    add bp, di
    jmp ._loop

    .i_add_bp_sp:
    add bp, sp
    jmp ._loop

    .i_add_bp_bp:
    add bp, bp
    jmp ._loop

    .i_add_al_al:
    add al, al
    jmp ._loop

    .i_add_al_cl:
    add al, cl
    jmp ._loop

    .i_add_al_dl:
    add al, dl
    jmp ._loop

    .i_add_cl_al:
    add cl, al
    jmp ._loop

    .i_add_cl_cl:
    add cl, cl
    jmp ._loop

    .i_add_cl_dl:
    add cl, dl
    jmp ._loop

    .i_add_dl_al:
    add dl, al
    jmp ._loop

    .i_add_dl_cl:
    add dl, cl
    jmp ._loop

    .i_add_dl_dl:
    add dl, dl
    jmp ._loop

    .i_sub_rax_rax:
    sub rax, rax
    jmp ._loop

    .i_sub_rax_rcx:
    sub rax, rcx
    jmp ._loop

    .i_sub_rax_rdx:
    sub rax, rdx
    jmp ._loop

    .i_sub_rax_r8:
    sub rax, r8
    jmp ._loop

    .i_sub_rax_r9:
    sub rax, r9
    jmp ._loop

    .i_sub_rax_r10:
    sub rax, r10
    jmp ._loop

    .i_sub_rax_r11:
    sub rax, r11
    jmp ._loop

    .i_sub_rax_r12:
    sub rax, r12
    jmp ._loop

    .i_sub_rax_r13:
    sub rax, r13
    jmp ._loop

    .i_sub_rax_rsi:
    sub rax, rsi
    jmp ._loop

    .i_sub_rax_rdi:
    sub rax, rdi
    jmp ._loop

    .i_sub_rax_rsp:
    sub rax, rsp
    jmp ._loop

    .i_sub_rax_rbp:
    sub rax, rbp
    jmp ._loop

    .i_sub_rcx_rax:
    sub rcx, rax
    jmp ._loop

    .i_sub_rcx_rcx:
    sub rcx, rcx
    jmp ._loop

    .i_sub_rcx_rdx:
    sub rcx, rdx
    jmp ._loop

    .i_sub_rcx_r8:
    sub rcx, r8
    jmp ._loop

    .i_sub_rcx_r9:
    sub rcx, r9
    jmp ._loop

    .i_sub_rcx_r10:
    sub rcx, r10
    jmp ._loop

    .i_sub_rcx_r11:
    sub rcx, r11
    jmp ._loop

    .i_sub_rcx_r12:
    sub rcx, r12
    jmp ._loop

    .i_sub_rcx_r13:
    sub rcx, r13
    jmp ._loop

    .i_sub_rcx_rsi:
    sub rcx, rsi
    jmp ._loop

    .i_sub_rcx_rdi:
    sub rcx, rdi
    jmp ._loop

    .i_sub_rcx_rsp:
    sub rcx, rsp
    jmp ._loop

    .i_sub_rcx_rbp:
    sub rcx, rbp
    jmp ._loop

    .i_sub_rdx_rax:
    sub rdx, rax
    jmp ._loop

    .i_sub_rdx_rcx:
    sub rdx, rcx
    jmp ._loop

    .i_sub_rdx_rdx:
    sub rdx, rdx
    jmp ._loop

    .i_sub_rdx_r8:
    sub rdx, r8
    jmp ._loop

    .i_sub_rdx_r9:
    sub rdx, r9
    jmp ._loop

    .i_sub_rdx_r10:
    sub rdx, r10
    jmp ._loop

    .i_sub_rdx_r11:
    sub rdx, r11
    jmp ._loop

    .i_sub_rdx_r12:
    sub rdx, r12
    jmp ._loop

    .i_sub_rdx_r13:
    sub rdx, r13
    jmp ._loop

    .i_sub_rdx_rsi:
    sub rdx, rsi
    jmp ._loop

    .i_sub_rdx_rdi:
    sub rdx, rdi
    jmp ._loop

    .i_sub_rdx_rsp:
    sub rdx, rsp
    jmp ._loop

    .i_sub_rdx_rbp:
    sub rdx, rbp
    jmp ._loop

    .i_sub_r8_rax:
    sub r8, rax
    jmp ._loop

    .i_sub_r8_rcx:
    sub r8, rcx
    jmp ._loop

    .i_sub_r8_rdx:
    sub r8, rdx
    jmp ._loop

    .i_sub_r8_r8:
    sub r8, r8
    jmp ._loop

    .i_sub_r8_r9:
    sub r8, r9
    jmp ._loop

    .i_sub_r8_r10:
    sub r8, r10
    jmp ._loop

    .i_sub_r8_r11:
    sub r8, r11
    jmp ._loop

    .i_sub_r8_r12:
    sub r8, r12
    jmp ._loop

    .i_sub_r8_r13:
    sub r8, r13
    jmp ._loop

    .i_sub_r8_rsi:
    sub r8, rsi
    jmp ._loop

    .i_sub_r8_rdi:
    sub r8, rdi
    jmp ._loop

    .i_sub_r8_rsp:
    sub r8, rsp
    jmp ._loop

    .i_sub_r8_rbp:
    sub r8, rbp
    jmp ._loop

    .i_sub_r9_rax:
    sub r9, rax
    jmp ._loop

    .i_sub_r9_rcx:
    sub r9, rcx
    jmp ._loop

    .i_sub_r9_rdx:
    sub r9, rdx
    jmp ._loop

    .i_sub_r9_r8:
    sub r9, r8
    jmp ._loop

    .i_sub_r9_r9:
    sub r9, r9
    jmp ._loop

    .i_sub_r9_r10:
    sub r9, r10
    jmp ._loop

    .i_sub_r9_r11:
    sub r9, r11
    jmp ._loop

    .i_sub_r9_r12:
    sub r9, r12
    jmp ._loop

    .i_sub_r9_r13:
    sub r9, r13
    jmp ._loop

    .i_sub_r9_rsi:
    sub r9, rsi
    jmp ._loop

    .i_sub_r9_rdi:
    sub r9, rdi
    jmp ._loop

    .i_sub_r9_rsp:
    sub r9, rsp
    jmp ._loop

    .i_sub_r9_rbp:
    sub r9, rbp
    jmp ._loop

    .i_sub_r10_rax:
    sub r10, rax
    jmp ._loop

    .i_sub_r10_rcx:
    sub r10, rcx
    jmp ._loop

    .i_sub_r10_rdx:
    sub r10, rdx
    jmp ._loop

    .i_sub_r10_r8:
    sub r10, r8
    jmp ._loop

    .i_sub_r10_r9:
    sub r10, r9
    jmp ._loop

    .i_sub_r10_r10:
    sub r10, r10
    jmp ._loop

    .i_sub_r10_r11:
    sub r10, r11
    jmp ._loop

    .i_sub_r10_r12:
    sub r10, r12
    jmp ._loop

    .i_sub_r10_r13:
    sub r10, r13
    jmp ._loop

    .i_sub_r10_rsi:
    sub r10, rsi
    jmp ._loop

    .i_sub_r10_rdi:
    sub r10, rdi
    jmp ._loop

    .i_sub_r10_rsp:
    sub r10, rsp
    jmp ._loop

    .i_sub_r10_rbp:
    sub r10, rbp
    jmp ._loop

    .i_sub_r11_rax:
    sub r11, rax
    jmp ._loop

    .i_sub_r11_rcx:
    sub r11, rcx
    jmp ._loop

    .i_sub_r11_rdx:
    sub r11, rdx
    jmp ._loop

    .i_sub_r11_r8:
    sub r11, r8
    jmp ._loop

    .i_sub_r11_r9:
    sub r11, r9
    jmp ._loop

    .i_sub_r11_r10:
    sub r11, r10
    jmp ._loop

    .i_sub_r11_r11:
    sub r11, r11
    jmp ._loop

    .i_sub_r11_r12:
    sub r11, r12
    jmp ._loop

    .i_sub_r11_r13:
    sub r11, r13
    jmp ._loop

    .i_sub_r11_rsi:
    sub r11, rsi
    jmp ._loop

    .i_sub_r11_rdi:
    sub r11, rdi
    jmp ._loop

    .i_sub_r11_rsp:
    sub r11, rsp
    jmp ._loop

    .i_sub_r11_rbp:
    sub r11, rbp
    jmp ._loop

    .i_sub_r12_rax:
    sub r12, rax
    jmp ._loop

    .i_sub_r12_rcx:
    sub r12, rcx
    jmp ._loop

    .i_sub_r12_rdx:
    sub r12, rdx
    jmp ._loop

    .i_sub_r12_r8:
    sub r12, r8
    jmp ._loop

    .i_sub_r12_r9:
    sub r12, r9
    jmp ._loop

    .i_sub_r12_r10:
    sub r12, r10
    jmp ._loop

    .i_sub_r12_r11:
    sub r12, r11
    jmp ._loop

    .i_sub_r12_r12:
    sub r12, r12
    jmp ._loop

    .i_sub_r12_r13:
    sub r12, r13
    jmp ._loop

    .i_sub_r12_rsi:
    sub r12, rsi
    jmp ._loop

    .i_sub_r12_rdi:
    sub r12, rdi
    jmp ._loop

    .i_sub_r12_rsp:
    sub r12, rsp
    jmp ._loop

    .i_sub_r12_rbp:
    sub r12, rbp
    jmp ._loop

    .i_sub_r13_rax:
    sub r13, rax
    jmp ._loop

    .i_sub_r13_rcx:
    sub r13, rcx
    jmp ._loop

    .i_sub_r13_rdx:
    sub r13, rdx
    jmp ._loop

    .i_sub_r13_r8:
    sub r13, r8
    jmp ._loop

    .i_sub_r13_r9:
    sub r13, r9
    jmp ._loop

    .i_sub_r13_r10:
    sub r13, r10
    jmp ._loop

    .i_sub_r13_r11:
    sub r13, r11
    jmp ._loop

    .i_sub_r13_r12:
    sub r13, r12
    jmp ._loop

    .i_sub_r13_r13:
    sub r13, r13
    jmp ._loop

    .i_sub_r13_rsi:
    sub r13, rsi
    jmp ._loop

    .i_sub_r13_rdi:
    sub r13, rdi
    jmp ._loop

    .i_sub_r13_rsp:
    sub r13, rsp
    jmp ._loop

    .i_sub_r13_rbp:
    sub r13, rbp
    jmp ._loop

    .i_sub_rsi_rax:
    sub rsi, rax
    jmp ._loop

    .i_sub_rsi_rcx:
    sub rsi, rcx
    jmp ._loop

    .i_sub_rsi_rdx:
    sub rsi, rdx
    jmp ._loop

    .i_sub_rsi_r8:
    sub rsi, r8
    jmp ._loop

    .i_sub_rsi_r9:
    sub rsi, r9
    jmp ._loop

    .i_sub_rsi_r10:
    sub rsi, r10
    jmp ._loop

    .i_sub_rsi_r11:
    sub rsi, r11
    jmp ._loop

    .i_sub_rsi_r12:
    sub rsi, r12
    jmp ._loop

    .i_sub_rsi_r13:
    sub rsi, r13
    jmp ._loop

    .i_sub_rsi_rsi:
    sub rsi, rsi
    jmp ._loop

    .i_sub_rsi_rdi:
    sub rsi, rdi
    jmp ._loop

    .i_sub_rsi_rsp:
    sub rsi, rsp
    jmp ._loop

    .i_sub_rsi_rbp:
    sub rsi, rbp
    jmp ._loop

    .i_sub_rdi_rax:
    sub rdi, rax
    jmp ._loop

    .i_sub_rdi_rcx:
    sub rdi, rcx
    jmp ._loop

    .i_sub_rdi_rdx:
    sub rdi, rdx
    jmp ._loop

    .i_sub_rdi_r8:
    sub rdi, r8
    jmp ._loop

    .i_sub_rdi_r9:
    sub rdi, r9
    jmp ._loop

    .i_sub_rdi_r10:
    sub rdi, r10
    jmp ._loop

    .i_sub_rdi_r11:
    sub rdi, r11
    jmp ._loop

    .i_sub_rdi_r12:
    sub rdi, r12
    jmp ._loop

    .i_sub_rdi_r13:
    sub rdi, r13
    jmp ._loop

    .i_sub_rdi_rsi:
    sub rdi, rsi
    jmp ._loop

    .i_sub_rdi_rdi:
    sub rdi, rdi
    jmp ._loop

    .i_sub_rdi_rsp:
    sub rdi, rsp
    jmp ._loop

    .i_sub_rdi_rbp:
    sub rdi, rbp
    jmp ._loop

    .i_sub_rsp_rax:
    sub rsp, rax
    jmp ._loop

    .i_sub_rsp_rcx:
    sub rsp, rcx
    jmp ._loop

    .i_sub_rsp_rdx:
    sub rsp, rdx
    jmp ._loop

    .i_sub_rsp_r8:
    sub rsp, r8
    jmp ._loop

    .i_sub_rsp_r9:
    sub rsp, r9
    jmp ._loop

    .i_sub_rsp_r10:
    sub rsp, r10
    jmp ._loop

    .i_sub_rsp_r11:
    sub rsp, r11
    jmp ._loop

    .i_sub_rsp_r12:
    sub rsp, r12
    jmp ._loop

    .i_sub_rsp_r13:
    sub rsp, r13
    jmp ._loop

    .i_sub_rsp_rsi:
    sub rsp, rsi
    jmp ._loop

    .i_sub_rsp_rdi:
    sub rsp, rdi
    jmp ._loop

    .i_sub_rsp_rsp:
    sub rsp, rsp
    jmp ._loop

    .i_sub_rsp_rbp:
    sub rsp, rbp
    jmp ._loop

    .i_sub_rbp_rax:
    sub rbp, rax
    jmp ._loop

    .i_sub_rbp_rcx:
    sub rbp, rcx
    jmp ._loop

    .i_sub_rbp_rdx:
    sub rbp, rdx
    jmp ._loop

    .i_sub_rbp_r8:
    sub rbp, r8
    jmp ._loop

    .i_sub_rbp_r9:
    sub rbp, r9
    jmp ._loop

    .i_sub_rbp_r10:
    sub rbp, r10
    jmp ._loop

    .i_sub_rbp_r11:
    sub rbp, r11
    jmp ._loop

    .i_sub_rbp_r12:
    sub rbp, r12
    jmp ._loop

    .i_sub_rbp_r13:
    sub rbp, r13
    jmp ._loop

    .i_sub_rbp_rsi:
    sub rbp, rsi
    jmp ._loop

    .i_sub_rbp_rdi:
    sub rbp, rdi
    jmp ._loop

    .i_sub_rbp_rsp:
    sub rbp, rsp
    jmp ._loop

    .i_sub_rbp_rbp:
    sub rbp, rbp
    jmp ._loop

    .i_sub_eax_eax:
    sub eax, eax
    jmp ._loop

    .i_sub_eax_ecx:
    sub eax, ecx
    jmp ._loop

    .i_sub_eax_edx:
    sub eax, edx
    jmp ._loop

    .i_sub_eax_esi:
    sub eax, esi
    jmp ._loop

    .i_sub_eax_edi:
    sub eax, edi
    jmp ._loop

    .i_sub_eax_esp:
    sub eax, esp
    jmp ._loop

    .i_sub_eax_ebp:
    sub eax, ebp
    jmp ._loop

    .i_sub_ecx_eax:
    sub ecx, eax
    jmp ._loop

    .i_sub_ecx_ecx:
    sub ecx, ecx
    jmp ._loop

    .i_sub_ecx_edx:
    sub ecx, edx
    jmp ._loop

    .i_sub_ecx_esi:
    sub ecx, esi
    jmp ._loop

    .i_sub_ecx_edi:
    sub ecx, edi
    jmp ._loop

    .i_sub_ecx_esp:
    sub ecx, esp
    jmp ._loop

    .i_sub_ecx_ebp:
    sub ecx, ebp
    jmp ._loop

    .i_sub_edx_eax:
    sub edx, eax
    jmp ._loop

    .i_sub_edx_ecx:
    sub edx, ecx
    jmp ._loop

    .i_sub_edx_edx:
    sub edx, edx
    jmp ._loop

    .i_sub_edx_esi:
    sub edx, esi
    jmp ._loop

    .i_sub_edx_edi:
    sub edx, edi
    jmp ._loop

    .i_sub_edx_esp:
    sub edx, esp
    jmp ._loop

    .i_sub_edx_ebp:
    sub edx, ebp
    jmp ._loop

    .i_sub_esi_eax:
    sub esi, eax
    jmp ._loop

    .i_sub_esi_ecx:
    sub esi, ecx
    jmp ._loop

    .i_sub_esi_edx:
    sub esi, edx
    jmp ._loop

    .i_sub_esi_esi:
    sub esi, esi
    jmp ._loop

    .i_sub_esi_edi:
    sub esi, edi
    jmp ._loop

    .i_sub_esi_esp:
    sub esi, esp
    jmp ._loop

    .i_sub_esi_ebp:
    sub esi, ebp
    jmp ._loop

    .i_sub_edi_eax:
    sub edi, eax
    jmp ._loop

    .i_sub_edi_ecx:
    sub edi, ecx
    jmp ._loop

    .i_sub_edi_edx:
    sub edi, edx
    jmp ._loop

    .i_sub_edi_esi:
    sub edi, esi
    jmp ._loop

    .i_sub_edi_edi:
    sub edi, edi
    jmp ._loop

    .i_sub_edi_esp:
    sub edi, esp
    jmp ._loop

    .i_sub_edi_ebp:
    sub edi, ebp
    jmp ._loop

    .i_sub_esp_eax:
    sub esp, eax
    jmp ._loop

    .i_sub_esp_ecx:
    sub esp, ecx
    jmp ._loop

    .i_sub_esp_edx:
    sub esp, edx
    jmp ._loop

    .i_sub_esp_esi:
    sub esp, esi
    jmp ._loop

    .i_sub_esp_edi:
    sub esp, edi
    jmp ._loop

    .i_sub_esp_esp:
    sub esp, esp
    jmp ._loop

    .i_sub_esp_ebp:
    sub esp, ebp
    jmp ._loop

    .i_sub_ebp_eax:
    sub ebp, eax
    jmp ._loop

    .i_sub_ebp_ecx:
    sub ebp, ecx
    jmp ._loop

    .i_sub_ebp_edx:
    sub ebp, edx
    jmp ._loop

    .i_sub_ebp_esi:
    sub ebp, esi
    jmp ._loop

    .i_sub_ebp_edi:
    sub ebp, edi
    jmp ._loop

    .i_sub_ebp_esp:
    sub ebp, esp
    jmp ._loop

    .i_sub_ebp_ebp:
    sub ebp, ebp
    jmp ._loop

    .i_sub_ax_ax:
    sub ax, ax
    jmp ._loop

    .i_sub_ax_cx:
    sub ax, cx
    jmp ._loop

    .i_sub_ax_dx:
    sub ax, dx
    jmp ._loop

    .i_sub_ax_si:
    sub ax, si
    jmp ._loop

    .i_sub_ax_di:
    sub ax, di
    jmp ._loop

    .i_sub_ax_sp:
    sub ax, sp
    jmp ._loop

    .i_sub_ax_bp:
    sub ax, bp
    jmp ._loop

    .i_sub_cx_ax:
    sub cx, ax
    jmp ._loop

    .i_sub_cx_cx:
    sub cx, cx
    jmp ._loop

    .i_sub_cx_dx:
    sub cx, dx
    jmp ._loop

    .i_sub_cx_si:
    sub cx, si
    jmp ._loop

    .i_sub_cx_di:
    sub cx, di
    jmp ._loop

    .i_sub_cx_sp:
    sub cx, sp
    jmp ._loop

    .i_sub_cx_bp:
    sub cx, bp
    jmp ._loop

    .i_sub_dx_ax:
    sub dx, ax
    jmp ._loop

    .i_sub_dx_cx:
    sub dx, cx
    jmp ._loop

    .i_sub_dx_dx:
    sub dx, dx
    jmp ._loop

    .i_sub_dx_si:
    sub dx, si
    jmp ._loop

    .i_sub_dx_di:
    sub dx, di
    jmp ._loop

    .i_sub_dx_sp:
    sub dx, sp
    jmp ._loop

    .i_sub_dx_bp:
    sub dx, bp
    jmp ._loop

    .i_sub_si_ax:
    sub si, ax
    jmp ._loop

    .i_sub_si_cx:
    sub si, cx
    jmp ._loop

    .i_sub_si_dx:
    sub si, dx
    jmp ._loop

    .i_sub_si_si:
    sub si, si
    jmp ._loop

    .i_sub_si_di:
    sub si, di
    jmp ._loop

    .i_sub_si_sp:
    sub si, sp
    jmp ._loop

    .i_sub_si_bp:
    sub si, bp
    jmp ._loop

    .i_sub_di_ax:
    sub di, ax
    jmp ._loop

    .i_sub_di_cx:
    sub di, cx
    jmp ._loop

    .i_sub_di_dx:
    sub di, dx
    jmp ._loop

    .i_sub_di_si:
    sub di, si
    jmp ._loop

    .i_sub_di_di:
    sub di, di
    jmp ._loop

    .i_sub_di_sp:
    sub di, sp
    jmp ._loop

    .i_sub_di_bp:
    sub di, bp
    jmp ._loop

    .i_sub_sp_ax:
    sub sp, ax
    jmp ._loop

    .i_sub_sp_cx:
    sub sp, cx
    jmp ._loop

    .i_sub_sp_dx:
    sub sp, dx
    jmp ._loop

    .i_sub_sp_si:
    sub sp, si
    jmp ._loop

    .i_sub_sp_di:
    sub sp, di
    jmp ._loop

    .i_sub_sp_sp:
    sub sp, sp
    jmp ._loop

    .i_sub_sp_bp:
    sub sp, bp
    jmp ._loop

    .i_sub_bp_ax:
    sub bp, ax
    jmp ._loop

    .i_sub_bp_cx:
    sub bp, cx
    jmp ._loop

    .i_sub_bp_dx:
    sub bp, dx
    jmp ._loop

    .i_sub_bp_si:
    sub bp, si
    jmp ._loop

    .i_sub_bp_di:
    sub bp, di
    jmp ._loop

    .i_sub_bp_sp:
    sub bp, sp
    jmp ._loop

    .i_sub_bp_bp:
    sub bp, bp
    jmp ._loop

    .i_sub_al_al:
    sub al, al
    jmp ._loop

    .i_sub_al_cl:
    sub al, cl
    jmp ._loop

    .i_sub_al_dl:
    sub al, dl
    jmp ._loop

    .i_sub_cl_al:
    sub cl, al
    jmp ._loop

    .i_sub_cl_cl:
    sub cl, cl
    jmp ._loop

    .i_sub_cl_dl:
    sub cl, dl
    jmp ._loop

    .i_sub_dl_al:
    sub dl, al
    jmp ._loop

    .i_sub_dl_cl:
    sub dl, cl
    jmp ._loop

    .i_sub_dl_dl:
    sub dl, dl
    jmp ._loop

    .i_imul_rax_rax:
    imul rax, rax
    jmp ._loop

    .i_imul_rax_rcx:
    imul rax, rcx
    jmp ._loop

    .i_imul_rax_rdx:
    imul rax, rdx
    jmp ._loop

    .i_imul_rax_r8:
    imul rax, r8
    jmp ._loop

    .i_imul_rax_r9:
    imul rax, r9
    jmp ._loop

    .i_imul_rax_r10:
    imul rax, r10
    jmp ._loop

    .i_imul_rax_r11:
    imul rax, r11
    jmp ._loop

    .i_imul_rax_r12:
    imul rax, r12
    jmp ._loop

    .i_imul_rax_r13:
    imul rax, r13
    jmp ._loop

    .i_imul_rax_rsi:
    imul rax, rsi
    jmp ._loop

    .i_imul_rax_rdi:
    imul rax, rdi
    jmp ._loop

    .i_imul_rax_rsp:
    imul rax, rsp
    jmp ._loop

    .i_imul_rax_rbp:
    imul rax, rbp
    jmp ._loop

    .i_imul_rcx_rax:
    imul rcx, rax
    jmp ._loop

    .i_imul_rcx_rcx:
    imul rcx, rcx
    jmp ._loop

    .i_imul_rcx_rdx:
    imul rcx, rdx
    jmp ._loop

    .i_imul_rcx_r8:
    imul rcx, r8
    jmp ._loop

    .i_imul_rcx_r9:
    imul rcx, r9
    jmp ._loop

    .i_imul_rcx_r10:
    imul rcx, r10
    jmp ._loop

    .i_imul_rcx_r11:
    imul rcx, r11
    jmp ._loop

    .i_imul_rcx_r12:
    imul rcx, r12
    jmp ._loop

    .i_imul_rcx_r13:
    imul rcx, r13
    jmp ._loop

    .i_imul_rcx_rsi:
    imul rcx, rsi
    jmp ._loop

    .i_imul_rcx_rdi:
    imul rcx, rdi
    jmp ._loop

    .i_imul_rcx_rsp:
    imul rcx, rsp
    jmp ._loop

    .i_imul_rcx_rbp:
    imul rcx, rbp
    jmp ._loop

    .i_imul_rdx_rax:
    imul rdx, rax
    jmp ._loop

    .i_imul_rdx_rcx:
    imul rdx, rcx
    jmp ._loop

    .i_imul_rdx_rdx:
    imul rdx, rdx
    jmp ._loop

    .i_imul_rdx_r8:
    imul rdx, r8
    jmp ._loop

    .i_imul_rdx_r9:
    imul rdx, r9
    jmp ._loop

    .i_imul_rdx_r10:
    imul rdx, r10
    jmp ._loop

    .i_imul_rdx_r11:
    imul rdx, r11
    jmp ._loop

    .i_imul_rdx_r12:
    imul rdx, r12
    jmp ._loop

    .i_imul_rdx_r13:
    imul rdx, r13
    jmp ._loop

    .i_imul_rdx_rsi:
    imul rdx, rsi
    jmp ._loop

    .i_imul_rdx_rdi:
    imul rdx, rdi
    jmp ._loop

    .i_imul_rdx_rsp:
    imul rdx, rsp
    jmp ._loop

    .i_imul_rdx_rbp:
    imul rdx, rbp
    jmp ._loop

    .i_imul_r8_rax:
    imul r8, rax
    jmp ._loop

    .i_imul_r8_rcx:
    imul r8, rcx
    jmp ._loop

    .i_imul_r8_rdx:
    imul r8, rdx
    jmp ._loop

    .i_imul_r8_r8:
    imul r8, r8
    jmp ._loop

    .i_imul_r8_r9:
    imul r8, r9
    jmp ._loop

    .i_imul_r8_r10:
    imul r8, r10
    jmp ._loop

    .i_imul_r8_r11:
    imul r8, r11
    jmp ._loop

    .i_imul_r8_r12:
    imul r8, r12
    jmp ._loop

    .i_imul_r8_r13:
    imul r8, r13
    jmp ._loop

    .i_imul_r8_rsi:
    imul r8, rsi
    jmp ._loop

    .i_imul_r8_rdi:
    imul r8, rdi
    jmp ._loop

    .i_imul_r8_rsp:
    imul r8, rsp
    jmp ._loop

    .i_imul_r8_rbp:
    imul r8, rbp
    jmp ._loop

    .i_imul_r9_rax:
    imul r9, rax
    jmp ._loop

    .i_imul_r9_rcx:
    imul r9, rcx
    jmp ._loop

    .i_imul_r9_rdx:
    imul r9, rdx
    jmp ._loop

    .i_imul_r9_r8:
    imul r9, r8
    jmp ._loop

    .i_imul_r9_r9:
    imul r9, r9
    jmp ._loop

    .i_imul_r9_r10:
    imul r9, r10
    jmp ._loop

    .i_imul_r9_r11:
    imul r9, r11
    jmp ._loop

    .i_imul_r9_r12:
    imul r9, r12
    jmp ._loop

    .i_imul_r9_r13:
    imul r9, r13
    jmp ._loop

    .i_imul_r9_rsi:
    imul r9, rsi
    jmp ._loop

    .i_imul_r9_rdi:
    imul r9, rdi
    jmp ._loop

    .i_imul_r9_rsp:
    imul r9, rsp
    jmp ._loop

    .i_imul_r9_rbp:
    imul r9, rbp
    jmp ._loop

    .i_imul_r10_rax:
    imul r10, rax
    jmp ._loop

    .i_imul_r10_rcx:
    imul r10, rcx
    jmp ._loop

    .i_imul_r10_rdx:
    imul r10, rdx
    jmp ._loop

    .i_imul_r10_r8:
    imul r10, r8
    jmp ._loop

    .i_imul_r10_r9:
    imul r10, r9
    jmp ._loop

    .i_imul_r10_r10:
    imul r10, r10
    jmp ._loop

    .i_imul_r10_r11:
    imul r10, r11
    jmp ._loop

    .i_imul_r10_r12:
    imul r10, r12
    jmp ._loop

    .i_imul_r10_r13:
    imul r10, r13
    jmp ._loop

    .i_imul_r10_rsi:
    imul r10, rsi
    jmp ._loop

    .i_imul_r10_rdi:
    imul r10, rdi
    jmp ._loop

    .i_imul_r10_rsp:
    imul r10, rsp
    jmp ._loop

    .i_imul_r10_rbp:
    imul r10, rbp
    jmp ._loop

    .i_imul_r11_rax:
    imul r11, rax
    jmp ._loop

    .i_imul_r11_rcx:
    imul r11, rcx
    jmp ._loop

    .i_imul_r11_rdx:
    imul r11, rdx
    jmp ._loop

    .i_imul_r11_r8:
    imul r11, r8
    jmp ._loop

    .i_imul_r11_r9:
    imul r11, r9
    jmp ._loop

    .i_imul_r11_r10:
    imul r11, r10
    jmp ._loop

    .i_imul_r11_r11:
    imul r11, r11
    jmp ._loop

    .i_imul_r11_r12:
    imul r11, r12
    jmp ._loop

    .i_imul_r11_r13:
    imul r11, r13
    jmp ._loop

    .i_imul_r11_rsi:
    imul r11, rsi
    jmp ._loop

    .i_imul_r11_rdi:
    imul r11, rdi
    jmp ._loop

    .i_imul_r11_rsp:
    imul r11, rsp
    jmp ._loop

    .i_imul_r11_rbp:
    imul r11, rbp
    jmp ._loop

    .i_imul_r12_rax:
    imul r12, rax
    jmp ._loop

    .i_imul_r12_rcx:
    imul r12, rcx
    jmp ._loop

    .i_imul_r12_rdx:
    imul r12, rdx
    jmp ._loop

    .i_imul_r12_r8:
    imul r12, r8
    jmp ._loop

    .i_imul_r12_r9:
    imul r12, r9
    jmp ._loop

    .i_imul_r12_r10:
    imul r12, r10
    jmp ._loop

    .i_imul_r12_r11:
    imul r12, r11
    jmp ._loop

    .i_imul_r12_r12:
    imul r12, r12
    jmp ._loop

    .i_imul_r12_r13:
    imul r12, r13
    jmp ._loop

    .i_imul_r12_rsi:
    imul r12, rsi
    jmp ._loop

    .i_imul_r12_rdi:
    imul r12, rdi
    jmp ._loop

    .i_imul_r12_rsp:
    imul r12, rsp
    jmp ._loop

    .i_imul_r12_rbp:
    imul r12, rbp
    jmp ._loop

    .i_imul_r13_rax:
    imul r13, rax
    jmp ._loop

    .i_imul_r13_rcx:
    imul r13, rcx
    jmp ._loop

    .i_imul_r13_rdx:
    imul r13, rdx
    jmp ._loop

    .i_imul_r13_r8:
    imul r13, r8
    jmp ._loop

    .i_imul_r13_r9:
    imul r13, r9
    jmp ._loop

    .i_imul_r13_r10:
    imul r13, r10
    jmp ._loop

    .i_imul_r13_r11:
    imul r13, r11
    jmp ._loop

    .i_imul_r13_r12:
    imul r13, r12
    jmp ._loop

    .i_imul_r13_r13:
    imul r13, r13
    jmp ._loop

    .i_imul_r13_rsi:
    imul r13, rsi
    jmp ._loop

    .i_imul_r13_rdi:
    imul r13, rdi
    jmp ._loop

    .i_imul_r13_rsp:
    imul r13, rsp
    jmp ._loop

    .i_imul_r13_rbp:
    imul r13, rbp
    jmp ._loop

    .i_imul_rsi_rax:
    imul rsi, rax
    jmp ._loop

    .i_imul_rsi_rcx:
    imul rsi, rcx
    jmp ._loop

    .i_imul_rsi_rdx:
    imul rsi, rdx
    jmp ._loop

    .i_imul_rsi_r8:
    imul rsi, r8
    jmp ._loop

    .i_imul_rsi_r9:
    imul rsi, r9
    jmp ._loop

    .i_imul_rsi_r10:
    imul rsi, r10
    jmp ._loop

    .i_imul_rsi_r11:
    imul rsi, r11
    jmp ._loop

    .i_imul_rsi_r12:
    imul rsi, r12
    jmp ._loop

    .i_imul_rsi_r13:
    imul rsi, r13
    jmp ._loop

    .i_imul_rsi_rsi:
    imul rsi, rsi
    jmp ._loop

    .i_imul_rsi_rdi:
    imul rsi, rdi
    jmp ._loop

    .i_imul_rsi_rsp:
    imul rsi, rsp
    jmp ._loop

    .i_imul_rsi_rbp:
    imul rsi, rbp
    jmp ._loop

    .i_imul_rdi_rax:
    imul rdi, rax
    jmp ._loop

    .i_imul_rdi_rcx:
    imul rdi, rcx
    jmp ._loop

    .i_imul_rdi_rdx:
    imul rdi, rdx
    jmp ._loop

    .i_imul_rdi_r8:
    imul rdi, r8
    jmp ._loop

    .i_imul_rdi_r9:
    imul rdi, r9
    jmp ._loop

    .i_imul_rdi_r10:
    imul rdi, r10
    jmp ._loop

    .i_imul_rdi_r11:
    imul rdi, r11
    jmp ._loop

    .i_imul_rdi_r12:
    imul rdi, r12
    jmp ._loop

    .i_imul_rdi_r13:
    imul rdi, r13
    jmp ._loop

    .i_imul_rdi_rsi:
    imul rdi, rsi
    jmp ._loop

    .i_imul_rdi_rdi:
    imul rdi, rdi
    jmp ._loop

    .i_imul_rdi_rsp:
    imul rdi, rsp
    jmp ._loop

    .i_imul_rdi_rbp:
    imul rdi, rbp
    jmp ._loop

    .i_imul_rsp_rax:
    imul rsp, rax
    jmp ._loop

    .i_imul_rsp_rcx:
    imul rsp, rcx
    jmp ._loop

    .i_imul_rsp_rdx:
    imul rsp, rdx
    jmp ._loop

    .i_imul_rsp_r8:
    imul rsp, r8
    jmp ._loop

    .i_imul_rsp_r9:
    imul rsp, r9
    jmp ._loop

    .i_imul_rsp_r10:
    imul rsp, r10
    jmp ._loop

    .i_imul_rsp_r11:
    imul rsp, r11
    jmp ._loop

    .i_imul_rsp_r12:
    imul rsp, r12
    jmp ._loop

    .i_imul_rsp_r13:
    imul rsp, r13
    jmp ._loop

    .i_imul_rsp_rsi:
    imul rsp, rsi
    jmp ._loop

    .i_imul_rsp_rdi:
    imul rsp, rdi
    jmp ._loop

    .i_imul_rsp_rsp:
    imul rsp, rsp
    jmp ._loop

    .i_imul_rsp_rbp:
    imul rsp, rbp
    jmp ._loop

    .i_imul_rbp_rax:
    imul rbp, rax
    jmp ._loop

    .i_imul_rbp_rcx:
    imul rbp, rcx
    jmp ._loop

    .i_imul_rbp_rdx:
    imul rbp, rdx
    jmp ._loop

    .i_imul_rbp_r8:
    imul rbp, r8
    jmp ._loop

    .i_imul_rbp_r9:
    imul rbp, r9
    jmp ._loop

    .i_imul_rbp_r10:
    imul rbp, r10
    jmp ._loop

    .i_imul_rbp_r11:
    imul rbp, r11
    jmp ._loop

    .i_imul_rbp_r12:
    imul rbp, r12
    jmp ._loop

    .i_imul_rbp_r13:
    imul rbp, r13
    jmp ._loop

    .i_imul_rbp_rsi:
    imul rbp, rsi
    jmp ._loop

    .i_imul_rbp_rdi:
    imul rbp, rdi
    jmp ._loop

    .i_imul_rbp_rsp:
    imul rbp, rsp
    jmp ._loop

    .i_imul_rbp_rbp:
    imul rbp, rbp
    jmp ._loop

    .i_imul_eax_eax:
    imul eax, eax
    jmp ._loop

    .i_imul_eax_ecx:
    imul eax, ecx
    jmp ._loop

    .i_imul_eax_edx:
    imul eax, edx
    jmp ._loop

    .i_imul_eax_esi:
    imul eax, esi
    jmp ._loop

    .i_imul_eax_edi:
    imul eax, edi
    jmp ._loop

    .i_imul_eax_esp:
    imul eax, esp
    jmp ._loop

    .i_imul_eax_ebp:
    imul eax, ebp
    jmp ._loop

    .i_imul_ecx_eax:
    imul ecx, eax
    jmp ._loop

    .i_imul_ecx_ecx:
    imul ecx, ecx
    jmp ._loop

    .i_imul_ecx_edx:
    imul ecx, edx
    jmp ._loop

    .i_imul_ecx_esi:
    imul ecx, esi
    jmp ._loop

    .i_imul_ecx_edi:
    imul ecx, edi
    jmp ._loop

    .i_imul_ecx_esp:
    imul ecx, esp
    jmp ._loop

    .i_imul_ecx_ebp:
    imul ecx, ebp
    jmp ._loop

    .i_imul_edx_eax:
    imul edx, eax
    jmp ._loop

    .i_imul_edx_ecx:
    imul edx, ecx
    jmp ._loop

    .i_imul_edx_edx:
    imul edx, edx
    jmp ._loop

    .i_imul_edx_esi:
    imul edx, esi
    jmp ._loop

    .i_imul_edx_edi:
    imul edx, edi
    jmp ._loop

    .i_imul_edx_esp:
    imul edx, esp
    jmp ._loop

    .i_imul_edx_ebp:
    imul edx, ebp
    jmp ._loop

    .i_imul_esi_eax:
    imul esi, eax
    jmp ._loop

    .i_imul_esi_ecx:
    imul esi, ecx
    jmp ._loop

    .i_imul_esi_edx:
    imul esi, edx
    jmp ._loop

    .i_imul_esi_esi:
    imul esi, esi
    jmp ._loop

    .i_imul_esi_edi:
    imul esi, edi
    jmp ._loop

    .i_imul_esi_esp:
    imul esi, esp
    jmp ._loop

    .i_imul_esi_ebp:
    imul esi, ebp
    jmp ._loop

    .i_imul_edi_eax:
    imul edi, eax
    jmp ._loop

    .i_imul_edi_ecx:
    imul edi, ecx
    jmp ._loop

    .i_imul_edi_edx:
    imul edi, edx
    jmp ._loop

    .i_imul_edi_esi:
    imul edi, esi
    jmp ._loop

    .i_imul_edi_edi:
    imul edi, edi
    jmp ._loop

    .i_imul_edi_esp:
    imul edi, esp
    jmp ._loop

    .i_imul_edi_ebp:
    imul edi, ebp
    jmp ._loop

    .i_imul_esp_eax:
    imul esp, eax
    jmp ._loop

    .i_imul_esp_ecx:
    imul esp, ecx
    jmp ._loop

    .i_imul_esp_edx:
    imul esp, edx
    jmp ._loop

    .i_imul_esp_esi:
    imul esp, esi
    jmp ._loop

    .i_imul_esp_edi:
    imul esp, edi
    jmp ._loop

    .i_imul_esp_esp:
    imul esp, esp
    jmp ._loop

    .i_imul_esp_ebp:
    imul esp, ebp
    jmp ._loop

    .i_imul_ebp_eax:
    imul ebp, eax
    jmp ._loop

    .i_imul_ebp_ecx:
    imul ebp, ecx
    jmp ._loop

    .i_imul_ebp_edx:
    imul ebp, edx
    jmp ._loop

    .i_imul_ebp_esi:
    imul ebp, esi
    jmp ._loop

    .i_imul_ebp_edi:
    imul ebp, edi
    jmp ._loop

    .i_imul_ebp_esp:
    imul ebp, esp
    jmp ._loop

    .i_imul_ebp_ebp:
    imul ebp, ebp
    jmp ._loop

    .i_imul_ax_ax:
    imul ax, ax
    jmp ._loop

    .i_imul_ax_cx:
    imul ax, cx
    jmp ._loop

    .i_imul_ax_dx:
    imul ax, dx
    jmp ._loop

    .i_imul_ax_si:
    imul ax, si
    jmp ._loop

    .i_imul_ax_di:
    imul ax, di
    jmp ._loop

    .i_imul_ax_sp:
    imul ax, sp
    jmp ._loop

    .i_imul_ax_bp:
    imul ax, bp
    jmp ._loop

    .i_imul_cx_ax:
    imul cx, ax
    jmp ._loop

    .i_imul_cx_cx:
    imul cx, cx
    jmp ._loop

    .i_imul_cx_dx:
    imul cx, dx
    jmp ._loop

    .i_imul_cx_si:
    imul cx, si
    jmp ._loop

    .i_imul_cx_di:
    imul cx, di
    jmp ._loop

    .i_imul_cx_sp:
    imul cx, sp
    jmp ._loop

    .i_imul_cx_bp:
    imul cx, bp
    jmp ._loop

    .i_imul_dx_ax:
    imul dx, ax
    jmp ._loop

    .i_imul_dx_cx:
    imul dx, cx
    jmp ._loop

    .i_imul_dx_dx:
    imul dx, dx
    jmp ._loop

    .i_imul_dx_si:
    imul dx, si
    jmp ._loop

    .i_imul_dx_di:
    imul dx, di
    jmp ._loop

    .i_imul_dx_sp:
    imul dx, sp
    jmp ._loop

    .i_imul_dx_bp:
    imul dx, bp
    jmp ._loop

    .i_imul_si_ax:
    imul si, ax
    jmp ._loop

    .i_imul_si_cx:
    imul si, cx
    jmp ._loop

    .i_imul_si_dx:
    imul si, dx
    jmp ._loop

    .i_imul_si_si:
    imul si, si
    jmp ._loop

    .i_imul_si_di:
    imul si, di
    jmp ._loop

    .i_imul_si_sp:
    imul si, sp
    jmp ._loop

    .i_imul_si_bp:
    imul si, bp
    jmp ._loop

    .i_imul_di_ax:
    imul di, ax
    jmp ._loop

    .i_imul_di_cx:
    imul di, cx
    jmp ._loop

    .i_imul_di_dx:
    imul di, dx
    jmp ._loop

    .i_imul_di_si:
    imul di, si
    jmp ._loop

    .i_imul_di_di:
    imul di, di
    jmp ._loop

    .i_imul_di_sp:
    imul di, sp
    jmp ._loop

    .i_imul_di_bp:
    imul di, bp
    jmp ._loop

    .i_imul_sp_ax:
    imul sp, ax
    jmp ._loop

    .i_imul_sp_cx:
    imul sp, cx
    jmp ._loop

    .i_imul_sp_dx:
    imul sp, dx
    jmp ._loop

    .i_imul_sp_si:
    imul sp, si
    jmp ._loop

    .i_imul_sp_di:
    imul sp, di
    jmp ._loop

    .i_imul_sp_sp:
    imul sp, sp
    jmp ._loop

    .i_imul_sp_bp:
    imul sp, bp
    jmp ._loop

    .i_imul_bp_ax:
    imul bp, ax
    jmp ._loop

    .i_imul_bp_cx:
    imul bp, cx
    jmp ._loop

    .i_imul_bp_dx:
    imul bp, dx
    jmp ._loop

    .i_imul_bp_si:
    imul bp, si
    jmp ._loop

    .i_imul_bp_di:
    imul bp, di
    jmp ._loop

    .i_imul_bp_sp:
    imul bp, sp
    jmp ._loop

    .i_imul_bp_bp:
    imul bp, bp
    jmp ._loop

    .i_and_rax_rax:
    and rax, rax
    jmp ._loop

    .i_and_rax_rcx:
    and rax, rcx
    jmp ._loop

    .i_and_rax_rdx:
    and rax, rdx
    jmp ._loop

    .i_and_rax_r8:
    and rax, r8
    jmp ._loop

    .i_and_rax_r9:
    and rax, r9
    jmp ._loop

    .i_and_rax_r10:
    and rax, r10
    jmp ._loop

    .i_and_rax_r11:
    and rax, r11
    jmp ._loop

    .i_and_rax_r12:
    and rax, r12
    jmp ._loop

    .i_and_rax_r13:
    and rax, r13
    jmp ._loop

    .i_and_rax_rsi:
    and rax, rsi
    jmp ._loop

    .i_and_rax_rdi:
    and rax, rdi
    jmp ._loop

    .i_and_rax_rsp:
    and rax, rsp
    jmp ._loop

    .i_and_rax_rbp:
    and rax, rbp
    jmp ._loop

    .i_and_rcx_rax:
    and rcx, rax
    jmp ._loop

    .i_and_rcx_rcx:
    and rcx, rcx
    jmp ._loop

    .i_and_rcx_rdx:
    and rcx, rdx
    jmp ._loop

    .i_and_rcx_r8:
    and rcx, r8
    jmp ._loop

    .i_and_rcx_r9:
    and rcx, r9
    jmp ._loop

    .i_and_rcx_r10:
    and rcx, r10
    jmp ._loop

    .i_and_rcx_r11:
    and rcx, r11
    jmp ._loop

    .i_and_rcx_r12:
    and rcx, r12
    jmp ._loop

    .i_and_rcx_r13:
    and rcx, r13
    jmp ._loop

    .i_and_rcx_rsi:
    and rcx, rsi
    jmp ._loop

    .i_and_rcx_rdi:
    and rcx, rdi
    jmp ._loop

    .i_and_rcx_rsp:
    and rcx, rsp
    jmp ._loop

    .i_and_rcx_rbp:
    and rcx, rbp
    jmp ._loop

    .i_and_rdx_rax:
    and rdx, rax
    jmp ._loop

    .i_and_rdx_rcx:
    and rdx, rcx
    jmp ._loop

    .i_and_rdx_rdx:
    and rdx, rdx
    jmp ._loop

    .i_and_rdx_r8:
    and rdx, r8
    jmp ._loop

    .i_and_rdx_r9:
    and rdx, r9
    jmp ._loop

    .i_and_rdx_r10:
    and rdx, r10
    jmp ._loop

    .i_and_rdx_r11:
    and rdx, r11
    jmp ._loop

    .i_and_rdx_r12:
    and rdx, r12
    jmp ._loop

    .i_and_rdx_r13:
    and rdx, r13
    jmp ._loop

    .i_and_rdx_rsi:
    and rdx, rsi
    jmp ._loop

    .i_and_rdx_rdi:
    and rdx, rdi
    jmp ._loop

    .i_and_rdx_rsp:
    and rdx, rsp
    jmp ._loop

    .i_and_rdx_rbp:
    and rdx, rbp
    jmp ._loop

    .i_and_r8_rax:
    and r8, rax
    jmp ._loop

    .i_and_r8_rcx:
    and r8, rcx
    jmp ._loop

    .i_and_r8_rdx:
    and r8, rdx
    jmp ._loop

    .i_and_r8_r8:
    and r8, r8
    jmp ._loop

    .i_and_r8_r9:
    and r8, r9
    jmp ._loop

    .i_and_r8_r10:
    and r8, r10
    jmp ._loop

    .i_and_r8_r11:
    and r8, r11
    jmp ._loop

    .i_and_r8_r12:
    and r8, r12
    jmp ._loop

    .i_and_r8_r13:
    and r8, r13
    jmp ._loop

    .i_and_r8_rsi:
    and r8, rsi
    jmp ._loop

    .i_and_r8_rdi:
    and r8, rdi
    jmp ._loop

    .i_and_r8_rsp:
    and r8, rsp
    jmp ._loop

    .i_and_r8_rbp:
    and r8, rbp
    jmp ._loop

    .i_and_r9_rax:
    and r9, rax
    jmp ._loop

    .i_and_r9_rcx:
    and r9, rcx
    jmp ._loop

    .i_and_r9_rdx:
    and r9, rdx
    jmp ._loop

    .i_and_r9_r8:
    and r9, r8
    jmp ._loop

    .i_and_r9_r9:
    and r9, r9
    jmp ._loop

    .i_and_r9_r10:
    and r9, r10
    jmp ._loop

    .i_and_r9_r11:
    and r9, r11
    jmp ._loop

    .i_and_r9_r12:
    and r9, r12
    jmp ._loop

    .i_and_r9_r13:
    and r9, r13
    jmp ._loop

    .i_and_r9_rsi:
    and r9, rsi
    jmp ._loop

    .i_and_r9_rdi:
    and r9, rdi
    jmp ._loop

    .i_and_r9_rsp:
    and r9, rsp
    jmp ._loop

    .i_and_r9_rbp:
    and r9, rbp
    jmp ._loop

    .i_and_r10_rax:
    and r10, rax
    jmp ._loop

    .i_and_r10_rcx:
    and r10, rcx
    jmp ._loop

    .i_and_r10_rdx:
    and r10, rdx
    jmp ._loop

    .i_and_r10_r8:
    and r10, r8
    jmp ._loop

    .i_and_r10_r9:
    and r10, r9
    jmp ._loop

    .i_and_r10_r10:
    and r10, r10
    jmp ._loop

    .i_and_r10_r11:
    and r10, r11
    jmp ._loop

    .i_and_r10_r12:
    and r10, r12
    jmp ._loop

    .i_and_r10_r13:
    and r10, r13
    jmp ._loop

    .i_and_r10_rsi:
    and r10, rsi
    jmp ._loop

    .i_and_r10_rdi:
    and r10, rdi
    jmp ._loop

    .i_and_r10_rsp:
    and r10, rsp
    jmp ._loop

    .i_and_r10_rbp:
    and r10, rbp
    jmp ._loop

    .i_and_r11_rax:
    and r11, rax
    jmp ._loop

    .i_and_r11_rcx:
    and r11, rcx
    jmp ._loop

    .i_and_r11_rdx:
    and r11, rdx
    jmp ._loop

    .i_and_r11_r8:
    and r11, r8
    jmp ._loop

    .i_and_r11_r9:
    and r11, r9
    jmp ._loop

    .i_and_r11_r10:
    and r11, r10
    jmp ._loop

    .i_and_r11_r11:
    and r11, r11
    jmp ._loop

    .i_and_r11_r12:
    and r11, r12
    jmp ._loop

    .i_and_r11_r13:
    and r11, r13
    jmp ._loop

    .i_and_r11_rsi:
    and r11, rsi
    jmp ._loop

    .i_and_r11_rdi:
    and r11, rdi
    jmp ._loop

    .i_and_r11_rsp:
    and r11, rsp
    jmp ._loop

    .i_and_r11_rbp:
    and r11, rbp
    jmp ._loop

    .i_and_r12_rax:
    and r12, rax
    jmp ._loop

    .i_and_r12_rcx:
    and r12, rcx
    jmp ._loop

    .i_and_r12_rdx:
    and r12, rdx
    jmp ._loop

    .i_and_r12_r8:
    and r12, r8
    jmp ._loop

    .i_and_r12_r9:
    and r12, r9
    jmp ._loop

    .i_and_r12_r10:
    and r12, r10
    jmp ._loop

    .i_and_r12_r11:
    and r12, r11
    jmp ._loop

    .i_and_r12_r12:
    and r12, r12
    jmp ._loop

    .i_and_r12_r13:
    and r12, r13
    jmp ._loop

    .i_and_r12_rsi:
    and r12, rsi
    jmp ._loop

    .i_and_r12_rdi:
    and r12, rdi
    jmp ._loop

    .i_and_r12_rsp:
    and r12, rsp
    jmp ._loop

    .i_and_r12_rbp:
    and r12, rbp
    jmp ._loop

    .i_and_r13_rax:
    and r13, rax
    jmp ._loop

    .i_and_r13_rcx:
    and r13, rcx
    jmp ._loop

    .i_and_r13_rdx:
    and r13, rdx
    jmp ._loop

    .i_and_r13_r8:
    and r13, r8
    jmp ._loop

    .i_and_r13_r9:
    and r13, r9
    jmp ._loop

    .i_and_r13_r10:
    and r13, r10
    jmp ._loop

    .i_and_r13_r11:
    and r13, r11
    jmp ._loop

    .i_and_r13_r12:
    and r13, r12
    jmp ._loop

    .i_and_r13_r13:
    and r13, r13
    jmp ._loop

    .i_and_r13_rsi:
    and r13, rsi
    jmp ._loop

    .i_and_r13_rdi:
    and r13, rdi
    jmp ._loop

    .i_and_r13_rsp:
    and r13, rsp
    jmp ._loop

    .i_and_r13_rbp:
    and r13, rbp
    jmp ._loop

    .i_and_rsi_rax:
    and rsi, rax
    jmp ._loop

    .i_and_rsi_rcx:
    and rsi, rcx
    jmp ._loop

    .i_and_rsi_rdx:
    and rsi, rdx
    jmp ._loop

    .i_and_rsi_r8:
    and rsi, r8
    jmp ._loop

    .i_and_rsi_r9:
    and rsi, r9
    jmp ._loop

    .i_and_rsi_r10:
    and rsi, r10
    jmp ._loop

    .i_and_rsi_r11:
    and rsi, r11
    jmp ._loop

    .i_and_rsi_r12:
    and rsi, r12
    jmp ._loop

    .i_and_rsi_r13:
    and rsi, r13
    jmp ._loop

    .i_and_rsi_rsi:
    and rsi, rsi
    jmp ._loop

    .i_and_rsi_rdi:
    and rsi, rdi
    jmp ._loop

    .i_and_rsi_rsp:
    and rsi, rsp
    jmp ._loop

    .i_and_rsi_rbp:
    and rsi, rbp
    jmp ._loop

    .i_and_rdi_rax:
    and rdi, rax
    jmp ._loop

    .i_and_rdi_rcx:
    and rdi, rcx
    jmp ._loop

    .i_and_rdi_rdx:
    and rdi, rdx
    jmp ._loop

    .i_and_rdi_r8:
    and rdi, r8
    jmp ._loop

    .i_and_rdi_r9:
    and rdi, r9
    jmp ._loop

    .i_and_rdi_r10:
    and rdi, r10
    jmp ._loop

    .i_and_rdi_r11:
    and rdi, r11
    jmp ._loop

    .i_and_rdi_r12:
    and rdi, r12
    jmp ._loop

    .i_and_rdi_r13:
    and rdi, r13
    jmp ._loop

    .i_and_rdi_rsi:
    and rdi, rsi
    jmp ._loop

    .i_and_rdi_rdi:
    and rdi, rdi
    jmp ._loop

    .i_and_rdi_rsp:
    and rdi, rsp
    jmp ._loop

    .i_and_rdi_rbp:
    and rdi, rbp
    jmp ._loop

    .i_and_rsp_rax:
    and rsp, rax
    jmp ._loop

    .i_and_rsp_rcx:
    and rsp, rcx
    jmp ._loop

    .i_and_rsp_rdx:
    and rsp, rdx
    jmp ._loop

    .i_and_rsp_r8:
    and rsp, r8
    jmp ._loop

    .i_and_rsp_r9:
    and rsp, r9
    jmp ._loop

    .i_and_rsp_r10:
    and rsp, r10
    jmp ._loop

    .i_and_rsp_r11:
    and rsp, r11
    jmp ._loop

    .i_and_rsp_r12:
    and rsp, r12
    jmp ._loop

    .i_and_rsp_r13:
    and rsp, r13
    jmp ._loop

    .i_and_rsp_rsi:
    and rsp, rsi
    jmp ._loop

    .i_and_rsp_rdi:
    and rsp, rdi
    jmp ._loop

    .i_and_rsp_rsp:
    and rsp, rsp
    jmp ._loop

    .i_and_rsp_rbp:
    and rsp, rbp
    jmp ._loop

    .i_and_rbp_rax:
    and rbp, rax
    jmp ._loop

    .i_and_rbp_rcx:
    and rbp, rcx
    jmp ._loop

    .i_and_rbp_rdx:
    and rbp, rdx
    jmp ._loop

    .i_and_rbp_r8:
    and rbp, r8
    jmp ._loop

    .i_and_rbp_r9:
    and rbp, r9
    jmp ._loop

    .i_and_rbp_r10:
    and rbp, r10
    jmp ._loop

    .i_and_rbp_r11:
    and rbp, r11
    jmp ._loop

    .i_and_rbp_r12:
    and rbp, r12
    jmp ._loop

    .i_and_rbp_r13:
    and rbp, r13
    jmp ._loop

    .i_and_rbp_rsi:
    and rbp, rsi
    jmp ._loop

    .i_and_rbp_rdi:
    and rbp, rdi
    jmp ._loop

    .i_and_rbp_rsp:
    and rbp, rsp
    jmp ._loop

    .i_and_rbp_rbp:
    and rbp, rbp
    jmp ._loop

    .i_and_eax_eax:
    and eax, eax
    jmp ._loop

    .i_and_eax_ecx:
    and eax, ecx
    jmp ._loop

    .i_and_eax_edx:
    and eax, edx
    jmp ._loop

    .i_and_eax_esi:
    and eax, esi
    jmp ._loop

    .i_and_eax_edi:
    and eax, edi
    jmp ._loop

    .i_and_eax_esp:
    and eax, esp
    jmp ._loop

    .i_and_eax_ebp:
    and eax, ebp
    jmp ._loop

    .i_and_ecx_eax:
    and ecx, eax
    jmp ._loop

    .i_and_ecx_ecx:
    and ecx, ecx
    jmp ._loop

    .i_and_ecx_edx:
    and ecx, edx
    jmp ._loop

    .i_and_ecx_esi:
    and ecx, esi
    jmp ._loop

    .i_and_ecx_edi:
    and ecx, edi
    jmp ._loop

    .i_and_ecx_esp:
    and ecx, esp
    jmp ._loop

    .i_and_ecx_ebp:
    and ecx, ebp
    jmp ._loop

    .i_and_edx_eax:
    and edx, eax
    jmp ._loop

    .i_and_edx_ecx:
    and edx, ecx
    jmp ._loop

    .i_and_edx_edx:
    and edx, edx
    jmp ._loop

    .i_and_edx_esi:
    and edx, esi
    jmp ._loop

    .i_and_edx_edi:
    and edx, edi
    jmp ._loop

    .i_and_edx_esp:
    and edx, esp
    jmp ._loop

    .i_and_edx_ebp:
    and edx, ebp
    jmp ._loop

    .i_and_esi_eax:
    and esi, eax
    jmp ._loop

    .i_and_esi_ecx:
    and esi, ecx
    jmp ._loop

    .i_and_esi_edx:
    and esi, edx
    jmp ._loop

    .i_and_esi_esi:
    and esi, esi
    jmp ._loop

    .i_and_esi_edi:
    and esi, edi
    jmp ._loop

    .i_and_esi_esp:
    and esi, esp
    jmp ._loop

    .i_and_esi_ebp:
    and esi, ebp
    jmp ._loop

    .i_and_edi_eax:
    and edi, eax
    jmp ._loop

    .i_and_edi_ecx:
    and edi, ecx
    jmp ._loop

    .i_and_edi_edx:
    and edi, edx
    jmp ._loop

    .i_and_edi_esi:
    and edi, esi
    jmp ._loop

    .i_and_edi_edi:
    and edi, edi
    jmp ._loop

    .i_and_edi_esp:
    and edi, esp
    jmp ._loop

    .i_and_edi_ebp:
    and edi, ebp
    jmp ._loop

    .i_and_esp_eax:
    and esp, eax
    jmp ._loop

    .i_and_esp_ecx:
    and esp, ecx
    jmp ._loop

    .i_and_esp_edx:
    and esp, edx
    jmp ._loop

    .i_and_esp_esi:
    and esp, esi
    jmp ._loop

    .i_and_esp_edi:
    and esp, edi
    jmp ._loop

    .i_and_esp_esp:
    and esp, esp
    jmp ._loop

    .i_and_esp_ebp:
    and esp, ebp
    jmp ._loop

    .i_and_ebp_eax:
    and ebp, eax
    jmp ._loop

    .i_and_ebp_ecx:
    and ebp, ecx
    jmp ._loop

    .i_and_ebp_edx:
    and ebp, edx
    jmp ._loop

    .i_and_ebp_esi:
    and ebp, esi
    jmp ._loop

    .i_and_ebp_edi:
    and ebp, edi
    jmp ._loop

    .i_and_ebp_esp:
    and ebp, esp
    jmp ._loop

    .i_and_ebp_ebp:
    and ebp, ebp
    jmp ._loop

    .i_and_ax_ax:
    and ax, ax
    jmp ._loop

    .i_and_ax_cx:
    and ax, cx
    jmp ._loop

    .i_and_ax_dx:
    and ax, dx
    jmp ._loop

    .i_and_ax_si:
    and ax, si
    jmp ._loop

    .i_and_ax_di:
    and ax, di
    jmp ._loop

    .i_and_ax_sp:
    and ax, sp
    jmp ._loop

    .i_and_ax_bp:
    and ax, bp
    jmp ._loop

    .i_and_cx_ax:
    and cx, ax
    jmp ._loop

    .i_and_cx_cx:
    and cx, cx
    jmp ._loop

    .i_and_cx_dx:
    and cx, dx
    jmp ._loop

    .i_and_cx_si:
    and cx, si
    jmp ._loop

    .i_and_cx_di:
    and cx, di
    jmp ._loop

    .i_and_cx_sp:
    and cx, sp
    jmp ._loop

    .i_and_cx_bp:
    and cx, bp
    jmp ._loop

    .i_and_dx_ax:
    and dx, ax
    jmp ._loop

    .i_and_dx_cx:
    and dx, cx
    jmp ._loop

    .i_and_dx_dx:
    and dx, dx
    jmp ._loop

    .i_and_dx_si:
    and dx, si
    jmp ._loop

    .i_and_dx_di:
    and dx, di
    jmp ._loop

    .i_and_dx_sp:
    and dx, sp
    jmp ._loop

    .i_and_dx_bp:
    and dx, bp
    jmp ._loop

    .i_and_si_ax:
    and si, ax
    jmp ._loop

    .i_and_si_cx:
    and si, cx
    jmp ._loop

    .i_and_si_dx:
    and si, dx
    jmp ._loop

    .i_and_si_si:
    and si, si
    jmp ._loop

    .i_and_si_di:
    and si, di
    jmp ._loop

    .i_and_si_sp:
    and si, sp
    jmp ._loop

    .i_and_si_bp:
    and si, bp
    jmp ._loop

    .i_and_di_ax:
    and di, ax
    jmp ._loop

    .i_and_di_cx:
    and di, cx
    jmp ._loop

    .i_and_di_dx:
    and di, dx
    jmp ._loop

    .i_and_di_si:
    and di, si
    jmp ._loop

    .i_and_di_di:
    and di, di
    jmp ._loop

    .i_and_di_sp:
    and di, sp
    jmp ._loop

    .i_and_di_bp:
    and di, bp
    jmp ._loop

    .i_and_sp_ax:
    and sp, ax
    jmp ._loop

    .i_and_sp_cx:
    and sp, cx
    jmp ._loop

    .i_and_sp_dx:
    and sp, dx
    jmp ._loop

    .i_and_sp_si:
    and sp, si
    jmp ._loop

    .i_and_sp_di:
    and sp, di
    jmp ._loop

    .i_and_sp_sp:
    and sp, sp
    jmp ._loop

    .i_and_sp_bp:
    and sp, bp
    jmp ._loop

    .i_and_bp_ax:
    and bp, ax
    jmp ._loop

    .i_and_bp_cx:
    and bp, cx
    jmp ._loop

    .i_and_bp_dx:
    and bp, dx
    jmp ._loop

    .i_and_bp_si:
    and bp, si
    jmp ._loop

    .i_and_bp_di:
    and bp, di
    jmp ._loop

    .i_and_bp_sp:
    and bp, sp
    jmp ._loop

    .i_and_bp_bp:
    and bp, bp
    jmp ._loop

    .i_and_al_al:
    and al, al
    jmp ._loop

    .i_and_al_cl:
    and al, cl
    jmp ._loop

    .i_and_al_dl:
    and al, dl
    jmp ._loop

    .i_and_cl_al:
    and cl, al
    jmp ._loop

    .i_and_cl_cl:
    and cl, cl
    jmp ._loop

    .i_and_cl_dl:
    and cl, dl
    jmp ._loop

    .i_and_dl_al:
    and dl, al
    jmp ._loop

    .i_and_dl_cl:
    and dl, cl
    jmp ._loop

    .i_and_dl_dl:
    and dl, dl
    jmp ._loop

    .i_add_xmm0_xmm0:
    pand xmm0, xmm0
    jmp ._loop

    .i_add_xmm0_xmm1:
    pand xmm0, xmm1
    jmp ._loop

    .i_add_xmm0_xmm2:
    pand xmm0, xmm2
    jmp ._loop

    .i_add_xmm0_xmm3:
    pand xmm0, xmm3
    jmp ._loop

    .i_add_xmm0_xmm4:
    pand xmm0, xmm4
    jmp ._loop

    .i_add_xmm0_xmm5:
    pand xmm0, xmm5
    jmp ._loop

    .i_add_xmm0_xmm6:
    pand xmm0, xmm6
    jmp ._loop

    .i_add_xmm0_xmm7:
    pand xmm0, xmm7
    jmp ._loop

    .i_add_xmm0_xmm8:
    pand xmm0, xmm8
    jmp ._loop

    .i_add_xmm0_xmm9:
    pand xmm0, xmm9
    jmp ._loop

    .i_add_xmm0_xmm10:
    pand xmm0, xmm10
    jmp ._loop

    .i_add_xmm0_xmm11:
    pand xmm0, xmm11
    jmp ._loop

    .i_add_xmm0_xmm12:
    pand xmm0, xmm12
    jmp ._loop

    .i_add_xmm0_xmm13:
    pand xmm0, xmm13
    jmp ._loop

    .i_add_xmm0_xmm14:
    pand xmm0, xmm14
    jmp ._loop

    .i_add_xmm0_xmm15:
    pand xmm0, xmm15
    jmp ._loop

    .i_add_xmm1_xmm0:
    pand xmm1, xmm0
    jmp ._loop

    .i_add_xmm1_xmm1:
    pand xmm1, xmm1
    jmp ._loop

    .i_add_xmm1_xmm2:
    pand xmm1, xmm2
    jmp ._loop

    .i_add_xmm1_xmm3:
    pand xmm1, xmm3
    jmp ._loop

    .i_add_xmm1_xmm4:
    pand xmm1, xmm4
    jmp ._loop

    .i_add_xmm1_xmm5:
    pand xmm1, xmm5
    jmp ._loop

    .i_add_xmm1_xmm6:
    pand xmm1, xmm6
    jmp ._loop

    .i_add_xmm1_xmm7:
    pand xmm1, xmm7
    jmp ._loop

    .i_add_xmm1_xmm8:
    pand xmm1, xmm8
    jmp ._loop

    .i_add_xmm1_xmm9:
    pand xmm1, xmm9
    jmp ._loop

    .i_add_xmm1_xmm10:
    pand xmm1, xmm10
    jmp ._loop

    .i_add_xmm1_xmm11:
    pand xmm1, xmm11
    jmp ._loop

    .i_add_xmm1_xmm12:
    pand xmm1, xmm12
    jmp ._loop

    .i_add_xmm1_xmm13:
    pand xmm1, xmm13
    jmp ._loop

    .i_add_xmm1_xmm14:
    pand xmm1, xmm14
    jmp ._loop

    .i_add_xmm1_xmm15:
    pand xmm1, xmm15
    jmp ._loop

    .i_add_xmm2_xmm0:
    pand xmm2, xmm0
    jmp ._loop

    .i_add_xmm2_xmm1:
    pand xmm2, xmm1
    jmp ._loop

    .i_add_xmm2_xmm2:
    pand xmm2, xmm2
    jmp ._loop

    .i_add_xmm2_xmm3:
    pand xmm2, xmm3
    jmp ._loop

    .i_add_xmm2_xmm4:
    pand xmm2, xmm4
    jmp ._loop

    .i_add_xmm2_xmm5:
    pand xmm2, xmm5
    jmp ._loop

    .i_add_xmm2_xmm6:
    pand xmm2, xmm6
    jmp ._loop

    .i_add_xmm2_xmm7:
    pand xmm2, xmm7
    jmp ._loop

    .i_add_xmm2_xmm8:
    pand xmm2, xmm8
    jmp ._loop

    .i_add_xmm2_xmm9:
    pand xmm2, xmm9
    jmp ._loop

    .i_add_xmm2_xmm10:
    pand xmm2, xmm10
    jmp ._loop

    .i_add_xmm2_xmm11:
    pand xmm2, xmm11
    jmp ._loop

    .i_add_xmm2_xmm12:
    pand xmm2, xmm12
    jmp ._loop

    .i_add_xmm2_xmm13:
    pand xmm2, xmm13
    jmp ._loop

    .i_add_xmm2_xmm14:
    pand xmm2, xmm14
    jmp ._loop

    .i_add_xmm2_xmm15:
    pand xmm2, xmm15
    jmp ._loop

    .i_add_xmm3_xmm0:
    pand xmm3, xmm0
    jmp ._loop

    .i_add_xmm3_xmm1:
    pand xmm3, xmm1
    jmp ._loop

    .i_add_xmm3_xmm2:
    pand xmm3, xmm2
    jmp ._loop

    .i_add_xmm3_xmm3:
    pand xmm3, xmm3
    jmp ._loop

    .i_add_xmm3_xmm4:
    pand xmm3, xmm4
    jmp ._loop

    .i_add_xmm3_xmm5:
    pand xmm3, xmm5
    jmp ._loop

    .i_add_xmm3_xmm6:
    pand xmm3, xmm6
    jmp ._loop

    .i_add_xmm3_xmm7:
    pand xmm3, xmm7
    jmp ._loop

    .i_add_xmm3_xmm8:
    pand xmm3, xmm8
    jmp ._loop

    .i_add_xmm3_xmm9:
    pand xmm3, xmm9
    jmp ._loop

    .i_add_xmm3_xmm10:
    pand xmm3, xmm10
    jmp ._loop

    .i_add_xmm3_xmm11:
    pand xmm3, xmm11
    jmp ._loop

    .i_add_xmm3_xmm12:
    pand xmm3, xmm12
    jmp ._loop

    .i_add_xmm3_xmm13:
    pand xmm3, xmm13
    jmp ._loop

    .i_add_xmm3_xmm14:
    pand xmm3, xmm14
    jmp ._loop

    .i_add_xmm3_xmm15:
    pand xmm3, xmm15
    jmp ._loop

    .i_add_xmm4_xmm0:
    pand xmm4, xmm0
    jmp ._loop

    .i_add_xmm4_xmm1:
    pand xmm4, xmm1
    jmp ._loop

    .i_add_xmm4_xmm2:
    pand xmm4, xmm2
    jmp ._loop

    .i_add_xmm4_xmm3:
    pand xmm4, xmm3
    jmp ._loop

    .i_add_xmm4_xmm4:
    pand xmm4, xmm4
    jmp ._loop

    .i_add_xmm4_xmm5:
    pand xmm4, xmm5
    jmp ._loop

    .i_add_xmm4_xmm6:
    pand xmm4, xmm6
    jmp ._loop

    .i_add_xmm4_xmm7:
    pand xmm4, xmm7
    jmp ._loop

    .i_add_xmm4_xmm8:
    pand xmm4, xmm8
    jmp ._loop

    .i_add_xmm4_xmm9:
    pand xmm4, xmm9
    jmp ._loop

    .i_add_xmm4_xmm10:
    pand xmm4, xmm10
    jmp ._loop

    .i_add_xmm4_xmm11:
    pand xmm4, xmm11
    jmp ._loop

    .i_add_xmm4_xmm12:
    pand xmm4, xmm12
    jmp ._loop

    .i_add_xmm4_xmm13:
    pand xmm4, xmm13
    jmp ._loop

    .i_add_xmm4_xmm14:
    pand xmm4, xmm14
    jmp ._loop

    .i_add_xmm4_xmm15:
    pand xmm4, xmm15
    jmp ._loop

    .i_add_xmm5_xmm0:
    pand xmm5, xmm0
    jmp ._loop

    .i_add_xmm5_xmm1:
    pand xmm5, xmm1
    jmp ._loop

    .i_add_xmm5_xmm2:
    pand xmm5, xmm2
    jmp ._loop

    .i_add_xmm5_xmm3:
    pand xmm5, xmm3
    jmp ._loop

    .i_add_xmm5_xmm4:
    pand xmm5, xmm4
    jmp ._loop

    .i_add_xmm5_xmm5:
    pand xmm5, xmm5
    jmp ._loop

    .i_add_xmm5_xmm6:
    pand xmm5, xmm6
    jmp ._loop

    .i_add_xmm5_xmm7:
    pand xmm5, xmm7
    jmp ._loop

    .i_add_xmm5_xmm8:
    pand xmm5, xmm8
    jmp ._loop

    .i_add_xmm5_xmm9:
    pand xmm5, xmm9
    jmp ._loop

    .i_add_xmm5_xmm10:
    pand xmm5, xmm10
    jmp ._loop

    .i_add_xmm5_xmm11:
    pand xmm5, xmm11
    jmp ._loop

    .i_add_xmm5_xmm12:
    pand xmm5, xmm12
    jmp ._loop

    .i_add_xmm5_xmm13:
    pand xmm5, xmm13
    jmp ._loop

    .i_add_xmm5_xmm14:
    pand xmm5, xmm14
    jmp ._loop

    .i_add_xmm5_xmm15:
    pand xmm5, xmm15
    jmp ._loop

    .i_add_xmm6_xmm0:
    pand xmm6, xmm0
    jmp ._loop

    .i_add_xmm6_xmm1:
    pand xmm6, xmm1
    jmp ._loop

    .i_add_xmm6_xmm2:
    pand xmm6, xmm2
    jmp ._loop

    .i_add_xmm6_xmm3:
    pand xmm6, xmm3
    jmp ._loop

    .i_add_xmm6_xmm4:
    pand xmm6, xmm4
    jmp ._loop

    .i_add_xmm6_xmm5:
    pand xmm6, xmm5
    jmp ._loop

    .i_add_xmm6_xmm6:
    pand xmm6, xmm6
    jmp ._loop

    .i_add_xmm6_xmm7:
    pand xmm6, xmm7
    jmp ._loop

    .i_add_xmm6_xmm8:
    pand xmm6, xmm8
    jmp ._loop

    .i_add_xmm6_xmm9:
    pand xmm6, xmm9
    jmp ._loop

    .i_add_xmm6_xmm10:
    pand xmm6, xmm10
    jmp ._loop

    .i_add_xmm6_xmm11:
    pand xmm6, xmm11
    jmp ._loop

    .i_add_xmm6_xmm12:
    pand xmm6, xmm12
    jmp ._loop

    .i_add_xmm6_xmm13:
    pand xmm6, xmm13
    jmp ._loop

    .i_add_xmm6_xmm14:
    pand xmm6, xmm14
    jmp ._loop

    .i_add_xmm6_xmm15:
    pand xmm6, xmm15
    jmp ._loop

    .i_add_xmm7_xmm0:
    pand xmm7, xmm0
    jmp ._loop

    .i_add_xmm7_xmm1:
    pand xmm7, xmm1
    jmp ._loop

    .i_add_xmm7_xmm2:
    pand xmm7, xmm2
    jmp ._loop

    .i_add_xmm7_xmm3:
    pand xmm7, xmm3
    jmp ._loop

    .i_add_xmm7_xmm4:
    pand xmm7, xmm4
    jmp ._loop

    .i_add_xmm7_xmm5:
    pand xmm7, xmm5
    jmp ._loop

    .i_add_xmm7_xmm6:
    pand xmm7, xmm6
    jmp ._loop

    .i_add_xmm7_xmm7:
    pand xmm7, xmm7
    jmp ._loop

    .i_add_xmm7_xmm8:
    pand xmm7, xmm8
    jmp ._loop

    .i_add_xmm7_xmm9:
    pand xmm7, xmm9
    jmp ._loop

    .i_add_xmm7_xmm10:
    pand xmm7, xmm10
    jmp ._loop

    .i_add_xmm7_xmm11:
    pand xmm7, xmm11
    jmp ._loop

    .i_add_xmm7_xmm12:
    pand xmm7, xmm12
    jmp ._loop

    .i_add_xmm7_xmm13:
    pand xmm7, xmm13
    jmp ._loop

    .i_add_xmm7_xmm14:
    pand xmm7, xmm14
    jmp ._loop

    .i_add_xmm7_xmm15:
    pand xmm7, xmm15
    jmp ._loop

    .i_add_xmm8_xmm0:
    pand xmm8, xmm0
    jmp ._loop

    .i_add_xmm8_xmm1:
    pand xmm8, xmm1
    jmp ._loop

    .i_add_xmm8_xmm2:
    pand xmm8, xmm2
    jmp ._loop

    .i_add_xmm8_xmm3:
    pand xmm8, xmm3
    jmp ._loop

    .i_add_xmm8_xmm4:
    pand xmm8, xmm4
    jmp ._loop

    .i_add_xmm8_xmm5:
    pand xmm8, xmm5
    jmp ._loop

    .i_add_xmm8_xmm6:
    pand xmm8, xmm6
    jmp ._loop

    .i_add_xmm8_xmm7:
    pand xmm8, xmm7
    jmp ._loop

    .i_add_xmm8_xmm8:
    pand xmm8, xmm8
    jmp ._loop

    .i_add_xmm8_xmm9:
    pand xmm8, xmm9
    jmp ._loop

    .i_add_xmm8_xmm10:
    pand xmm8, xmm10
    jmp ._loop

    .i_add_xmm8_xmm11:
    pand xmm8, xmm11
    jmp ._loop

    .i_add_xmm8_xmm12:
    pand xmm8, xmm12
    jmp ._loop

    .i_add_xmm8_xmm13:
    pand xmm8, xmm13
    jmp ._loop

    .i_add_xmm8_xmm14:
    pand xmm8, xmm14
    jmp ._loop

    .i_add_xmm8_xmm15:
    pand xmm8, xmm15
    jmp ._loop

    .i_add_xmm9_xmm0:
    pand xmm9, xmm0
    jmp ._loop

    .i_add_xmm9_xmm1:
    pand xmm9, xmm1
    jmp ._loop

    .i_add_xmm9_xmm2:
    pand xmm9, xmm2
    jmp ._loop

    .i_add_xmm9_xmm3:
    pand xmm9, xmm3
    jmp ._loop

    .i_add_xmm9_xmm4:
    pand xmm9, xmm4
    jmp ._loop

    .i_add_xmm9_xmm5:
    pand xmm9, xmm5
    jmp ._loop

    .i_add_xmm9_xmm6:
    pand xmm9, xmm6
    jmp ._loop

    .i_add_xmm9_xmm7:
    pand xmm9, xmm7
    jmp ._loop

    .i_add_xmm9_xmm8:
    pand xmm9, xmm8
    jmp ._loop

    .i_add_xmm9_xmm9:
    pand xmm9, xmm9
    jmp ._loop

    .i_add_xmm9_xmm10:
    pand xmm9, xmm10
    jmp ._loop

    .i_add_xmm9_xmm11:
    pand xmm9, xmm11
    jmp ._loop

    .i_add_xmm9_xmm12:
    pand xmm9, xmm12
    jmp ._loop

    .i_add_xmm9_xmm13:
    pand xmm9, xmm13
    jmp ._loop

    .i_add_xmm9_xmm14:
    pand xmm9, xmm14
    jmp ._loop

    .i_add_xmm9_xmm15:
    pand xmm9, xmm15
    jmp ._loop

    .i_add_xmm10_xmm0:
    pand xmm10, xmm0
    jmp ._loop

    .i_add_xmm10_xmm1:
    pand xmm10, xmm1
    jmp ._loop

    .i_add_xmm10_xmm2:
    pand xmm10, xmm2
    jmp ._loop

    .i_add_xmm10_xmm3:
    pand xmm10, xmm3
    jmp ._loop

    .i_add_xmm10_xmm4:
    pand xmm10, xmm4
    jmp ._loop

    .i_add_xmm10_xmm5:
    pand xmm10, xmm5
    jmp ._loop

    .i_add_xmm10_xmm6:
    pand xmm10, xmm6
    jmp ._loop

    .i_add_xmm10_xmm7:
    pand xmm10, xmm7
    jmp ._loop

    .i_add_xmm10_xmm8:
    pand xmm10, xmm8
    jmp ._loop

    .i_add_xmm10_xmm9:
    pand xmm10, xmm9
    jmp ._loop

    .i_add_xmm10_xmm10:
    pand xmm10, xmm10
    jmp ._loop

    .i_add_xmm10_xmm11:
    pand xmm10, xmm11
    jmp ._loop

    .i_add_xmm10_xmm12:
    pand xmm10, xmm12
    jmp ._loop

    .i_add_xmm10_xmm13:
    pand xmm10, xmm13
    jmp ._loop

    .i_add_xmm10_xmm14:
    pand xmm10, xmm14
    jmp ._loop

    .i_add_xmm10_xmm15:
    pand xmm10, xmm15
    jmp ._loop

    .i_add_xmm11_xmm0:
    pand xmm11, xmm0
    jmp ._loop

    .i_add_xmm11_xmm1:
    pand xmm11, xmm1
    jmp ._loop

    .i_add_xmm11_xmm2:
    pand xmm11, xmm2
    jmp ._loop

    .i_add_xmm11_xmm3:
    pand xmm11, xmm3
    jmp ._loop

    .i_add_xmm11_xmm4:
    pand xmm11, xmm4
    jmp ._loop

    .i_add_xmm11_xmm5:
    pand xmm11, xmm5
    jmp ._loop

    .i_add_xmm11_xmm6:
    pand xmm11, xmm6
    jmp ._loop

    .i_add_xmm11_xmm7:
    pand xmm11, xmm7
    jmp ._loop

    .i_add_xmm11_xmm8:
    pand xmm11, xmm8
    jmp ._loop

    .i_add_xmm11_xmm9:
    pand xmm11, xmm9
    jmp ._loop

    .i_add_xmm11_xmm10:
    pand xmm11, xmm10
    jmp ._loop

    .i_add_xmm11_xmm11:
    pand xmm11, xmm11
    jmp ._loop

    .i_add_xmm11_xmm12:
    pand xmm11, xmm12
    jmp ._loop

    .i_add_xmm11_xmm13:
    pand xmm11, xmm13
    jmp ._loop

    .i_add_xmm11_xmm14:
    pand xmm11, xmm14
    jmp ._loop

    .i_add_xmm11_xmm15:
    pand xmm11, xmm15
    jmp ._loop

    .i_add_xmm12_xmm0:
    pand xmm12, xmm0
    jmp ._loop

    .i_add_xmm12_xmm1:
    pand xmm12, xmm1
    jmp ._loop

    .i_add_xmm12_xmm2:
    pand xmm12, xmm2
    jmp ._loop

    .i_add_xmm12_xmm3:
    pand xmm12, xmm3
    jmp ._loop

    .i_add_xmm12_xmm4:
    pand xmm12, xmm4
    jmp ._loop

    .i_add_xmm12_xmm5:
    pand xmm12, xmm5
    jmp ._loop

    .i_add_xmm12_xmm6:
    pand xmm12, xmm6
    jmp ._loop

    .i_add_xmm12_xmm7:
    pand xmm12, xmm7
    jmp ._loop

    .i_add_xmm12_xmm8:
    pand xmm12, xmm8
    jmp ._loop

    .i_add_xmm12_xmm9:
    pand xmm12, xmm9
    jmp ._loop

    .i_add_xmm12_xmm10:
    pand xmm12, xmm10
    jmp ._loop

    .i_add_xmm12_xmm11:
    pand xmm12, xmm11
    jmp ._loop

    .i_add_xmm12_xmm12:
    pand xmm12, xmm12
    jmp ._loop

    .i_add_xmm12_xmm13:
    pand xmm12, xmm13
    jmp ._loop

    .i_add_xmm12_xmm14:
    pand xmm12, xmm14
    jmp ._loop

    .i_add_xmm12_xmm15:
    pand xmm12, xmm15
    jmp ._loop

    .i_add_xmm13_xmm0:
    pand xmm13, xmm0
    jmp ._loop

    .i_add_xmm13_xmm1:
    pand xmm13, xmm1
    jmp ._loop

    .i_add_xmm13_xmm2:
    pand xmm13, xmm2
    jmp ._loop

    .i_add_xmm13_xmm3:
    pand xmm13, xmm3
    jmp ._loop

    .i_add_xmm13_xmm4:
    pand xmm13, xmm4
    jmp ._loop

    .i_add_xmm13_xmm5:
    pand xmm13, xmm5
    jmp ._loop

    .i_add_xmm13_xmm6:
    pand xmm13, xmm6
    jmp ._loop

    .i_add_xmm13_xmm7:
    pand xmm13, xmm7
    jmp ._loop

    .i_add_xmm13_xmm8:
    pand xmm13, xmm8
    jmp ._loop

    .i_add_xmm13_xmm9:
    pand xmm13, xmm9
    jmp ._loop

    .i_add_xmm13_xmm10:
    pand xmm13, xmm10
    jmp ._loop

    .i_add_xmm13_xmm11:
    pand xmm13, xmm11
    jmp ._loop

    .i_add_xmm13_xmm12:
    pand xmm13, xmm12
    jmp ._loop

    .i_add_xmm13_xmm13:
    pand xmm13, xmm13
    jmp ._loop

    .i_add_xmm13_xmm14:
    pand xmm13, xmm14
    jmp ._loop

    .i_add_xmm13_xmm15:
    pand xmm13, xmm15
    jmp ._loop

    .i_add_xmm14_xmm0:
    pand xmm14, xmm0
    jmp ._loop

    .i_add_xmm14_xmm1:
    pand xmm14, xmm1
    jmp ._loop

    .i_add_xmm14_xmm2:
    pand xmm14, xmm2
    jmp ._loop

    .i_add_xmm14_xmm3:
    pand xmm14, xmm3
    jmp ._loop

    .i_add_xmm14_xmm4:
    pand xmm14, xmm4
    jmp ._loop

    .i_add_xmm14_xmm5:
    pand xmm14, xmm5
    jmp ._loop

    .i_add_xmm14_xmm6:
    pand xmm14, xmm6
    jmp ._loop

    .i_add_xmm14_xmm7:
    pand xmm14, xmm7
    jmp ._loop

    .i_add_xmm14_xmm8:
    pand xmm14, xmm8
    jmp ._loop

    .i_add_xmm14_xmm9:
    pand xmm14, xmm9
    jmp ._loop

    .i_add_xmm14_xmm10:
    pand xmm14, xmm10
    jmp ._loop

    .i_add_xmm14_xmm11:
    pand xmm14, xmm11
    jmp ._loop

    .i_add_xmm14_xmm12:
    pand xmm14, xmm12
    jmp ._loop

    .i_add_xmm14_xmm13:
    pand xmm14, xmm13
    jmp ._loop

    .i_add_xmm14_xmm14:
    pand xmm14, xmm14
    jmp ._loop

    .i_add_xmm14_xmm15:
    pand xmm14, xmm15
    jmp ._loop

    .i_add_xmm15_xmm0:
    pand xmm15, xmm0
    jmp ._loop

    .i_add_xmm15_xmm1:
    pand xmm15, xmm1
    jmp ._loop

    .i_add_xmm15_xmm2:
    pand xmm15, xmm2
    jmp ._loop

    .i_add_xmm15_xmm3:
    pand xmm15, xmm3
    jmp ._loop

    .i_add_xmm15_xmm4:
    pand xmm15, xmm4
    jmp ._loop

    .i_add_xmm15_xmm5:
    pand xmm15, xmm5
    jmp ._loop

    .i_add_xmm15_xmm6:
    pand xmm15, xmm6
    jmp ._loop

    .i_add_xmm15_xmm7:
    pand xmm15, xmm7
    jmp ._loop

    .i_add_xmm15_xmm8:
    pand xmm15, xmm8
    jmp ._loop

    .i_add_xmm15_xmm9:
    pand xmm15, xmm9
    jmp ._loop

    .i_add_xmm15_xmm10:
    pand xmm15, xmm10
    jmp ._loop

    .i_add_xmm15_xmm11:
    pand xmm15, xmm11
    jmp ._loop

    .i_add_xmm15_xmm12:
    pand xmm15, xmm12
    jmp ._loop

    .i_add_xmm15_xmm13:
    pand xmm15, xmm13
    jmp ._loop

    .i_add_xmm15_xmm14:
    pand xmm15, xmm14
    jmp ._loop

    .i_add_xmm15_xmm15:
    pand xmm15, xmm15
    jmp ._loop

    .i_or_rax_rax:
    or rax, rax
    jmp ._loop

    .i_or_rax_rcx:
    or rax, rcx
    jmp ._loop

    .i_or_rax_rdx:
    or rax, rdx
    jmp ._loop

    .i_or_rax_r8:
    or rax, r8
    jmp ._loop

    .i_or_rax_r9:
    or rax, r9
    jmp ._loop

    .i_or_rax_r10:
    or rax, r10
    jmp ._loop

    .i_or_rax_r11:
    or rax, r11
    jmp ._loop

    .i_or_rax_r12:
    or rax, r12
    jmp ._loop

    .i_or_rax_r13:
    or rax, r13
    jmp ._loop

    .i_or_rax_rsi:
    or rax, rsi
    jmp ._loop

    .i_or_rax_rdi:
    or rax, rdi
    jmp ._loop

    .i_or_rax_rsp:
    or rax, rsp
    jmp ._loop

    .i_or_rax_rbp:
    or rax, rbp
    jmp ._loop

    .i_or_rcx_rax:
    or rcx, rax
    jmp ._loop

    .i_or_rcx_rcx:
    or rcx, rcx
    jmp ._loop

    .i_or_rcx_rdx:
    or rcx, rdx
    jmp ._loop

    .i_or_rcx_r8:
    or rcx, r8
    jmp ._loop

    .i_or_rcx_r9:
    or rcx, r9
    jmp ._loop

    .i_or_rcx_r10:
    or rcx, r10
    jmp ._loop

    .i_or_rcx_r11:
    or rcx, r11
    jmp ._loop

    .i_or_rcx_r12:
    or rcx, r12
    jmp ._loop

    .i_or_rcx_r13:
    or rcx, r13
    jmp ._loop

    .i_or_rcx_rsi:
    or rcx, rsi
    jmp ._loop

    .i_or_rcx_rdi:
    or rcx, rdi
    jmp ._loop

    .i_or_rcx_rsp:
    or rcx, rsp
    jmp ._loop

    .i_or_rcx_rbp:
    or rcx, rbp
    jmp ._loop

    .i_or_rdx_rax:
    or rdx, rax
    jmp ._loop

    .i_or_rdx_rcx:
    or rdx, rcx
    jmp ._loop

    .i_or_rdx_rdx:
    or rdx, rdx
    jmp ._loop

    .i_or_rdx_r8:
    or rdx, r8
    jmp ._loop

    .i_or_rdx_r9:
    or rdx, r9
    jmp ._loop

    .i_or_rdx_r10:
    or rdx, r10
    jmp ._loop

    .i_or_rdx_r11:
    or rdx, r11
    jmp ._loop

    .i_or_rdx_r12:
    or rdx, r12
    jmp ._loop

    .i_or_rdx_r13:
    or rdx, r13
    jmp ._loop

    .i_or_rdx_rsi:
    or rdx, rsi
    jmp ._loop

    .i_or_rdx_rdi:
    or rdx, rdi
    jmp ._loop

    .i_or_rdx_rsp:
    or rdx, rsp
    jmp ._loop

    .i_or_rdx_rbp:
    or rdx, rbp
    jmp ._loop

    .i_or_r8_rax:
    or r8, rax
    jmp ._loop

    .i_or_r8_rcx:
    or r8, rcx
    jmp ._loop

    .i_or_r8_rdx:
    or r8, rdx
    jmp ._loop

    .i_or_r8_r8:
    or r8, r8
    jmp ._loop

    .i_or_r8_r9:
    or r8, r9
    jmp ._loop

    .i_or_r8_r10:
    or r8, r10
    jmp ._loop

    .i_or_r8_r11:
    or r8, r11
    jmp ._loop

    .i_or_r8_r12:
    or r8, r12
    jmp ._loop

    .i_or_r8_r13:
    or r8, r13
    jmp ._loop

    .i_or_r8_rsi:
    or r8, rsi
    jmp ._loop

    .i_or_r8_rdi:
    or r8, rdi
    jmp ._loop

    .i_or_r8_rsp:
    or r8, rsp
    jmp ._loop

    .i_or_r8_rbp:
    or r8, rbp
    jmp ._loop

    .i_or_r9_rax:
    or r9, rax
    jmp ._loop

    .i_or_r9_rcx:
    or r9, rcx
    jmp ._loop

    .i_or_r9_rdx:
    or r9, rdx
    jmp ._loop

    .i_or_r9_r8:
    or r9, r8
    jmp ._loop

    .i_or_r9_r9:
    or r9, r9
    jmp ._loop

    .i_or_r9_r10:
    or r9, r10
    jmp ._loop

    .i_or_r9_r11:
    or r9, r11
    jmp ._loop

    .i_or_r9_r12:
    or r9, r12
    jmp ._loop

    .i_or_r9_r13:
    or r9, r13
    jmp ._loop

    .i_or_r9_rsi:
    or r9, rsi
    jmp ._loop

    .i_or_r9_rdi:
    or r9, rdi
    jmp ._loop

    .i_or_r9_rsp:
    or r9, rsp
    jmp ._loop

    .i_or_r9_rbp:
    or r9, rbp
    jmp ._loop

    .i_or_r10_rax:
    or r10, rax
    jmp ._loop

    .i_or_r10_rcx:
    or r10, rcx
    jmp ._loop

    .i_or_r10_rdx:
    or r10, rdx
    jmp ._loop

    .i_or_r10_r8:
    or r10, r8
    jmp ._loop

    .i_or_r10_r9:
    or r10, r9
    jmp ._loop

    .i_or_r10_r10:
    or r10, r10
    jmp ._loop

    .i_or_r10_r11:
    or r10, r11
    jmp ._loop

    .i_or_r10_r12:
    or r10, r12
    jmp ._loop

    .i_or_r10_r13:
    or r10, r13
    jmp ._loop

    .i_or_r10_rsi:
    or r10, rsi
    jmp ._loop

    .i_or_r10_rdi:
    or r10, rdi
    jmp ._loop

    .i_or_r10_rsp:
    or r10, rsp
    jmp ._loop

    .i_or_r10_rbp:
    or r10, rbp
    jmp ._loop

    .i_or_r11_rax:
    or r11, rax
    jmp ._loop

    .i_or_r11_rcx:
    or r11, rcx
    jmp ._loop

    .i_or_r11_rdx:
    or r11, rdx
    jmp ._loop

    .i_or_r11_r8:
    or r11, r8
    jmp ._loop

    .i_or_r11_r9:
    or r11, r9
    jmp ._loop

    .i_or_r11_r10:
    or r11, r10
    jmp ._loop

    .i_or_r11_r11:
    or r11, r11
    jmp ._loop

    .i_or_r11_r12:
    or r11, r12
    jmp ._loop

    .i_or_r11_r13:
    or r11, r13
    jmp ._loop

    .i_or_r11_rsi:
    or r11, rsi
    jmp ._loop

    .i_or_r11_rdi:
    or r11, rdi
    jmp ._loop

    .i_or_r11_rsp:
    or r11, rsp
    jmp ._loop

    .i_or_r11_rbp:
    or r11, rbp
    jmp ._loop

    .i_or_r12_rax:
    or r12, rax
    jmp ._loop

    .i_or_r12_rcx:
    or r12, rcx
    jmp ._loop

    .i_or_r12_rdx:
    or r12, rdx
    jmp ._loop

    .i_or_r12_r8:
    or r12, r8
    jmp ._loop

    .i_or_r12_r9:
    or r12, r9
    jmp ._loop

    .i_or_r12_r10:
    or r12, r10
    jmp ._loop

    .i_or_r12_r11:
    or r12, r11
    jmp ._loop

    .i_or_r12_r12:
    or r12, r12
    jmp ._loop

    .i_or_r12_r13:
    or r12, r13
    jmp ._loop

    .i_or_r12_rsi:
    or r12, rsi
    jmp ._loop

    .i_or_r12_rdi:
    or r12, rdi
    jmp ._loop

    .i_or_r12_rsp:
    or r12, rsp
    jmp ._loop

    .i_or_r12_rbp:
    or r12, rbp
    jmp ._loop

    .i_or_r13_rax:
    or r13, rax
    jmp ._loop

    .i_or_r13_rcx:
    or r13, rcx
    jmp ._loop

    .i_or_r13_rdx:
    or r13, rdx
    jmp ._loop

    .i_or_r13_r8:
    or r13, r8
    jmp ._loop

    .i_or_r13_r9:
    or r13, r9
    jmp ._loop

    .i_or_r13_r10:
    or r13, r10
    jmp ._loop

    .i_or_r13_r11:
    or r13, r11
    jmp ._loop

    .i_or_r13_r12:
    or r13, r12
    jmp ._loop

    .i_or_r13_r13:
    or r13, r13
    jmp ._loop

    .i_or_r13_rsi:
    or r13, rsi
    jmp ._loop

    .i_or_r13_rdi:
    or r13, rdi
    jmp ._loop

    .i_or_r13_rsp:
    or r13, rsp
    jmp ._loop

    .i_or_r13_rbp:
    or r13, rbp
    jmp ._loop

    .i_or_rsi_rax:
    or rsi, rax
    jmp ._loop

    .i_or_rsi_rcx:
    or rsi, rcx
    jmp ._loop

    .i_or_rsi_rdx:
    or rsi, rdx
    jmp ._loop

    .i_or_rsi_r8:
    or rsi, r8
    jmp ._loop

    .i_or_rsi_r9:
    or rsi, r9
    jmp ._loop

    .i_or_rsi_r10:
    or rsi, r10
    jmp ._loop

    .i_or_rsi_r11:
    or rsi, r11
    jmp ._loop

    .i_or_rsi_r12:
    or rsi, r12
    jmp ._loop

    .i_or_rsi_r13:
    or rsi, r13
    jmp ._loop

    .i_or_rsi_rsi:
    or rsi, rsi
    jmp ._loop

    .i_or_rsi_rdi:
    or rsi, rdi
    jmp ._loop

    .i_or_rsi_rsp:
    or rsi, rsp
    jmp ._loop

    .i_or_rsi_rbp:
    or rsi, rbp
    jmp ._loop

    .i_or_rdi_rax:
    or rdi, rax
    jmp ._loop

    .i_or_rdi_rcx:
    or rdi, rcx
    jmp ._loop

    .i_or_rdi_rdx:
    or rdi, rdx
    jmp ._loop

    .i_or_rdi_r8:
    or rdi, r8
    jmp ._loop

    .i_or_rdi_r9:
    or rdi, r9
    jmp ._loop

    .i_or_rdi_r10:
    or rdi, r10
    jmp ._loop

    .i_or_rdi_r11:
    or rdi, r11
    jmp ._loop

    .i_or_rdi_r12:
    or rdi, r12
    jmp ._loop

    .i_or_rdi_r13:
    or rdi, r13
    jmp ._loop

    .i_or_rdi_rsi:
    or rdi, rsi
    jmp ._loop

    .i_or_rdi_rdi:
    or rdi, rdi
    jmp ._loop

    .i_or_rdi_rsp:
    or rdi, rsp
    jmp ._loop

    .i_or_rdi_rbp:
    or rdi, rbp
    jmp ._loop

    .i_or_rsp_rax:
    or rsp, rax
    jmp ._loop

    .i_or_rsp_rcx:
    or rsp, rcx
    jmp ._loop

    .i_or_rsp_rdx:
    or rsp, rdx
    jmp ._loop

    .i_or_rsp_r8:
    or rsp, r8
    jmp ._loop

    .i_or_rsp_r9:
    or rsp, r9
    jmp ._loop

    .i_or_rsp_r10:
    or rsp, r10
    jmp ._loop

    .i_or_rsp_r11:
    or rsp, r11
    jmp ._loop

    .i_or_rsp_r12:
    or rsp, r12
    jmp ._loop

    .i_or_rsp_r13:
    or rsp, r13
    jmp ._loop

    .i_or_rsp_rsi:
    or rsp, rsi
    jmp ._loop

    .i_or_rsp_rdi:
    or rsp, rdi
    jmp ._loop

    .i_or_rsp_rsp:
    or rsp, rsp
    jmp ._loop

    .i_or_rsp_rbp:
    or rsp, rbp
    jmp ._loop

    .i_or_rbp_rax:
    or rbp, rax
    jmp ._loop

    .i_or_rbp_rcx:
    or rbp, rcx
    jmp ._loop

    .i_or_rbp_rdx:
    or rbp, rdx
    jmp ._loop

    .i_or_rbp_r8:
    or rbp, r8
    jmp ._loop

    .i_or_rbp_r9:
    or rbp, r9
    jmp ._loop

    .i_or_rbp_r10:
    or rbp, r10
    jmp ._loop

    .i_or_rbp_r11:
    or rbp, r11
    jmp ._loop

    .i_or_rbp_r12:
    or rbp, r12
    jmp ._loop

    .i_or_rbp_r13:
    or rbp, r13
    jmp ._loop

    .i_or_rbp_rsi:
    or rbp, rsi
    jmp ._loop

    .i_or_rbp_rdi:
    or rbp, rdi
    jmp ._loop

    .i_or_rbp_rsp:
    or rbp, rsp
    jmp ._loop

    .i_or_rbp_rbp:
    or rbp, rbp
    jmp ._loop

    .i_or_eax_eax:
    or eax, eax
    jmp ._loop

    .i_or_eax_ecx:
    or eax, ecx
    jmp ._loop

    .i_or_eax_edx:
    or eax, edx
    jmp ._loop

    .i_or_eax_esi:
    or eax, esi
    jmp ._loop

    .i_or_eax_edi:
    or eax, edi
    jmp ._loop

    .i_or_eax_esp:
    or eax, esp
    jmp ._loop

    .i_or_eax_ebp:
    or eax, ebp
    jmp ._loop

    .i_or_ecx_eax:
    or ecx, eax
    jmp ._loop

    .i_or_ecx_ecx:
    or ecx, ecx
    jmp ._loop

    .i_or_ecx_edx:
    or ecx, edx
    jmp ._loop

    .i_or_ecx_esi:
    or ecx, esi
    jmp ._loop

    .i_or_ecx_edi:
    or ecx, edi
    jmp ._loop

    .i_or_ecx_esp:
    or ecx, esp
    jmp ._loop

    .i_or_ecx_ebp:
    or ecx, ebp
    jmp ._loop

    .i_or_edx_eax:
    or edx, eax
    jmp ._loop

    .i_or_edx_ecx:
    or edx, ecx
    jmp ._loop

    .i_or_edx_edx:
    or edx, edx
    jmp ._loop

    .i_or_edx_esi:
    or edx, esi
    jmp ._loop

    .i_or_edx_edi:
    or edx, edi
    jmp ._loop

    .i_or_edx_esp:
    or edx, esp
    jmp ._loop

    .i_or_edx_ebp:
    or edx, ebp
    jmp ._loop

    .i_or_esi_eax:
    or esi, eax
    jmp ._loop

    .i_or_esi_ecx:
    or esi, ecx
    jmp ._loop

    .i_or_esi_edx:
    or esi, edx
    jmp ._loop

    .i_or_esi_esi:
    or esi, esi
    jmp ._loop

    .i_or_esi_edi:
    or esi, edi
    jmp ._loop

    .i_or_esi_esp:
    or esi, esp
    jmp ._loop

    .i_or_esi_ebp:
    or esi, ebp
    jmp ._loop

    .i_or_edi_eax:
    or edi, eax
    jmp ._loop

    .i_or_edi_ecx:
    or edi, ecx
    jmp ._loop

    .i_or_edi_edx:
    or edi, edx
    jmp ._loop

    .i_or_edi_esi:
    or edi, esi
    jmp ._loop

    .i_or_edi_edi:
    or edi, edi
    jmp ._loop

    .i_or_edi_esp:
    or edi, esp
    jmp ._loop

    .i_or_edi_ebp:
    or edi, ebp
    jmp ._loop

    .i_or_esp_eax:
    or esp, eax
    jmp ._loop

    .i_or_esp_ecx:
    or esp, ecx
    jmp ._loop

    .i_or_esp_edx:
    or esp, edx
    jmp ._loop

    .i_or_esp_esi:
    or esp, esi
    jmp ._loop

    .i_or_esp_edi:
    or esp, edi
    jmp ._loop

    .i_or_esp_esp:
    or esp, esp
    jmp ._loop

    .i_or_esp_ebp:
    or esp, ebp
    jmp ._loop

    .i_or_ebp_eax:
    or ebp, eax
    jmp ._loop

    .i_or_ebp_ecx:
    or ebp, ecx
    jmp ._loop

    .i_or_ebp_edx:
    or ebp, edx
    jmp ._loop

    .i_or_ebp_esi:
    or ebp, esi
    jmp ._loop

    .i_or_ebp_edi:
    or ebp, edi
    jmp ._loop

    .i_or_ebp_esp:
    or ebp, esp
    jmp ._loop

    .i_or_ebp_ebp:
    or ebp, ebp
    jmp ._loop

    .i_or_ax_ax:
    or ax, ax
    jmp ._loop

    .i_or_ax_cx:
    or ax, cx
    jmp ._loop

    .i_or_ax_dx:
    or ax, dx
    jmp ._loop

    .i_or_ax_si:
    or ax, si
    jmp ._loop

    .i_or_ax_di:
    or ax, di
    jmp ._loop

    .i_or_ax_sp:
    or ax, sp
    jmp ._loop

    .i_or_ax_bp:
    or ax, bp
    jmp ._loop

    .i_or_cx_ax:
    or cx, ax
    jmp ._loop

    .i_or_cx_cx:
    or cx, cx
    jmp ._loop

    .i_or_cx_dx:
    or cx, dx
    jmp ._loop

    .i_or_cx_si:
    or cx, si
    jmp ._loop

    .i_or_cx_di:
    or cx, di
    jmp ._loop

    .i_or_cx_sp:
    or cx, sp
    jmp ._loop

    .i_or_cx_bp:
    or cx, bp
    jmp ._loop

    .i_or_dx_ax:
    or dx, ax
    jmp ._loop

    .i_or_dx_cx:
    or dx, cx
    jmp ._loop

    .i_or_dx_dx:
    or dx, dx
    jmp ._loop

    .i_or_dx_si:
    or dx, si
    jmp ._loop

    .i_or_dx_di:
    or dx, di
    jmp ._loop

    .i_or_dx_sp:
    or dx, sp
    jmp ._loop

    .i_or_dx_bp:
    or dx, bp
    jmp ._loop

    .i_or_si_ax:
    or si, ax
    jmp ._loop

    .i_or_si_cx:
    or si, cx
    jmp ._loop

    .i_or_si_dx:
    or si, dx
    jmp ._loop

    .i_or_si_si:
    or si, si
    jmp ._loop

    .i_or_si_di:
    or si, di
    jmp ._loop

    .i_or_si_sp:
    or si, sp
    jmp ._loop

    .i_or_si_bp:
    or si, bp
    jmp ._loop

    .i_or_di_ax:
    or di, ax
    jmp ._loop

    .i_or_di_cx:
    or di, cx
    jmp ._loop

    .i_or_di_dx:
    or di, dx
    jmp ._loop

    .i_or_di_si:
    or di, si
    jmp ._loop

    .i_or_di_di:
    or di, di
    jmp ._loop

    .i_or_di_sp:
    or di, sp
    jmp ._loop

    .i_or_di_bp:
    or di, bp
    jmp ._loop

    .i_or_sp_ax:
    or sp, ax
    jmp ._loop

    .i_or_sp_cx:
    or sp, cx
    jmp ._loop

    .i_or_sp_dx:
    or sp, dx
    jmp ._loop

    .i_or_sp_si:
    or sp, si
    jmp ._loop

    .i_or_sp_di:
    or sp, di
    jmp ._loop

    .i_or_sp_sp:
    or sp, sp
    jmp ._loop

    .i_or_sp_bp:
    or sp, bp
    jmp ._loop

    .i_or_bp_ax:
    or bp, ax
    jmp ._loop

    .i_or_bp_cx:
    or bp, cx
    jmp ._loop

    .i_or_bp_dx:
    or bp, dx
    jmp ._loop

    .i_or_bp_si:
    or bp, si
    jmp ._loop

    .i_or_bp_di:
    or bp, di
    jmp ._loop

    .i_or_bp_sp:
    or bp, sp
    jmp ._loop

    .i_or_bp_bp:
    or bp, bp
    jmp ._loop

    .i_or_al_al:
    or al, al
    jmp ._loop

    .i_or_al_cl:
    or al, cl
    jmp ._loop

    .i_or_al_dl:
    or al, dl
    jmp ._loop

    .i_or_cl_al:
    or cl, al
    jmp ._loop

    .i_or_cl_cl:
    or cl, cl
    jmp ._loop

    .i_or_cl_dl:
    or cl, dl
    jmp ._loop

    .i_or_dl_al:
    or dl, al
    jmp ._loop

    .i_or_dl_cl:
    or dl, cl
    jmp ._loop

    .i_or_dl_dl:
    or dl, dl
    jmp ._loop

    .i_xor_xmm0_xmm0:
    pxor xmm0, xmm0
    jmp ._loop

    .i_xor_xmm0_xmm1:
    pxor xmm0, xmm1
    jmp ._loop

    .i_xor_xmm0_xmm2:
    pxor xmm0, xmm2
    jmp ._loop

    .i_xor_xmm0_xmm3:
    pxor xmm0, xmm3
    jmp ._loop

    .i_xor_xmm0_xmm4:
    pxor xmm0, xmm4
    jmp ._loop

    .i_xor_xmm0_xmm5:
    pxor xmm0, xmm5
    jmp ._loop

    .i_xor_xmm0_xmm6:
    pxor xmm0, xmm6
    jmp ._loop

    .i_xor_xmm0_xmm7:
    pxor xmm0, xmm7
    jmp ._loop

    .i_xor_xmm0_xmm8:
    pxor xmm0, xmm8
    jmp ._loop

    .i_xor_xmm0_xmm9:
    pxor xmm0, xmm9
    jmp ._loop

    .i_xor_xmm0_xmm10:
    pxor xmm0, xmm10
    jmp ._loop

    .i_xor_xmm0_xmm11:
    pxor xmm0, xmm11
    jmp ._loop

    .i_xor_xmm0_xmm12:
    pxor xmm0, xmm12
    jmp ._loop

    .i_xor_xmm0_xmm13:
    pxor xmm0, xmm13
    jmp ._loop

    .i_xor_xmm0_xmm14:
    pxor xmm0, xmm14
    jmp ._loop

    .i_xor_xmm0_xmm15:
    pxor xmm0, xmm15
    jmp ._loop

    .i_xor_xmm1_xmm0:
    pxor xmm1, xmm0
    jmp ._loop

    .i_xor_xmm1_xmm1:
    pxor xmm1, xmm1
    jmp ._loop

    .i_xor_xmm1_xmm2:
    pxor xmm1, xmm2
    jmp ._loop

    .i_xor_xmm1_xmm3:
    pxor xmm1, xmm3
    jmp ._loop

    .i_xor_xmm1_xmm4:
    pxor xmm1, xmm4
    jmp ._loop

    .i_xor_xmm1_xmm5:
    pxor xmm1, xmm5
    jmp ._loop

    .i_xor_xmm1_xmm6:
    pxor xmm1, xmm6
    jmp ._loop

    .i_xor_xmm1_xmm7:
    pxor xmm1, xmm7
    jmp ._loop

    .i_xor_xmm1_xmm8:
    pxor xmm1, xmm8
    jmp ._loop

    .i_xor_xmm1_xmm9:
    pxor xmm1, xmm9
    jmp ._loop

    .i_xor_xmm1_xmm10:
    pxor xmm1, xmm10
    jmp ._loop

    .i_xor_xmm1_xmm11:
    pxor xmm1, xmm11
    jmp ._loop

    .i_xor_xmm1_xmm12:
    pxor xmm1, xmm12
    jmp ._loop

    .i_xor_xmm1_xmm13:
    pxor xmm1, xmm13
    jmp ._loop

    .i_xor_xmm1_xmm14:
    pxor xmm1, xmm14
    jmp ._loop

    .i_xor_xmm1_xmm15:
    pxor xmm1, xmm15
    jmp ._loop

    .i_xor_xmm2_xmm0:
    pxor xmm2, xmm0
    jmp ._loop

    .i_xor_xmm2_xmm1:
    pxor xmm2, xmm1
    jmp ._loop

    .i_xor_xmm2_xmm2:
    pxor xmm2, xmm2
    jmp ._loop

    .i_xor_xmm2_xmm3:
    pxor xmm2, xmm3
    jmp ._loop

    .i_xor_xmm2_xmm4:
    pxor xmm2, xmm4
    jmp ._loop

    .i_xor_xmm2_xmm5:
    pxor xmm2, xmm5
    jmp ._loop

    .i_xor_xmm2_xmm6:
    pxor xmm2, xmm6
    jmp ._loop

    .i_xor_xmm2_xmm7:
    pxor xmm2, xmm7
    jmp ._loop

    .i_xor_xmm2_xmm8:
    pxor xmm2, xmm8
    jmp ._loop

    .i_xor_xmm2_xmm9:
    pxor xmm2, xmm9
    jmp ._loop

    .i_xor_xmm2_xmm10:
    pxor xmm2, xmm10
    jmp ._loop

    .i_xor_xmm2_xmm11:
    pxor xmm2, xmm11
    jmp ._loop

    .i_xor_xmm2_xmm12:
    pxor xmm2, xmm12
    jmp ._loop

    .i_xor_xmm2_xmm13:
    pxor xmm2, xmm13
    jmp ._loop

    .i_xor_xmm2_xmm14:
    pxor xmm2, xmm14
    jmp ._loop

    .i_xor_xmm2_xmm15:
    pxor xmm2, xmm15
    jmp ._loop

    .i_xor_xmm3_xmm0:
    pxor xmm3, xmm0
    jmp ._loop

    .i_xor_xmm3_xmm1:
    pxor xmm3, xmm1
    jmp ._loop

    .i_xor_xmm3_xmm2:
    pxor xmm3, xmm2
    jmp ._loop

    .i_xor_xmm3_xmm3:
    pxor xmm3, xmm3
    jmp ._loop

    .i_xor_xmm3_xmm4:
    pxor xmm3, xmm4
    jmp ._loop

    .i_xor_xmm3_xmm5:
    pxor xmm3, xmm5
    jmp ._loop

    .i_xor_xmm3_xmm6:
    pxor xmm3, xmm6
    jmp ._loop

    .i_xor_xmm3_xmm7:
    pxor xmm3, xmm7
    jmp ._loop

    .i_xor_xmm3_xmm8:
    pxor xmm3, xmm8
    jmp ._loop

    .i_xor_xmm3_xmm9:
    pxor xmm3, xmm9
    jmp ._loop

    .i_xor_xmm3_xmm10:
    pxor xmm3, xmm10
    jmp ._loop

    .i_xor_xmm3_xmm11:
    pxor xmm3, xmm11
    jmp ._loop

    .i_xor_xmm3_xmm12:
    pxor xmm3, xmm12
    jmp ._loop

    .i_xor_xmm3_xmm13:
    pxor xmm3, xmm13
    jmp ._loop

    .i_xor_xmm3_xmm14:
    pxor xmm3, xmm14
    jmp ._loop

    .i_xor_xmm3_xmm15:
    pxor xmm3, xmm15
    jmp ._loop

    .i_xor_xmm4_xmm0:
    pxor xmm4, xmm0
    jmp ._loop

    .i_xor_xmm4_xmm1:
    pxor xmm4, xmm1
    jmp ._loop

    .i_xor_xmm4_xmm2:
    pxor xmm4, xmm2
    jmp ._loop

    .i_xor_xmm4_xmm3:
    pxor xmm4, xmm3
    jmp ._loop

    .i_xor_xmm4_xmm4:
    pxor xmm4, xmm4
    jmp ._loop

    .i_xor_xmm4_xmm5:
    pxor xmm4, xmm5
    jmp ._loop

    .i_xor_xmm4_xmm6:
    pxor xmm4, xmm6
    jmp ._loop

    .i_xor_xmm4_xmm7:
    pxor xmm4, xmm7
    jmp ._loop

    .i_xor_xmm4_xmm8:
    pxor xmm4, xmm8
    jmp ._loop

    .i_xor_xmm4_xmm9:
    pxor xmm4, xmm9
    jmp ._loop

    .i_xor_xmm4_xmm10:
    pxor xmm4, xmm10
    jmp ._loop

    .i_xor_xmm4_xmm11:
    pxor xmm4, xmm11
    jmp ._loop

    .i_xor_xmm4_xmm12:
    pxor xmm4, xmm12
    jmp ._loop

    .i_xor_xmm4_xmm13:
    pxor xmm4, xmm13
    jmp ._loop

    .i_xor_xmm4_xmm14:
    pxor xmm4, xmm14
    jmp ._loop

    .i_xor_xmm4_xmm15:
    pxor xmm4, xmm15
    jmp ._loop

    .i_xor_xmm5_xmm0:
    pxor xmm5, xmm0
    jmp ._loop

    .i_xor_xmm5_xmm1:
    pxor xmm5, xmm1
    jmp ._loop

    .i_xor_xmm5_xmm2:
    pxor xmm5, xmm2
    jmp ._loop

    .i_xor_xmm5_xmm3:
    pxor xmm5, xmm3
    jmp ._loop

    .i_xor_xmm5_xmm4:
    pxor xmm5, xmm4
    jmp ._loop

    .i_xor_xmm5_xmm5:
    pxor xmm5, xmm5
    jmp ._loop

    .i_xor_xmm5_xmm6:
    pxor xmm5, xmm6
    jmp ._loop

    .i_xor_xmm5_xmm7:
    pxor xmm5, xmm7
    jmp ._loop

    .i_xor_xmm5_xmm8:
    pxor xmm5, xmm8
    jmp ._loop

    .i_xor_xmm5_xmm9:
    pxor xmm5, xmm9
    jmp ._loop

    .i_xor_xmm5_xmm10:
    pxor xmm5, xmm10
    jmp ._loop

    .i_xor_xmm5_xmm11:
    pxor xmm5, xmm11
    jmp ._loop

    .i_xor_xmm5_xmm12:
    pxor xmm5, xmm12
    jmp ._loop

    .i_xor_xmm5_xmm13:
    pxor xmm5, xmm13
    jmp ._loop

    .i_xor_xmm5_xmm14:
    pxor xmm5, xmm14
    jmp ._loop

    .i_xor_xmm5_xmm15:
    pxor xmm5, xmm15
    jmp ._loop

    .i_xor_xmm6_xmm0:
    pxor xmm6, xmm0
    jmp ._loop

    .i_xor_xmm6_xmm1:
    pxor xmm6, xmm1
    jmp ._loop

    .i_xor_xmm6_xmm2:
    pxor xmm6, xmm2
    jmp ._loop

    .i_xor_xmm6_xmm3:
    pxor xmm6, xmm3
    jmp ._loop

    .i_xor_xmm6_xmm4:
    pxor xmm6, xmm4
    jmp ._loop

    .i_xor_xmm6_xmm5:
    pxor xmm6, xmm5
    jmp ._loop

    .i_xor_xmm6_xmm6:
    pxor xmm6, xmm6
    jmp ._loop

    .i_xor_xmm6_xmm7:
    pxor xmm6, xmm7
    jmp ._loop

    .i_xor_xmm6_xmm8:
    pxor xmm6, xmm8
    jmp ._loop

    .i_xor_xmm6_xmm9:
    pxor xmm6, xmm9
    jmp ._loop

    .i_xor_xmm6_xmm10:
    pxor xmm6, xmm10
    jmp ._loop

    .i_xor_xmm6_xmm11:
    pxor xmm6, xmm11
    jmp ._loop

    .i_xor_xmm6_xmm12:
    pxor xmm6, xmm12
    jmp ._loop

    .i_xor_xmm6_xmm13:
    pxor xmm6, xmm13
    jmp ._loop

    .i_xor_xmm6_xmm14:
    pxor xmm6, xmm14
    jmp ._loop

    .i_xor_xmm6_xmm15:
    pxor xmm6, xmm15
    jmp ._loop

    .i_xor_xmm7_xmm0:
    pxor xmm7, xmm0
    jmp ._loop

    .i_xor_xmm7_xmm1:
    pxor xmm7, xmm1
    jmp ._loop

    .i_xor_xmm7_xmm2:
    pxor xmm7, xmm2
    jmp ._loop

    .i_xor_xmm7_xmm3:
    pxor xmm7, xmm3
    jmp ._loop

    .i_xor_xmm7_xmm4:
    pxor xmm7, xmm4
    jmp ._loop

    .i_xor_xmm7_xmm5:
    pxor xmm7, xmm5
    jmp ._loop

    .i_xor_xmm7_xmm6:
    pxor xmm7, xmm6
    jmp ._loop

    .i_xor_xmm7_xmm7:
    pxor xmm7, xmm7
    jmp ._loop

    .i_xor_xmm7_xmm8:
    pxor xmm7, xmm8
    jmp ._loop

    .i_xor_xmm7_xmm9:
    pxor xmm7, xmm9
    jmp ._loop

    .i_xor_xmm7_xmm10:
    pxor xmm7, xmm10
    jmp ._loop

    .i_xor_xmm7_xmm11:
    pxor xmm7, xmm11
    jmp ._loop

    .i_xor_xmm7_xmm12:
    pxor xmm7, xmm12
    jmp ._loop

    .i_xor_xmm7_xmm13:
    pxor xmm7, xmm13
    jmp ._loop

    .i_xor_xmm7_xmm14:
    pxor xmm7, xmm14
    jmp ._loop

    .i_xor_xmm7_xmm15:
    pxor xmm7, xmm15
    jmp ._loop

    .i_xor_xmm8_xmm0:
    pxor xmm8, xmm0
    jmp ._loop

    .i_xor_xmm8_xmm1:
    pxor xmm8, xmm1
    jmp ._loop

    .i_xor_xmm8_xmm2:
    pxor xmm8, xmm2
    jmp ._loop

    .i_xor_xmm8_xmm3:
    pxor xmm8, xmm3
    jmp ._loop

    .i_xor_xmm8_xmm4:
    pxor xmm8, xmm4
    jmp ._loop

    .i_xor_xmm8_xmm5:
    pxor xmm8, xmm5
    jmp ._loop

    .i_xor_xmm8_xmm6:
    pxor xmm8, xmm6
    jmp ._loop

    .i_xor_xmm8_xmm7:
    pxor xmm8, xmm7
    jmp ._loop

    .i_xor_xmm8_xmm8:
    pxor xmm8, xmm8
    jmp ._loop

    .i_xor_xmm8_xmm9:
    pxor xmm8, xmm9
    jmp ._loop

    .i_xor_xmm8_xmm10:
    pxor xmm8, xmm10
    jmp ._loop

    .i_xor_xmm8_xmm11:
    pxor xmm8, xmm11
    jmp ._loop

    .i_xor_xmm8_xmm12:
    pxor xmm8, xmm12
    jmp ._loop

    .i_xor_xmm8_xmm13:
    pxor xmm8, xmm13
    jmp ._loop

    .i_xor_xmm8_xmm14:
    pxor xmm8, xmm14
    jmp ._loop

    .i_xor_xmm8_xmm15:
    pxor xmm8, xmm15
    jmp ._loop

    .i_xor_xmm9_xmm0:
    pxor xmm9, xmm0
    jmp ._loop

    .i_xor_xmm9_xmm1:
    pxor xmm9, xmm1
    jmp ._loop

    .i_xor_xmm9_xmm2:
    pxor xmm9, xmm2
    jmp ._loop

    .i_xor_xmm9_xmm3:
    pxor xmm9, xmm3
    jmp ._loop

    .i_xor_xmm9_xmm4:
    pxor xmm9, xmm4
    jmp ._loop

    .i_xor_xmm9_xmm5:
    pxor xmm9, xmm5
    jmp ._loop

    .i_xor_xmm9_xmm6:
    pxor xmm9, xmm6
    jmp ._loop

    .i_xor_xmm9_xmm7:
    pxor xmm9, xmm7
    jmp ._loop

    .i_xor_xmm9_xmm8:
    pxor xmm9, xmm8
    jmp ._loop

    .i_xor_xmm9_xmm9:
    pxor xmm9, xmm9
    jmp ._loop

    .i_xor_xmm9_xmm10:
    pxor xmm9, xmm10
    jmp ._loop

    .i_xor_xmm9_xmm11:
    pxor xmm9, xmm11
    jmp ._loop

    .i_xor_xmm9_xmm12:
    pxor xmm9, xmm12
    jmp ._loop

    .i_xor_xmm9_xmm13:
    pxor xmm9, xmm13
    jmp ._loop

    .i_xor_xmm9_xmm14:
    pxor xmm9, xmm14
    jmp ._loop

    .i_xor_xmm9_xmm15:
    pxor xmm9, xmm15
    jmp ._loop

    .i_xor_xmm10_xmm0:
    pxor xmm10, xmm0
    jmp ._loop

    .i_xor_xmm10_xmm1:
    pxor xmm10, xmm1
    jmp ._loop

    .i_xor_xmm10_xmm2:
    pxor xmm10, xmm2
    jmp ._loop

    .i_xor_xmm10_xmm3:
    pxor xmm10, xmm3
    jmp ._loop

    .i_xor_xmm10_xmm4:
    pxor xmm10, xmm4
    jmp ._loop

    .i_xor_xmm10_xmm5:
    pxor xmm10, xmm5
    jmp ._loop

    .i_xor_xmm10_xmm6:
    pxor xmm10, xmm6
    jmp ._loop

    .i_xor_xmm10_xmm7:
    pxor xmm10, xmm7
    jmp ._loop

    .i_xor_xmm10_xmm8:
    pxor xmm10, xmm8
    jmp ._loop

    .i_xor_xmm10_xmm9:
    pxor xmm10, xmm9
    jmp ._loop

    .i_xor_xmm10_xmm10:
    pxor xmm10, xmm10
    jmp ._loop

    .i_xor_xmm10_xmm11:
    pxor xmm10, xmm11
    jmp ._loop

    .i_xor_xmm10_xmm12:
    pxor xmm10, xmm12
    jmp ._loop

    .i_xor_xmm10_xmm13:
    pxor xmm10, xmm13
    jmp ._loop

    .i_xor_xmm10_xmm14:
    pxor xmm10, xmm14
    jmp ._loop

    .i_xor_xmm10_xmm15:
    pxor xmm10, xmm15
    jmp ._loop

    .i_xor_xmm11_xmm0:
    pxor xmm11, xmm0
    jmp ._loop

    .i_xor_xmm11_xmm1:
    pxor xmm11, xmm1
    jmp ._loop

    .i_xor_xmm11_xmm2:
    pxor xmm11, xmm2
    jmp ._loop

    .i_xor_xmm11_xmm3:
    pxor xmm11, xmm3
    jmp ._loop

    .i_xor_xmm11_xmm4:
    pxor xmm11, xmm4
    jmp ._loop

    .i_xor_xmm11_xmm5:
    pxor xmm11, xmm5
    jmp ._loop

    .i_xor_xmm11_xmm6:
    pxor xmm11, xmm6
    jmp ._loop

    .i_xor_xmm11_xmm7:
    pxor xmm11, xmm7
    jmp ._loop

    .i_xor_xmm11_xmm8:
    pxor xmm11, xmm8
    jmp ._loop

    .i_xor_xmm11_xmm9:
    pxor xmm11, xmm9
    jmp ._loop

    .i_xor_xmm11_xmm10:
    pxor xmm11, xmm10
    jmp ._loop

    .i_xor_xmm11_xmm11:
    pxor xmm11, xmm11
    jmp ._loop

    .i_xor_xmm11_xmm12:
    pxor xmm11, xmm12
    jmp ._loop

    .i_xor_xmm11_xmm13:
    pxor xmm11, xmm13
    jmp ._loop

    .i_xor_xmm11_xmm14:
    pxor xmm11, xmm14
    jmp ._loop

    .i_xor_xmm11_xmm15:
    pxor xmm11, xmm15
    jmp ._loop

    .i_xor_xmm12_xmm0:
    pxor xmm12, xmm0
    jmp ._loop

    .i_xor_xmm12_xmm1:
    pxor xmm12, xmm1
    jmp ._loop

    .i_xor_xmm12_xmm2:
    pxor xmm12, xmm2
    jmp ._loop

    .i_xor_xmm12_xmm3:
    pxor xmm12, xmm3
    jmp ._loop

    .i_xor_xmm12_xmm4:
    pxor xmm12, xmm4
    jmp ._loop

    .i_xor_xmm12_xmm5:
    pxor xmm12, xmm5
    jmp ._loop

    .i_xor_xmm12_xmm6:
    pxor xmm12, xmm6
    jmp ._loop

    .i_xor_xmm12_xmm7:
    pxor xmm12, xmm7
    jmp ._loop

    .i_xor_xmm12_xmm8:
    pxor xmm12, xmm8
    jmp ._loop

    .i_xor_xmm12_xmm9:
    pxor xmm12, xmm9
    jmp ._loop

    .i_xor_xmm12_xmm10:
    pxor xmm12, xmm10
    jmp ._loop

    .i_xor_xmm12_xmm11:
    pxor xmm12, xmm11
    jmp ._loop

    .i_xor_xmm12_xmm12:
    pxor xmm12, xmm12
    jmp ._loop

    .i_xor_xmm12_xmm13:
    pxor xmm12, xmm13
    jmp ._loop

    .i_xor_xmm12_xmm14:
    pxor xmm12, xmm14
    jmp ._loop

    .i_xor_xmm12_xmm15:
    pxor xmm12, xmm15
    jmp ._loop

    .i_xor_xmm13_xmm0:
    pxor xmm13, xmm0
    jmp ._loop

    .i_xor_xmm13_xmm1:
    pxor xmm13, xmm1
    jmp ._loop

    .i_xor_xmm13_xmm2:
    pxor xmm13, xmm2
    jmp ._loop

    .i_xor_xmm13_xmm3:
    pxor xmm13, xmm3
    jmp ._loop

    .i_xor_xmm13_xmm4:
    pxor xmm13, xmm4
    jmp ._loop

    .i_xor_xmm13_xmm5:
    pxor xmm13, xmm5
    jmp ._loop

    .i_xor_xmm13_xmm6:
    pxor xmm13, xmm6
    jmp ._loop

    .i_xor_xmm13_xmm7:
    pxor xmm13, xmm7
    jmp ._loop

    .i_xor_xmm13_xmm8:
    pxor xmm13, xmm8
    jmp ._loop

    .i_xor_xmm13_xmm9:
    pxor xmm13, xmm9
    jmp ._loop

    .i_xor_xmm13_xmm10:
    pxor xmm13, xmm10
    jmp ._loop

    .i_xor_xmm13_xmm11:
    pxor xmm13, xmm11
    jmp ._loop

    .i_xor_xmm13_xmm12:
    pxor xmm13, xmm12
    jmp ._loop

    .i_xor_xmm13_xmm13:
    pxor xmm13, xmm13
    jmp ._loop

    .i_xor_xmm13_xmm14:
    pxor xmm13, xmm14
    jmp ._loop

    .i_xor_xmm13_xmm15:
    pxor xmm13, xmm15
    jmp ._loop

    .i_xor_xmm14_xmm0:
    pxor xmm14, xmm0
    jmp ._loop

    .i_xor_xmm14_xmm1:
    pxor xmm14, xmm1
    jmp ._loop

    .i_xor_xmm14_xmm2:
    pxor xmm14, xmm2
    jmp ._loop

    .i_xor_xmm14_xmm3:
    pxor xmm14, xmm3
    jmp ._loop

    .i_xor_xmm14_xmm4:
    pxor xmm14, xmm4
    jmp ._loop

    .i_xor_xmm14_xmm5:
    pxor xmm14, xmm5
    jmp ._loop

    .i_xor_xmm14_xmm6:
    pxor xmm14, xmm6
    jmp ._loop

    .i_xor_xmm14_xmm7:
    pxor xmm14, xmm7
    jmp ._loop

    .i_xor_xmm14_xmm8:
    pxor xmm14, xmm8
    jmp ._loop

    .i_xor_xmm14_xmm9:
    pxor xmm14, xmm9
    jmp ._loop

    .i_xor_xmm14_xmm10:
    pxor xmm14, xmm10
    jmp ._loop

    .i_xor_xmm14_xmm11:
    pxor xmm14, xmm11
    jmp ._loop

    .i_xor_xmm14_xmm12:
    pxor xmm14, xmm12
    jmp ._loop

    .i_xor_xmm14_xmm13:
    pxor xmm14, xmm13
    jmp ._loop

    .i_xor_xmm14_xmm14:
    pxor xmm14, xmm14
    jmp ._loop

    .i_xor_xmm14_xmm15:
    pxor xmm14, xmm15
    jmp ._loop

    .i_xor_xmm15_xmm0:
    pxor xmm15, xmm0
    jmp ._loop

    .i_xor_xmm15_xmm1:
    pxor xmm15, xmm1
    jmp ._loop

    .i_xor_xmm15_xmm2:
    pxor xmm15, xmm2
    jmp ._loop

    .i_xor_xmm15_xmm3:
    pxor xmm15, xmm3
    jmp ._loop

    .i_xor_xmm15_xmm4:
    pxor xmm15, xmm4
    jmp ._loop

    .i_xor_xmm15_xmm5:
    pxor xmm15, xmm5
    jmp ._loop

    .i_xor_xmm15_xmm6:
    pxor xmm15, xmm6
    jmp ._loop

    .i_xor_xmm15_xmm7:
    pxor xmm15, xmm7
    jmp ._loop

    .i_xor_xmm15_xmm8:
    pxor xmm15, xmm8
    jmp ._loop

    .i_xor_xmm15_xmm9:
    pxor xmm15, xmm9
    jmp ._loop

    .i_xor_xmm15_xmm10:
    pxor xmm15, xmm10
    jmp ._loop

    .i_xor_xmm15_xmm11:
    pxor xmm15, xmm11
    jmp ._loop

    .i_xor_xmm15_xmm12:
    pxor xmm15, xmm12
    jmp ._loop

    .i_xor_xmm15_xmm13:
    pxor xmm15, xmm13
    jmp ._loop

    .i_xor_xmm15_xmm14:
    pxor xmm15, xmm14
    jmp ._loop

    .i_xor_xmm15_xmm15:
    pxor xmm15, xmm15
    jmp ._loop

    .i_xor_rax_rax:
    xor rax, rax
    jmp ._loop

    .i_xor_rax_rcx:
    xor rax, rcx
    jmp ._loop

    .i_xor_rax_rdx:
    xor rax, rdx
    jmp ._loop

    .i_xor_rax_r8:
    xor rax, r8
    jmp ._loop

    .i_xor_rax_r9:
    xor rax, r9
    jmp ._loop

    .i_xor_rax_r10:
    xor rax, r10
    jmp ._loop

    .i_xor_rax_r11:
    xor rax, r11
    jmp ._loop

    .i_xor_rax_r12:
    xor rax, r12
    jmp ._loop

    .i_xor_rax_r13:
    xor rax, r13
    jmp ._loop

    .i_xor_rax_rsi:
    xor rax, rsi
    jmp ._loop

    .i_xor_rax_rdi:
    xor rax, rdi
    jmp ._loop

    .i_xor_rax_rsp:
    xor rax, rsp
    jmp ._loop

    .i_xor_rax_rbp:
    xor rax, rbp
    jmp ._loop

    .i_xor_rcx_rax:
    xor rcx, rax
    jmp ._loop

    .i_xor_rcx_rcx:
    xor rcx, rcx
    jmp ._loop

    .i_xor_rcx_rdx:
    xor rcx, rdx
    jmp ._loop

    .i_xor_rcx_r8:
    xor rcx, r8
    jmp ._loop

    .i_xor_rcx_r9:
    xor rcx, r9
    jmp ._loop

    .i_xor_rcx_r10:
    xor rcx, r10
    jmp ._loop

    .i_xor_rcx_r11:
    xor rcx, r11
    jmp ._loop

    .i_xor_rcx_r12:
    xor rcx, r12
    jmp ._loop

    .i_xor_rcx_r13:
    xor rcx, r13
    jmp ._loop

    .i_xor_rcx_rsi:
    xor rcx, rsi
    jmp ._loop

    .i_xor_rcx_rdi:
    xor rcx, rdi
    jmp ._loop

    .i_xor_rcx_rsp:
    xor rcx, rsp
    jmp ._loop

    .i_xor_rcx_rbp:
    xor rcx, rbp
    jmp ._loop

    .i_xor_rdx_rax:
    xor rdx, rax
    jmp ._loop

    .i_xor_rdx_rcx:
    xor rdx, rcx
    jmp ._loop

    .i_xor_rdx_rdx:
    xor rdx, rdx
    jmp ._loop

    .i_xor_rdx_r8:
    xor rdx, r8
    jmp ._loop

    .i_xor_rdx_r9:
    xor rdx, r9
    jmp ._loop

    .i_xor_rdx_r10:
    xor rdx, r10
    jmp ._loop

    .i_xor_rdx_r11:
    xor rdx, r11
    jmp ._loop

    .i_xor_rdx_r12:
    xor rdx, r12
    jmp ._loop

    .i_xor_rdx_r13:
    xor rdx, r13
    jmp ._loop

    .i_xor_rdx_rsi:
    xor rdx, rsi
    jmp ._loop

    .i_xor_rdx_rdi:
    xor rdx, rdi
    jmp ._loop

    .i_xor_rdx_rsp:
    xor rdx, rsp
    jmp ._loop

    .i_xor_rdx_rbp:
    xor rdx, rbp
    jmp ._loop

    .i_xor_r8_rax:
    xor r8, rax
    jmp ._loop

    .i_xor_r8_rcx:
    xor r8, rcx
    jmp ._loop

    .i_xor_r8_rdx:
    xor r8, rdx
    jmp ._loop

    .i_xor_r8_r8:
    xor r8, r8
    jmp ._loop

    .i_xor_r8_r9:
    xor r8, r9
    jmp ._loop

    .i_xor_r8_r10:
    xor r8, r10
    jmp ._loop

    .i_xor_r8_r11:
    xor r8, r11
    jmp ._loop

    .i_xor_r8_r12:
    xor r8, r12
    jmp ._loop

    .i_xor_r8_r13:
    xor r8, r13
    jmp ._loop

    .i_xor_r8_rsi:
    xor r8, rsi
    jmp ._loop

    .i_xor_r8_rdi:
    xor r8, rdi
    jmp ._loop

    .i_xor_r8_rsp:
    xor r8, rsp
    jmp ._loop

    .i_xor_r8_rbp:
    xor r8, rbp
    jmp ._loop

    .i_xor_r9_rax:
    xor r9, rax
    jmp ._loop

    .i_xor_r9_rcx:
    xor r9, rcx
    jmp ._loop

    .i_xor_r9_rdx:
    xor r9, rdx
    jmp ._loop

    .i_xor_r9_r8:
    xor r9, r8
    jmp ._loop

    .i_xor_r9_r9:
    xor r9, r9
    jmp ._loop

    .i_xor_r9_r10:
    xor r9, r10
    jmp ._loop

    .i_xor_r9_r11:
    xor r9, r11
    jmp ._loop

    .i_xor_r9_r12:
    xor r9, r12
    jmp ._loop

    .i_xor_r9_r13:
    xor r9, r13
    jmp ._loop

    .i_xor_r9_rsi:
    xor r9, rsi
    jmp ._loop

    .i_xor_r9_rdi:
    xor r9, rdi
    jmp ._loop

    .i_xor_r9_rsp:
    xor r9, rsp
    jmp ._loop

    .i_xor_r9_rbp:
    xor r9, rbp
    jmp ._loop

    .i_xor_r10_rax:
    xor r10, rax
    jmp ._loop

    .i_xor_r10_rcx:
    xor r10, rcx
    jmp ._loop

    .i_xor_r10_rdx:
    xor r10, rdx
    jmp ._loop

    .i_xor_r10_r8:
    xor r10, r8
    jmp ._loop

    .i_xor_r10_r9:
    xor r10, r9
    jmp ._loop

    .i_xor_r10_r10:
    xor r10, r10
    jmp ._loop

    .i_xor_r10_r11:
    xor r10, r11
    jmp ._loop

    .i_xor_r10_r12:
    xor r10, r12
    jmp ._loop

    .i_xor_r10_r13:
    xor r10, r13
    jmp ._loop

    .i_xor_r10_rsi:
    xor r10, rsi
    jmp ._loop

    .i_xor_r10_rdi:
    xor r10, rdi
    jmp ._loop

    .i_xor_r10_rsp:
    xor r10, rsp
    jmp ._loop

    .i_xor_r10_rbp:
    xor r10, rbp
    jmp ._loop

    .i_xor_r11_rax:
    xor r11, rax
    jmp ._loop

    .i_xor_r11_rcx:
    xor r11, rcx
    jmp ._loop

    .i_xor_r11_rdx:
    xor r11, rdx
    jmp ._loop

    .i_xor_r11_r8:
    xor r11, r8
    jmp ._loop

    .i_xor_r11_r9:
    xor r11, r9
    jmp ._loop

    .i_xor_r11_r10:
    xor r11, r10
    jmp ._loop

    .i_xor_r11_r11:
    xor r11, r11
    jmp ._loop

    .i_xor_r11_r12:
    xor r11, r12
    jmp ._loop

    .i_xor_r11_r13:
    xor r11, r13
    jmp ._loop

    .i_xor_r11_rsi:
    xor r11, rsi
    jmp ._loop

    .i_xor_r11_rdi:
    xor r11, rdi
    jmp ._loop

    .i_xor_r11_rsp:
    xor r11, rsp
    jmp ._loop

    .i_xor_r11_rbp:
    xor r11, rbp
    jmp ._loop

    .i_xor_r12_rax:
    xor r12, rax
    jmp ._loop

    .i_xor_r12_rcx:
    xor r12, rcx
    jmp ._loop

    .i_xor_r12_rdx:
    xor r12, rdx
    jmp ._loop

    .i_xor_r12_r8:
    xor r12, r8
    jmp ._loop

    .i_xor_r12_r9:
    xor r12, r9
    jmp ._loop

    .i_xor_r12_r10:
    xor r12, r10
    jmp ._loop

    .i_xor_r12_r11:
    xor r12, r11
    jmp ._loop

    .i_xor_r12_r12:
    xor r12, r12
    jmp ._loop

    .i_xor_r12_r13:
    xor r12, r13
    jmp ._loop

    .i_xor_r12_rsi:
    xor r12, rsi
    jmp ._loop

    .i_xor_r12_rdi:
    xor r12, rdi
    jmp ._loop

    .i_xor_r12_rsp:
    xor r12, rsp
    jmp ._loop

    .i_xor_r12_rbp:
    xor r12, rbp
    jmp ._loop

    .i_xor_r13_rax:
    xor r13, rax
    jmp ._loop

    .i_xor_r13_rcx:
    xor r13, rcx
    jmp ._loop

    .i_xor_r13_rdx:
    xor r13, rdx
    jmp ._loop

    .i_xor_r13_r8:
    xor r13, r8
    jmp ._loop

    .i_xor_r13_r9:
    xor r13, r9
    jmp ._loop

    .i_xor_r13_r10:
    xor r13, r10
    jmp ._loop

    .i_xor_r13_r11:
    xor r13, r11
    jmp ._loop

    .i_xor_r13_r12:
    xor r13, r12
    jmp ._loop

    .i_xor_r13_r13:
    xor r13, r13
    jmp ._loop

    .i_xor_r13_rsi:
    xor r13, rsi
    jmp ._loop

    .i_xor_r13_rdi:
    xor r13, rdi
    jmp ._loop

    .i_xor_r13_rsp:
    xor r13, rsp
    jmp ._loop

    .i_xor_r13_rbp:
    xor r13, rbp
    jmp ._loop

    .i_xor_rsi_rax:
    xor rsi, rax
    jmp ._loop

    .i_xor_rsi_rcx:
    xor rsi, rcx
    jmp ._loop

    .i_xor_rsi_rdx:
    xor rsi, rdx
    jmp ._loop

    .i_xor_rsi_r8:
    xor rsi, r8
    jmp ._loop

    .i_xor_rsi_r9:
    xor rsi, r9
    jmp ._loop

    .i_xor_rsi_r10:
    xor rsi, r10
    jmp ._loop

    .i_xor_rsi_r11:
    xor rsi, r11
    jmp ._loop

    .i_xor_rsi_r12:
    xor rsi, r12
    jmp ._loop

    .i_xor_rsi_r13:
    xor rsi, r13
    jmp ._loop

    .i_xor_rsi_rsi:
    xor rsi, rsi
    jmp ._loop

    .i_xor_rsi_rdi:
    xor rsi, rdi
    jmp ._loop

    .i_xor_rsi_rsp:
    xor rsi, rsp
    jmp ._loop

    .i_xor_rsi_rbp:
    xor rsi, rbp
    jmp ._loop

    .i_xor_rdi_rax:
    xor rdi, rax
    jmp ._loop

    .i_xor_rdi_rcx:
    xor rdi, rcx
    jmp ._loop

    .i_xor_rdi_rdx:
    xor rdi, rdx
    jmp ._loop

    .i_xor_rdi_r8:
    xor rdi, r8
    jmp ._loop

    .i_xor_rdi_r9:
    xor rdi, r9
    jmp ._loop

    .i_xor_rdi_r10:
    xor rdi, r10
    jmp ._loop

    .i_xor_rdi_r11:
    xor rdi, r11
    jmp ._loop

    .i_xor_rdi_r12:
    xor rdi, r12
    jmp ._loop

    .i_xor_rdi_r13:
    xor rdi, r13
    jmp ._loop

    .i_xor_rdi_rsi:
    xor rdi, rsi
    jmp ._loop

    .i_xor_rdi_rdi:
    xor rdi, rdi
    jmp ._loop

    .i_xor_rdi_rsp:
    xor rdi, rsp
    jmp ._loop

    .i_xor_rdi_rbp:
    xor rdi, rbp
    jmp ._loop

    .i_xor_rsp_rax:
    xor rsp, rax
    jmp ._loop

    .i_xor_rsp_rcx:
    xor rsp, rcx
    jmp ._loop

    .i_xor_rsp_rdx:
    xor rsp, rdx
    jmp ._loop

    .i_xor_rsp_r8:
    xor rsp, r8
    jmp ._loop

    .i_xor_rsp_r9:
    xor rsp, r9
    jmp ._loop

    .i_xor_rsp_r10:
    xor rsp, r10
    jmp ._loop

    .i_xor_rsp_r11:
    xor rsp, r11
    jmp ._loop

    .i_xor_rsp_r12:
    xor rsp, r12
    jmp ._loop

    .i_xor_rsp_r13:
    xor rsp, r13
    jmp ._loop

    .i_xor_rsp_rsi:
    xor rsp, rsi
    jmp ._loop

    .i_xor_rsp_rdi:
    xor rsp, rdi
    jmp ._loop

    .i_xor_rsp_rsp:
    xor rsp, rsp
    jmp ._loop

    .i_xor_rsp_rbp:
    xor rsp, rbp
    jmp ._loop

    .i_xor_rbp_rax:
    xor rbp, rax
    jmp ._loop

    .i_xor_rbp_rcx:
    xor rbp, rcx
    jmp ._loop

    .i_xor_rbp_rdx:
    xor rbp, rdx
    jmp ._loop

    .i_xor_rbp_r8:
    xor rbp, r8
    jmp ._loop

    .i_xor_rbp_r9:
    xor rbp, r9
    jmp ._loop

    .i_xor_rbp_r10:
    xor rbp, r10
    jmp ._loop

    .i_xor_rbp_r11:
    xor rbp, r11
    jmp ._loop

    .i_xor_rbp_r12:
    xor rbp, r12
    jmp ._loop

    .i_xor_rbp_r13:
    xor rbp, r13
    jmp ._loop

    .i_xor_rbp_rsi:
    xor rbp, rsi
    jmp ._loop

    .i_xor_rbp_rdi:
    xor rbp, rdi
    jmp ._loop

    .i_xor_rbp_rsp:
    xor rbp, rsp
    jmp ._loop

    .i_xor_rbp_rbp:
    xor rbp, rbp
    jmp ._loop

    .i_xor_eax_eax:
    xor eax, eax
    jmp ._loop

    .i_xor_eax_ecx:
    xor eax, ecx
    jmp ._loop

    .i_xor_eax_edx:
    xor eax, edx
    jmp ._loop

    .i_xor_eax_esi:
    xor eax, esi
    jmp ._loop

    .i_xor_eax_edi:
    xor eax, edi
    jmp ._loop

    .i_xor_eax_esp:
    xor eax, esp
    jmp ._loop

    .i_xor_eax_ebp:
    xor eax, ebp
    jmp ._loop

    .i_xor_ecx_eax:
    xor ecx, eax
    jmp ._loop

    .i_xor_ecx_ecx:
    xor ecx, ecx
    jmp ._loop

    .i_xor_ecx_edx:
    xor ecx, edx
    jmp ._loop

    .i_xor_ecx_esi:
    xor ecx, esi
    jmp ._loop

    .i_xor_ecx_edi:
    xor ecx, edi
    jmp ._loop

    .i_xor_ecx_esp:
    xor ecx, esp
    jmp ._loop

    .i_xor_ecx_ebp:
    xor ecx, ebp
    jmp ._loop

    .i_xor_edx_eax:
    xor edx, eax
    jmp ._loop

    .i_xor_edx_ecx:
    xor edx, ecx
    jmp ._loop

    .i_xor_edx_edx:
    xor edx, edx
    jmp ._loop

    .i_xor_edx_esi:
    xor edx, esi
    jmp ._loop

    .i_xor_edx_edi:
    xor edx, edi
    jmp ._loop

    .i_xor_edx_esp:
    xor edx, esp
    jmp ._loop

    .i_xor_edx_ebp:
    xor edx, ebp
    jmp ._loop

    .i_xor_esi_eax:
    xor esi, eax
    jmp ._loop

    .i_xor_esi_ecx:
    xor esi, ecx
    jmp ._loop

    .i_xor_esi_edx:
    xor esi, edx
    jmp ._loop

    .i_xor_esi_esi:
    xor esi, esi
    jmp ._loop

    .i_xor_esi_edi:
    xor esi, edi
    jmp ._loop

    .i_xor_esi_esp:
    xor esi, esp
    jmp ._loop

    .i_xor_esi_ebp:
    xor esi, ebp
    jmp ._loop

    .i_xor_edi_eax:
    xor edi, eax
    jmp ._loop

    .i_xor_edi_ecx:
    xor edi, ecx
    jmp ._loop

    .i_xor_edi_edx:
    xor edi, edx
    jmp ._loop

    .i_xor_edi_esi:
    xor edi, esi
    jmp ._loop

    .i_xor_edi_edi:
    xor edi, edi
    jmp ._loop

    .i_xor_edi_esp:
    xor edi, esp
    jmp ._loop

    .i_xor_edi_ebp:
    xor edi, ebp
    jmp ._loop

    .i_xor_esp_eax:
    xor esp, eax
    jmp ._loop

    .i_xor_esp_ecx:
    xor esp, ecx
    jmp ._loop

    .i_xor_esp_edx:
    xor esp, edx
    jmp ._loop

    .i_xor_esp_esi:
    xor esp, esi
    jmp ._loop

    .i_xor_esp_edi:
    xor esp, edi
    jmp ._loop

    .i_xor_esp_esp:
    xor esp, esp
    jmp ._loop

    .i_xor_esp_ebp:
    xor esp, ebp
    jmp ._loop

    .i_xor_ebp_eax:
    xor ebp, eax
    jmp ._loop

    .i_xor_ebp_ecx:
    xor ebp, ecx
    jmp ._loop

    .i_xor_ebp_edx:
    xor ebp, edx
    jmp ._loop

    .i_xor_ebp_esi:
    xor ebp, esi
    jmp ._loop

    .i_xor_ebp_edi:
    xor ebp, edi
    jmp ._loop

    .i_xor_ebp_esp:
    xor ebp, esp
    jmp ._loop

    .i_xor_ebp_ebp:
    xor ebp, ebp
    jmp ._loop

    .i_xor_ax_ax:
    xor ax, ax
    jmp ._loop

    .i_xor_ax_cx:
    xor ax, cx
    jmp ._loop

    .i_xor_ax_dx:
    xor ax, dx
    jmp ._loop

    .i_xor_ax_si:
    xor ax, si
    jmp ._loop

    .i_xor_ax_di:
    xor ax, di
    jmp ._loop

    .i_xor_ax_sp:
    xor ax, sp
    jmp ._loop

    .i_xor_ax_bp:
    xor ax, bp
    jmp ._loop

    .i_xor_cx_ax:
    xor cx, ax
    jmp ._loop

    .i_xor_cx_cx:
    xor cx, cx
    jmp ._loop

    .i_xor_cx_dx:
    xor cx, dx
    jmp ._loop

    .i_xor_cx_si:
    xor cx, si
    jmp ._loop

    .i_xor_cx_di:
    xor cx, di
    jmp ._loop

    .i_xor_cx_sp:
    xor cx, sp
    jmp ._loop

    .i_xor_cx_bp:
    xor cx, bp
    jmp ._loop

    .i_xor_dx_ax:
    xor dx, ax
    jmp ._loop

    .i_xor_dx_cx:
    xor dx, cx
    jmp ._loop

    .i_xor_dx_dx:
    xor dx, dx
    jmp ._loop

    .i_xor_dx_si:
    xor dx, si
    jmp ._loop

    .i_xor_dx_di:
    xor dx, di
    jmp ._loop

    .i_xor_dx_sp:
    xor dx, sp
    jmp ._loop

    .i_xor_dx_bp:
    xor dx, bp
    jmp ._loop

    .i_xor_si_ax:
    xor si, ax
    jmp ._loop

    .i_xor_si_cx:
    xor si, cx
    jmp ._loop

    .i_xor_si_dx:
    xor si, dx
    jmp ._loop

    .i_xor_si_si:
    xor si, si
    jmp ._loop

    .i_xor_si_di:
    xor si, di
    jmp ._loop

    .i_xor_si_sp:
    xor si, sp
    jmp ._loop

    .i_xor_si_bp:
    xor si, bp
    jmp ._loop

    .i_xor_di_ax:
    xor di, ax
    jmp ._loop

    .i_xor_di_cx:
    xor di, cx
    jmp ._loop

    .i_xor_di_dx:
    xor di, dx
    jmp ._loop

    .i_xor_di_si:
    xor di, si
    jmp ._loop

    .i_xor_di_di:
    xor di, di
    jmp ._loop

    .i_xor_di_sp:
    xor di, sp
    jmp ._loop

    .i_xor_di_bp:
    xor di, bp
    jmp ._loop

    .i_xor_sp_ax:
    xor sp, ax
    jmp ._loop

    .i_xor_sp_cx:
    xor sp, cx
    jmp ._loop

    .i_xor_sp_dx:
    xor sp, dx
    jmp ._loop

    .i_xor_sp_si:
    xor sp, si
    jmp ._loop

    .i_xor_sp_di:
    xor sp, di
    jmp ._loop

    .i_xor_sp_sp:
    xor sp, sp
    jmp ._loop

    .i_xor_sp_bp:
    xor sp, bp
    jmp ._loop

    .i_xor_bp_ax:
    xor bp, ax
    jmp ._loop

    .i_xor_bp_cx:
    xor bp, cx
    jmp ._loop

    .i_xor_bp_dx:
    xor bp, dx
    jmp ._loop

    .i_xor_bp_si:
    xor bp, si
    jmp ._loop

    .i_xor_bp_di:
    xor bp, di
    jmp ._loop

    .i_xor_bp_sp:
    xor bp, sp
    jmp ._loop

    .i_xor_bp_bp:
    xor bp, bp
    jmp ._loop

    .i_xor_al_al:
    xor al, al
    jmp ._loop

    .i_xor_al_cl:
    xor al, cl
    jmp ._loop

    .i_xor_al_dl:
    xor al, dl
    jmp ._loop

    .i_xor_cl_al:
    xor cl, al
    jmp ._loop

    .i_xor_cl_cl:
    xor cl, cl
    jmp ._loop

    .i_xor_cl_dl:
    xor cl, dl
    jmp ._loop

    .i_xor_dl_al:
    xor dl, al
    jmp ._loop

    .i_xor_dl_cl:
    xor dl, cl
    jmp ._loop

    .i_xor_dl_dl:
    xor dl, dl
    jmp ._loop

    .i_ldd_rax:
    mov rax, [r15+16]
    add rax, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_rcx:
    mov rcx, [r15+16]
    add rcx, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_rdx:
    mov rdx, [r15+16]
    add rdx, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_r8:
    mov r8, [r15+16]
    add r8, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_r9:
    mov r9, [r15+16]
    add r9, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_r10:
    mov r10, [r15+16]
    add r10, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_r11:
    mov r11, [r15+16]
    add r11, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_r12:
    mov r12, [r15+16]
    add r12, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_r13:
    mov r13, [r15+16]
    add r13, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_rsi:
    mov rsi, [r15+16]
    add rsi, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_rdi:
    mov rdi, [r15+16]
    add rdi, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_rsp:
    mov rsp, [r15+16]
    add rsp, [r14]
    add r14, 8
    jmp ._loop

    .i_ldd_rbp:
    mov rbp, [r15+16]
    add rbp, [r14]
    add r14, 8
    jmp ._loop

    .i_mov_m_rax:
    mov rbx, [r14]
    mov [rbx], rax
    add r14, 8
    jmp ._loop

    .i_mov_m_rcx:
    mov rbx, [r14]
    mov [rbx], rcx
    add r14, 8
    jmp ._loop

    .i_mov_m_rdx:
    mov rbx, [r14]
    mov [rbx], rdx
    add r14, 8
    jmp ._loop

    .i_mov_m_r8:
    mov rbx, [r14]
    mov [rbx], r8
    add r14, 8
    jmp ._loop

    .i_mov_m_r9:
    mov rbx, [r14]
    mov [rbx], r9
    add r14, 8
    jmp ._loop

    .i_mov_m_r10:
    mov rbx, [r14]
    mov [rbx], r10
    add r14, 8
    jmp ._loop

    .i_mov_m_r11:
    mov rbx, [r14]
    mov [rbx], r11
    add r14, 8
    jmp ._loop

    .i_mov_m_r12:
    mov rbx, [r14]
    mov [rbx], r12
    add r14, 8
    jmp ._loop

    .i_mov_m_r13:
    mov rbx, [r14]
    mov [rbx], r13
    add r14, 8
    jmp ._loop

    .i_mov_m_rsi:
    mov rbx, [r14]
    mov [rbx], rsi
    add r14, 8
    jmp ._loop

    .i_mov_m_rdi:
    mov rbx, [r14]
    mov [rbx], rdi
    add r14, 8
    jmp ._loop

    .i_mov_m_rsp:
    mov rbx, [r14]
    mov [rbx], rsp
    add r14, 8
    jmp ._loop

    .i_mov_m_rbp:
    mov rbx, [r14]
    mov [rbx], rbp
    add r14, 8
    jmp ._loop

    .i_mov_d_rax:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], rax
    add r14, 8
    jmp ._loop

    .i_mov_d_rcx:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], rcx
    add r14, 8
    jmp ._loop

    .i_mov_d_rdx:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], rdx
    add r14, 8
    jmp ._loop

    .i_mov_d_r8:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], r8
    add r14, 8
    jmp ._loop

    .i_mov_d_r9:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], r9
    add r14, 8
    jmp ._loop

    .i_mov_d_r10:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], r10
    add r14, 8
    jmp ._loop

    .i_mov_d_r11:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], r11
    add r14, 8
    jmp ._loop

    .i_mov_d_r12:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], r12
    add r14, 8
    jmp ._loop

    .i_mov_d_r13:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], r13
    add r14, 8
    jmp ._loop

    .i_mov_d_rsi:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], rsi
    add r14, 8
    jmp ._loop

    .i_mov_d_rdi:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], rdi
    add r14, 8
    jmp ._loop

    .i_mov_d_rsp:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], rsp
    add r14, 8
    jmp ._loop

    .i_mov_d_rbp:
    mov rbx, [r14]
    mov rbx, [r15+16]
    mov [rbx], rbp
    add r14, 8
    jmp ._loop

    .i_cmp_rax:
    mov rbx, rax
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_rcx:
    mov rbx, rcx
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_rdx:
    mov rbx, rdx
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_r8:
    mov rbx, r8
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_r9:
    mov rbx, r9
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_r10:
    mov rbx, r10
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_r11:
    mov rbx, r11
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_r12:
    mov rbx, r12
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_r13:
    mov rbx, r13
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_rsi:
    mov rbx, rsi
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_rdi:
    mov rbx, rdi
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_rsp:
    mov rbx, rsp
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_rbp:
    mov rbx, rbp
    sub rbx, [r14]
    push rbx
    add r14, 8
    jmp ._loop

    .i_cmp_rax_rax:
    mov rbx, rax
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rax_rcx:
    mov rbx, rax
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rax_rdx:
    mov rbx, rax
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rax_r8:
    mov rbx, rax
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_rax_r9:
    mov rbx, rax
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_rax_r10:
    mov rbx, rax
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_rax_r11:
    mov rbx, rax
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_rax_r12:
    mov rbx, rax
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_rax_r13:
    mov rbx, rax
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_rax_rsi:
    mov rbx, rax
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_rax_rdi:
    mov rbx, rax
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_rax_rsp:
    mov rbx, rax
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rax_rbp:
    mov rbx, rax
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rcx_rax:
    mov rbx, rcx
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rcx_rcx:
    mov rbx, rcx
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rcx_rdx:
    mov rbx, rcx
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rcx_r8:
    mov rbx, rcx
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_rcx_r9:
    mov rbx, rcx
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_rcx_r10:
    mov rbx, rcx
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_rcx_r11:
    mov rbx, rcx
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_rcx_r12:
    mov rbx, rcx
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_rcx_r13:
    mov rbx, rcx
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_rcx_rsi:
    mov rbx, rcx
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_rcx_rdi:
    mov rbx, rcx
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_rcx_rsp:
    mov rbx, rcx
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rcx_rbp:
    mov rbx, rcx
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rdx_rax:
    mov rbx, rdx
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rdx_rcx:
    mov rbx, rdx
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rdx_rdx:
    mov rbx, rdx
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rdx_r8:
    mov rbx, rdx
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_rdx_r9:
    mov rbx, rdx
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_rdx_r10:
    mov rbx, rdx
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_rdx_r11:
    mov rbx, rdx
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_rdx_r12:
    mov rbx, rdx
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_rdx_r13:
    mov rbx, rdx
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_rdx_rsi:
    mov rbx, rdx
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_rdx_rdi:
    mov rbx, rdx
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_rdx_rsp:
    mov rbx, rdx
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rdx_rbp:
    mov rbx, rdx
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_r8_rax:
    mov rbx, r8
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_r8_rcx:
    mov rbx, r8
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_r8_rdx:
    mov rbx, r8
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_r8_r8:
    mov rbx, r8
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r8_r9:
    mov rbx, r8
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r8_r10:
    mov rbx, r8
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_r8_r11:
    mov rbx, r8
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_r8_r12:
    mov rbx, r8
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_r8_r13:
    mov rbx, r8
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_r8_rsi:
    mov rbx, r8
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_r8_rdi:
    mov rbx, r8
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_r8_rsp:
    mov rbx, r8
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_r8_rbp:
    mov rbx, r8
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_r9_rax:
    mov rbx, r9
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_r9_rcx:
    mov rbx, r9
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_r9_rdx:
    mov rbx, r9
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_r9_r8:
    mov rbx, r9
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r9_r9:
    mov rbx, r9
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r9_r10:
    mov rbx, r9
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_r9_r11:
    mov rbx, r9
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_r9_r12:
    mov rbx, r9
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_r9_r13:
    mov rbx, r9
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_r9_rsi:
    mov rbx, r9
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_r9_rdi:
    mov rbx, r9
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_r9_rsp:
    mov rbx, r9
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_r9_rbp:
    mov rbx, r9
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_r10_rax:
    mov rbx, r10
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_r10_rcx:
    mov rbx, r10
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_r10_rdx:
    mov rbx, r10
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_r10_r8:
    mov rbx, r10
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r10_r9:
    mov rbx, r10
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r10_r10:
    mov rbx, r10
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_r10_r11:
    mov rbx, r10
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_r10_r12:
    mov rbx, r10
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_r10_r13:
    mov rbx, r10
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_r10_rsi:
    mov rbx, r10
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_r10_rdi:
    mov rbx, r10
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_r10_rsp:
    mov rbx, r10
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_r10_rbp:
    mov rbx, r10
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_r11_rax:
    mov rbx, r11
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_r11_rcx:
    mov rbx, r11
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_r11_rdx:
    mov rbx, r11
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_r11_r8:
    mov rbx, r11
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r11_r9:
    mov rbx, r11
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r11_r10:
    mov rbx, r11
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_r11_r11:
    mov rbx, r11
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_r11_r12:
    mov rbx, r11
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_r11_r13:
    mov rbx, r11
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_r11_rsi:
    mov rbx, r11
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_r11_rdi:
    mov rbx, r11
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_r11_rsp:
    mov rbx, r11
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_r11_rbp:
    mov rbx, r11
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_r12_rax:
    mov rbx, r12
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_r12_rcx:
    mov rbx, r12
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_r12_rdx:
    mov rbx, r12
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_r12_r8:
    mov rbx, r12
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r12_r9:
    mov rbx, r12
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r12_r10:
    mov rbx, r12
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_r12_r11:
    mov rbx, r12
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_r12_r12:
    mov rbx, r12
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_r12_r13:
    mov rbx, r12
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_r12_rsi:
    mov rbx, r12
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_r12_rdi:
    mov rbx, r12
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_r12_rsp:
    mov rbx, r12
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_r12_rbp:
    mov rbx, r12
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_r13_rax:
    mov rbx, r13
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_r13_rcx:
    mov rbx, r13
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_r13_rdx:
    mov rbx, r13
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_r13_r8:
    mov rbx, r13
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r13_r9:
    mov rbx, r13
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r13_r10:
    mov rbx, r13
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_r13_r11:
    mov rbx, r13
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_r13_r12:
    mov rbx, r13
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_r13_r13:
    mov rbx, r13
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_r13_rsi:
    mov rbx, r13
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_r13_rdi:
    mov rbx, r13
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_r13_rsp:
    mov rbx, r13
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_r13_rbp:
    mov rbx, r13
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rsi_rax:
    mov rbx, rsi
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rsi_rcx:
    mov rbx, rsi
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rsi_rdx:
    mov rbx, rsi
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rsi_r8:
    mov rbx, rsi
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_rsi_r9:
    mov rbx, rsi
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_rsi_r10:
    mov rbx, rsi
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_rsi_r11:
    mov rbx, rsi
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_rsi_r12:
    mov rbx, rsi
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_rsi_r13:
    mov rbx, rsi
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_rsi_rsi:
    mov rbx, rsi
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_rsi_rdi:
    mov rbx, rsi
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_rsi_rsp:
    mov rbx, rsi
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rsi_rbp:
    mov rbx, rsi
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rdi_rax:
    mov rbx, rdi
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rdi_rcx:
    mov rbx, rdi
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rdi_rdx:
    mov rbx, rdi
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rdi_r8:
    mov rbx, rdi
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_rdi_r9:
    mov rbx, rdi
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_rdi_r10:
    mov rbx, rdi
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_rdi_r11:
    mov rbx, rdi
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_rdi_r12:
    mov rbx, rdi
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_rdi_r13:
    mov rbx, rdi
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_rdi_rsi:
    mov rbx, rdi
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_rdi_rdi:
    mov rbx, rdi
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_rdi_rsp:
    mov rbx, rdi
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rdi_rbp:
    mov rbx, rdi
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rsp_rax:
    mov rbx, rsp
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rsp_rcx:
    mov rbx, rsp
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rsp_rdx:
    mov rbx, rsp
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rsp_r8:
    mov rbx, rsp
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_rsp_r9:
    mov rbx, rsp
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_rsp_r10:
    mov rbx, rsp
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_rsp_r11:
    mov rbx, rsp
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_rsp_r12:
    mov rbx, rsp
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_rsp_r13:
    mov rbx, rsp
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_rsp_rsi:
    mov rbx, rsp
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_rsp_rdi:
    mov rbx, rsp
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_rsp_rsp:
    mov rbx, rsp
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rsp_rbp:
    mov rbx, rsp
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rbp_rax:
    mov rbx, rbp
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rbp_rcx:
    mov rbx, rbp
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rbp_rdx:
    mov rbx, rbp
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rbp_r8:
    mov rbx, rbp
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_rbp_r9:
    mov rbx, rbp
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_rbp_r10:
    mov rbx, rbp
    sub rbx, r10
    push rbx
    jmp ._loop

    .i_cmp_rbp_r11:
    mov rbx, rbp
    sub rbx, r11
    push rbx
    jmp ._loop

    .i_cmp_rbp_r12:
    mov rbx, rbp
    sub rbx, r12
    push rbx
    jmp ._loop

    .i_cmp_rbp_r13:
    mov rbx, rbp
    sub rbx, r13
    push rbx
    jmp ._loop

    .i_cmp_rbp_rsi:
    mov rbx, rbp
    sub rbx, rsi
    push rbx
    jmp ._loop

    .i_cmp_rbp_rdi:
    mov rbx, rbp
    sub rbx, rdi
    push rbx
    jmp ._loop

    .i_cmp_rbp_rsp:
    mov rbx, rbp
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rbp_rbp:
    mov rbx, rbp
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_dref_rax_rax:
    mov rax, [rax]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_rcx:
    mov rax, [rcx]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_rdx:
    mov rax, [rdx]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_r8:
    mov rax, [r8]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_r9:
    mov rax, [r9]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_r10:
    mov rax, [r10]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_r11:
    mov rax, [r11]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_r12:
    mov rax, [r12]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_r13:
    mov rax, [r13]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_rsi:
    mov rax, [rsi]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_rdi:
    mov rax, [rdi]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_rsp:
    mov rax, [rsp]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rax_rbp:
    mov rax, [rbp]
    add rax, [r15+16]
    jmp ._loop

    .i_dref_rcx_rax:
    mov rcx, [rax]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_rcx:
    mov rcx, [rcx]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_rdx:
    mov rcx, [rdx]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_r8:
    mov rcx, [r8]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_r9:
    mov rcx, [r9]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_r10:
    mov rcx, [r10]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_r11:
    mov rcx, [r11]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_r12:
    mov rcx, [r12]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_r13:
    mov rcx, [r13]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_rsi:
    mov rcx, [rsi]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_rdi:
    mov rcx, [rdi]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_rsp:
    mov rcx, [rsp]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rcx_rbp:
    mov rcx, [rbp]
    add rcx, [r15+16]
    jmp ._loop

    .i_dref_rdx_rax:
    mov rdx, [rax]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_rcx:
    mov rdx, [rcx]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_rdx:
    mov rdx, [rdx]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_r8:
    mov rdx, [r8]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_r9:
    mov rdx, [r9]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_r10:
    mov rdx, [r10]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_r11:
    mov rdx, [r11]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_r12:
    mov rdx, [r12]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_r13:
    mov rdx, [r13]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_rsi:
    mov rdx, [rsi]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_rdi:
    mov rdx, [rdi]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_rsp:
    mov rdx, [rsp]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_rdx_rbp:
    mov rdx, [rbp]
    add rdx, [r15+16]
    jmp ._loop

    .i_dref_r8_rax:
    mov r8, [rax]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_rcx:
    mov r8, [rcx]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_rdx:
    mov r8, [rdx]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_r8:
    mov r8, [r8]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_r9:
    mov r8, [r9]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_r10:
    mov r8, [r10]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_r11:
    mov r8, [r11]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_r12:
    mov r8, [r12]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_r13:
    mov r8, [r13]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_rsi:
    mov r8, [rsi]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_rdi:
    mov r8, [rdi]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_rsp:
    mov r8, [rsp]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r8_rbp:
    mov r8, [rbp]
    add r8, [r15+16]
    jmp ._loop

    .i_dref_r9_rax:
    mov r9, [rax]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_rcx:
    mov r9, [rcx]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_rdx:
    mov r9, [rdx]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_r8:
    mov r9, [r8]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_r9:
    mov r9, [r9]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_r10:
    mov r9, [r10]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_r11:
    mov r9, [r11]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_r12:
    mov r9, [r12]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_r13:
    mov r9, [r13]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_rsi:
    mov r9, [rsi]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_rdi:
    mov r9, [rdi]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_rsp:
    mov r9, [rsp]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r9_rbp:
    mov r9, [rbp]
    add r9, [r15+16]
    jmp ._loop

    .i_dref_r10_rax:
    mov r10, [rax]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_rcx:
    mov r10, [rcx]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_rdx:
    mov r10, [rdx]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_r8:
    mov r10, [r8]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_r9:
    mov r10, [r9]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_r10:
    mov r10, [r10]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_r11:
    mov r10, [r11]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_r12:
    mov r10, [r12]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_r13:
    mov r10, [r13]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_rsi:
    mov r10, [rsi]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_rdi:
    mov r10, [rdi]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_rsp:
    mov r10, [rsp]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r10_rbp:
    mov r10, [rbp]
    add r10, [r15+16]
    jmp ._loop

    .i_dref_r11_rax:
    mov r11, [rax]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_rcx:
    mov r11, [rcx]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_rdx:
    mov r11, [rdx]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_r8:
    mov r11, [r8]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_r9:
    mov r11, [r9]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_r10:
    mov r11, [r10]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_r11:
    mov r11, [r11]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_r12:
    mov r11, [r12]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_r13:
    mov r11, [r13]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_rsi:
    mov r11, [rsi]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_rdi:
    mov r11, [rdi]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_rsp:
    mov r11, [rsp]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r11_rbp:
    mov r11, [rbp]
    add r11, [r15+16]
    jmp ._loop

    .i_dref_r12_rax:
    mov r12, [rax]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_rcx:
    mov r12, [rcx]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_rdx:
    mov r12, [rdx]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_r8:
    mov r12, [r8]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_r9:
    mov r12, [r9]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_r10:
    mov r12, [r10]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_r11:
    mov r12, [r11]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_r12:
    mov r12, [r12]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_r13:
    mov r12, [r13]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_rsi:
    mov r12, [rsi]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_rdi:
    mov r12, [rdi]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_rsp:
    mov r12, [rsp]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r12_rbp:
    mov r12, [rbp]
    add r12, [r15+16]
    jmp ._loop

    .i_dref_r13_rax:
    mov r13, [rax]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_rcx:
    mov r13, [rcx]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_rdx:
    mov r13, [rdx]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_r8:
    mov r13, [r8]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_r9:
    mov r13, [r9]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_r10:
    mov r13, [r10]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_r11:
    mov r13, [r11]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_r12:
    mov r13, [r12]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_r13:
    mov r13, [r13]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_rsi:
    mov r13, [rsi]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_rdi:
    mov r13, [rdi]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_rsp:
    mov r13, [rsp]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_r13_rbp:
    mov r13, [rbp]
    add r13, [r15+16]
    jmp ._loop

    .i_dref_rsi_rax:
    mov rsi, [rax]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_rcx:
    mov rsi, [rcx]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_rdx:
    mov rsi, [rdx]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_r8:
    mov rsi, [r8]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_r9:
    mov rsi, [r9]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_r10:
    mov rsi, [r10]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_r11:
    mov rsi, [r11]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_r12:
    mov rsi, [r12]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_r13:
    mov rsi, [r13]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_rsi:
    mov rsi, [rsi]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_rdi:
    mov rsi, [rdi]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_rsp:
    mov rsi, [rsp]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rsi_rbp:
    mov rsi, [rbp]
    add rsi, [r15+16]
    jmp ._loop

    .i_dref_rdi_rax:
    mov rdi, [rax]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_rcx:
    mov rdi, [rcx]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_rdx:
    mov rdi, [rdx]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_r8:
    mov rdi, [r8]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_r9:
    mov rdi, [r9]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_r10:
    mov rdi, [r10]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_r11:
    mov rdi, [r11]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_r12:
    mov rdi, [r12]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_r13:
    mov rdi, [r13]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_rsi:
    mov rdi, [rsi]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_rdi:
    mov rdi, [rdi]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_rsp:
    mov rdi, [rsp]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rdi_rbp:
    mov rdi, [rbp]
    add rdi, [r15+16]
    jmp ._loop

    .i_dref_rsp_rax:
    mov rsp, [rax]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_rcx:
    mov rsp, [rcx]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_rdx:
    mov rsp, [rdx]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_r8:
    mov rsp, [r8]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_r9:
    mov rsp, [r9]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_r10:
    mov rsp, [r10]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_r11:
    mov rsp, [r11]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_r12:
    mov rsp, [r12]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_r13:
    mov rsp, [r13]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_rsi:
    mov rsp, [rsi]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_rdi:
    mov rsp, [rdi]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_rsp:
    mov rsp, [rsp]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rsp_rbp:
    mov rsp, [rbp]
    add rsp, [r15+16]
    jmp ._loop

    .i_dref_rbp_rax:
    mov rbp, [rax]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_rcx:
    mov rbp, [rcx]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_rdx:
    mov rbp, [rdx]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_r8:
    mov rbp, [r8]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_r9:
    mov rbp, [r9]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_r10:
    mov rbp, [r10]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_r11:
    mov rbp, [r11]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_r12:
    mov rbp, [r12]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_r13:
    mov rbp, [r13]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_rsi:
    mov rbp, [rsi]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_rdi:
    mov rbp, [rdi]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_rsp:
    mov rbp, [rsp]
    add rbp, [r15+16]
    jmp ._loop

    .i_dref_rbp_rbp:
    mov rbp, [rbp]
    add rbp, [r15+16]
    jmp ._loop

    .i_jmp:
    add r14, 8
    mov r14, [r14-8]
    add r14, [r15+8]
    jmp ._loop

    .i_je:
    add r14, 8
    pop rbx
    cmp rbx, 0
    jne ._loop
    mov r14, [r14-8]
    add r14, [r15+8]
    jmp ._loop

    .i_jz:
    add r14, 8
    pop rbx
    cmp rbx, 0
    jnz ._loop
    mov r14, [r14-8]
    add r14, [r15+8]
    jmp ._loop

    .i_jne:
    add r14, 8
    pop rbx
    cmp rbx, 0
    je ._loop
    mov r14, [r14-8]
    add r14, [r15+8]
    jmp ._loop

    .i_jl:
    add r14, 8
    pop rbx
    cmp rbx, 0
    jge ._loop
    mov r14, [r14-8]
    add r14, [r15+8]
    jmp ._loop

    .i_jg:
    add r14, 8
    pop rbx
    cmp rbx, 0
    jle ._loop
    mov r14, [r14-8]
    add r14, [r15+8]
    jmp ._loop

    .i_jle:
    add r14, 8
    pop rbx
    cmp rbx, 0
    jg ._loop
    mov r14, [r14-8]
    add r14, [r15+8]
    jmp ._loop

    .i_jge:
    add r14, 8
    pop rbx
    cmp rbx, 0
    jl ._loop
    mov r14, [r14-8]
    add r14, [r15+8]
    jmp ._loop

    .i_call:
    add r14, 8
    push r14
    mov r14, [r14-8]
    add r14, [r15+8]
    jmp ._loop

    .i_extern_call:
    add r14, 8
    push r14
    push r15
    mov rbx, [r15+24]
    add rbx, [r14-8]
    call [rbx]
    pop r15
    pop r14
    jmp ._loop

    .i_ret:
    pop r14
    jmp ._loop

    .i_leave:
    leave
    jmp ._loop

    .i_enter:
    push rbp
    mov rbp, rsp
    jmp ._loop


    ._return:
    leave

    pop rdi
    pop rsi
    pop r12
    pop r13
    pop r15
    pop r14
    pop rbx

    ret
