
global run_on_bvm_with_desc
extern handle_invalid_bvm_oper

section .text
run_on_bvm_with_desc:

    push rbx
    push rsi
    push rdi

    push rbp
    mov rbp, rsp
    
    mov rdi, rcx
    mov rsi, [rdi+8]
    add rsi, [rdi]
    
    ._loop:
    mov bx, [rsi]
    add rsi, 2
    cmp bx, 0x0
    je .i_exit
    cmp bx, 0x1
    je .i_nop
    cmp bx, 0x2
    je .i_push_rax
    cmp bx, 0x3
    je .i_push_rcx
    cmp bx, 0x4
    je .i_push_rdx
    cmp bx, 0x5
    je .i_push_r8
    cmp bx, 0x6
    je .i_push_r9
    cmp bx, 0x7
    je .i_push_r10
    cmp bx, 0x8
    je .i_push_r11
    cmp bx, 0x9
    je .i_push_rsp
    cmp bx, 0xa
    je .i_push_rbp
    cmp bx, 0xb
    je .i_pop_rax
    cmp bx, 0xc
    je .i_pop_rcx
    cmp bx, 0xd
    je .i_pop_rdx
    cmp bx, 0xe
    je .i_pop_r8
    cmp bx, 0xf
    je .i_pop_r9
    cmp bx, 0x10
    je .i_pop_r10
    cmp bx, 0x11
    je .i_pop_r11
    cmp bx, 0x12
    je .i_pop_rsp
    cmp bx, 0x13
    je .i_pop_rbp
    cmp bx, 0x14
    je .i_dref_rax
    cmp bx, 0x15
    je .i_dref_rcx
    cmp bx, 0x16
    je .i_dref_rdx
    cmp bx, 0x17
    je .i_dref_r8
    cmp bx, 0x18
    je .i_dref_r9
    cmp bx, 0x19
    je .i_dref_r10
    cmp bx, 0x1a
    je .i_dref_r11
    cmp bx, 0x1b
    je .i_dref_rsp
    cmp bx, 0x1c
    je .i_dref_rbp
    cmp bx, 0x1d
    je .i_mov_rax_t
    cmp bx, 0x1e
    je .i_mov_rcx_t
    cmp bx, 0x1f
    je .i_mov_rdx_t
    cmp bx, 0x20
    je .i_mov_r8_t
    cmp bx, 0x21
    je .i_mov_r9_t
    cmp bx, 0x22
    je .i_mov_r10_t
    cmp bx, 0x23
    je .i_mov_r11_t
    cmp bx, 0x24
    je .i_mov_rsp_t
    cmp bx, 0x25
    je .i_mov_rbp_t
    cmp bx, 0x26
    je .i_add_rax_t
    cmp bx, 0x27
    je .i_add_rcx_t
    cmp bx, 0x28
    je .i_add_rdx_t
    cmp bx, 0x29
    je .i_add_r8_t
    cmp bx, 0x2a
    je .i_add_r9_t
    cmp bx, 0x2b
    je .i_add_r10_t
    cmp bx, 0x2c
    je .i_add_r11_t
    cmp bx, 0x2d
    je .i_add_rsp_t
    cmp bx, 0x2e
    je .i_add_rbp_t
    cmp bx, 0x2f
    je .i_sub_rax_t
    cmp bx, 0x30
    je .i_sub_rcx_t
    cmp bx, 0x31
    je .i_sub_rdx_t
    cmp bx, 0x32
    je .i_sub_r8_t
    cmp bx, 0x33
    je .i_sub_r9_t
    cmp bx, 0x34
    je .i_sub_r10_t
    cmp bx, 0x35
    je .i_sub_r11_t
    cmp bx, 0x36
    je .i_sub_rsp_t
    cmp bx, 0x37
    je .i_sub_rbp_t
    cmp bx, 0x38
    je .i_imul_rax_t
    cmp bx, 0x39
    je .i_imul_rcx_t
    cmp bx, 0x3a
    je .i_imul_rdx_t
    cmp bx, 0x3b
    je .i_imul_r8_t
    cmp bx, 0x3c
    je .i_imul_r9_t
    cmp bx, 0x3d
    je .i_imul_r10_t
    cmp bx, 0x3e
    je .i_imul_r11_t
    cmp bx, 0x3f
    je .i_imul_rsp_t
    cmp bx, 0x40
    je .i_imul_rbp_t
    cmp bx, 0x41
    je .i_and_rax_t
    cmp bx, 0x42
    je .i_and_rcx_t
    cmp bx, 0x43
    je .i_and_rdx_t
    cmp bx, 0x44
    je .i_and_r8_t
    cmp bx, 0x45
    je .i_and_r9_t
    cmp bx, 0x46
    je .i_and_r10_t
    cmp bx, 0x47
    je .i_and_r11_t
    cmp bx, 0x48
    je .i_and_rsp_t
    cmp bx, 0x49
    je .i_and_rbp_t
    cmp bx, 0x4a
    je .i_or_rax_t
    cmp bx, 0x4b
    je .i_or_rcx_t
    cmp bx, 0x4c
    je .i_or_rdx_t
    cmp bx, 0x4d
    je .i_or_r8_t
    cmp bx, 0x4e
    je .i_or_r9_t
    cmp bx, 0x4f
    je .i_or_r10_t
    cmp bx, 0x50
    je .i_or_r11_t
    cmp bx, 0x51
    je .i_or_rsp_t
    cmp bx, 0x52
    je .i_or_rbp_t
    cmp bx, 0x53
    je .i_xor_rax_t
    cmp bx, 0x54
    je .i_xor_rcx_t
    cmp bx, 0x55
    je .i_xor_rdx_t
    cmp bx, 0x56
    je .i_xor_r8_t
    cmp bx, 0x57
    je .i_xor_r9_t
    cmp bx, 0x58
    je .i_xor_r10_t
    cmp bx, 0x59
    je .i_xor_r11_t
    cmp bx, 0x5a
    je .i_xor_rsp_t
    cmp bx, 0x5b
    je .i_xor_rbp_t
    cmp bx, 0x5c
    je .i_ldd_rax_t
    cmp bx, 0x5d
    je .i_ldd_rcx_t
    cmp bx, 0x5e
    je .i_ldd_rdx_t
    cmp bx, 0x5f
    je .i_ldd_r8_t
    cmp bx, 0x60
    je .i_ldd_r9_t
    cmp bx, 0x61
    je .i_ldd_r10_t
    cmp bx, 0x62
    je .i_ldd_r11_t
    cmp bx, 0x63
    je .i_ldd_rsp_t
    cmp bx, 0x64
    je .i_ldd_rbp_t
    cmp bx, 0x65
    je .i_cmp_rax_t
    cmp bx, 0x66
    je .i_cmp_rcx_t
    cmp bx, 0x67
    je .i_cmp_rdx_t
    cmp bx, 0x68
    je .i_cmp_r8_t
    cmp bx, 0x69
    je .i_cmp_r9_t
    cmp bx, 0x6a
    je .i_cmp_r10_t
    cmp bx, 0x6b
    je .i_cmp_r11_t
    cmp bx, 0x6c
    je .i_cmp_rsp_t
    cmp bx, 0x6d
    je .i_cmp_rbp_t
    cmp bx, 0x6e
    je .i_mov_rax_rax
    cmp bx, 0x6f
    je .i_mov_rax_rcx
    cmp bx, 0x70
    je .i_mov_rax_rdx
    cmp bx, 0x71
    je .i_mov_rax_r8
    cmp bx, 0x72
    je .i_mov_rax_r9
    cmp bx, 0x73
    je .i_mov_rax_r10
    cmp bx, 0x74
    je .i_mov_rax_r11
    cmp bx, 0x75
    je .i_mov_rax_rsp
    cmp bx, 0x76
    je .i_mov_rax_rbp
    cmp bx, 0x77
    je .i_mov_rcx_rax
    cmp bx, 0x78
    je .i_mov_rcx_rcx
    cmp bx, 0x79
    je .i_mov_rcx_rdx
    cmp bx, 0x7a
    je .i_mov_rcx_r8
    cmp bx, 0x7b
    je .i_mov_rcx_r9
    cmp bx, 0x7c
    je .i_mov_rcx_r10
    cmp bx, 0x7d
    je .i_mov_rcx_r11
    cmp bx, 0x7e
    je .i_mov_rcx_rsp
    cmp bx, 0x7f
    je .i_mov_rcx_rbp
    cmp bx, 0x80
    je .i_mov_rdx_rax
    cmp bx, 0x81
    je .i_mov_rdx_rcx
    cmp bx, 0x82
    je .i_mov_rdx_rdx
    cmp bx, 0x83
    je .i_mov_rdx_r8
    cmp bx, 0x84
    je .i_mov_rdx_r9
    cmp bx, 0x85
    je .i_mov_rdx_r10
    cmp bx, 0x86
    je .i_mov_rdx_r11
    cmp bx, 0x87
    je .i_mov_rdx_rsp
    cmp bx, 0x88
    je .i_mov_rdx_rbp
    cmp bx, 0x89
    je .i_mov_r8_rax
    cmp bx, 0x8a
    je .i_mov_r8_rcx
    cmp bx, 0x8b
    je .i_mov_r8_rdx
    cmp bx, 0x8c
    je .i_mov_r8_r8
    cmp bx, 0x8d
    je .i_mov_r8_r9
    cmp bx, 0x8e
    je .i_mov_r8_r10
    cmp bx, 0x8f
    je .i_mov_r8_r11
    cmp bx, 0x90
    je .i_mov_r8_rsp
    cmp bx, 0x91
    je .i_mov_r8_rbp
    cmp bx, 0x92
    je .i_mov_r9_rax
    cmp bx, 0x93
    je .i_mov_r9_rcx
    cmp bx, 0x94
    je .i_mov_r9_rdx
    cmp bx, 0x95
    je .i_mov_r9_r8
    cmp bx, 0x96
    je .i_mov_r9_r9
    cmp bx, 0x97
    je .i_mov_r9_r10
    cmp bx, 0x98
    je .i_mov_r9_r11
    cmp bx, 0x99
    je .i_mov_r9_rsp
    cmp bx, 0x9a
    je .i_mov_r9_rbp
    cmp bx, 0x9b
    je .i_mov_r10_rax
    cmp bx, 0x9c
    je .i_mov_r10_rcx
    cmp bx, 0x9d
    je .i_mov_r10_rdx
    cmp bx, 0x9e
    je .i_mov_r10_r8
    cmp bx, 0x9f
    je .i_mov_r10_r9
    cmp bx, 0xa0
    je .i_mov_r10_r10
    cmp bx, 0xa1
    je .i_mov_r10_r11
    cmp bx, 0xa2
    je .i_mov_r10_rsp
    cmp bx, 0xa3
    je .i_mov_r10_rbp
    cmp bx, 0xa4
    je .i_mov_r11_rax
    cmp bx, 0xa5
    je .i_mov_r11_rcx
    cmp bx, 0xa6
    je .i_mov_r11_rdx
    cmp bx, 0xa7
    je .i_mov_r11_r8
    cmp bx, 0xa8
    je .i_mov_r11_r9
    cmp bx, 0xa9
    je .i_mov_r11_r10
    cmp bx, 0xaa
    je .i_mov_r11_r11
    cmp bx, 0xab
    je .i_mov_r11_rsp
    cmp bx, 0xac
    je .i_mov_r11_rbp
    cmp bx, 0xad
    je .i_mov_rsp_rax
    cmp bx, 0xae
    je .i_mov_rsp_rcx
    cmp bx, 0xaf
    je .i_mov_rsp_rdx
    cmp bx, 0xb0
    je .i_mov_rsp_r8
    cmp bx, 0xb1
    je .i_mov_rsp_r9
    cmp bx, 0xb2
    je .i_mov_rsp_r10
    cmp bx, 0xb3
    je .i_mov_rsp_r11
    cmp bx, 0xb4
    je .i_mov_rsp_rsp
    cmp bx, 0xb5
    je .i_mov_rsp_rbp
    cmp bx, 0xb6
    je .i_mov_rbp_rax
    cmp bx, 0xb7
    je .i_mov_rbp_rcx
    cmp bx, 0xb8
    je .i_mov_rbp_rdx
    cmp bx, 0xb9
    je .i_mov_rbp_r8
    cmp bx, 0xba
    je .i_mov_rbp_r9
    cmp bx, 0xbb
    je .i_mov_rbp_r10
    cmp bx, 0xbc
    je .i_mov_rbp_r11
    cmp bx, 0xbd
    je .i_mov_rbp_rsp
    cmp bx, 0xbe
    je .i_mov_rbp_rbp
    cmp bx, 0xbf
    je .i_add_rax_rax
    cmp bx, 0xc0
    je .i_add_rax_rcx
    cmp bx, 0xc1
    je .i_add_rax_rdx
    cmp bx, 0xc2
    je .i_add_rax_r8
    cmp bx, 0xc3
    je .i_add_rax_r9
    cmp bx, 0xc4
    je .i_add_rax_r10
    cmp bx, 0xc5
    je .i_add_rax_r11
    cmp bx, 0xc6
    je .i_add_rax_rsp
    cmp bx, 0xc7
    je .i_add_rax_rbp
    cmp bx, 0xc8
    je .i_add_rcx_rax
    cmp bx, 0xc9
    je .i_add_rcx_rcx
    cmp bx, 0xca
    je .i_add_rcx_rdx
    cmp bx, 0xcb
    je .i_add_rcx_r8
    cmp bx, 0xcc
    je .i_add_rcx_r9
    cmp bx, 0xcd
    je .i_add_rcx_r10
    cmp bx, 0xce
    je .i_add_rcx_r11
    cmp bx, 0xcf
    je .i_add_rcx_rsp
    cmp bx, 0xd0
    je .i_add_rcx_rbp
    cmp bx, 0xd1
    je .i_add_rdx_rax
    cmp bx, 0xd2
    je .i_add_rdx_rcx
    cmp bx, 0xd3
    je .i_add_rdx_rdx
    cmp bx, 0xd4
    je .i_add_rdx_r8
    cmp bx, 0xd5
    je .i_add_rdx_r9
    cmp bx, 0xd6
    je .i_add_rdx_r10
    cmp bx, 0xd7
    je .i_add_rdx_r11
    cmp bx, 0xd8
    je .i_add_rdx_rsp
    cmp bx, 0xd9
    je .i_add_rdx_rbp
    cmp bx, 0xda
    je .i_add_r8_rax
    cmp bx, 0xdb
    je .i_add_r8_rcx
    cmp bx, 0xdc
    je .i_add_r8_rdx
    cmp bx, 0xdd
    je .i_add_r8_r8
    cmp bx, 0xde
    je .i_add_r8_r9
    cmp bx, 0xdf
    je .i_add_r8_r10
    cmp bx, 0xe0
    je .i_add_r8_r11
    cmp bx, 0xe1
    je .i_add_r8_rsp
    cmp bx, 0xe2
    je .i_add_r8_rbp
    cmp bx, 0xe3
    je .i_add_r9_rax
    cmp bx, 0xe4
    je .i_add_r9_rcx
    cmp bx, 0xe5
    je .i_add_r9_rdx
    cmp bx, 0xe6
    je .i_add_r9_r8
    cmp bx, 0xe7
    je .i_add_r9_r9
    cmp bx, 0xe8
    je .i_add_r9_r10
    cmp bx, 0xe9
    je .i_add_r9_r11
    cmp bx, 0xea
    je .i_add_r9_rsp
    cmp bx, 0xeb
    je .i_add_r9_rbp
    cmp bx, 0xec
    je .i_add_r10_rax
    cmp bx, 0xed
    je .i_add_r10_rcx
    cmp bx, 0xee
    je .i_add_r10_rdx
    cmp bx, 0xef
    je .i_add_r10_r8
    cmp bx, 0xf0
    je .i_add_r10_r9
    cmp bx, 0xf1
    je .i_add_r10_r10
    cmp bx, 0xf2
    je .i_add_r10_r11
    cmp bx, 0xf3
    je .i_add_r10_rsp
    cmp bx, 0xf4
    je .i_add_r10_rbp
    cmp bx, 0xf5
    je .i_add_r11_rax
    cmp bx, 0xf6
    je .i_add_r11_rcx
    cmp bx, 0xf7
    je .i_add_r11_rdx
    cmp bx, 0xf8
    je .i_add_r11_r8
    cmp bx, 0xf9
    je .i_add_r11_r9
    cmp bx, 0xfa
    je .i_add_r11_r10
    cmp bx, 0xfb
    je .i_add_r11_r11
    cmp bx, 0xfc
    je .i_add_r11_rsp
    cmp bx, 0xfd
    je .i_add_r11_rbp
    cmp bx, 0xfe
    je .i_add_rsp_rax
    cmp bx, 0xff
    je .i_add_rsp_rcx
    cmp bx, 0x100
    je .i_add_rsp_rdx
    cmp bx, 0x101
    je .i_add_rsp_r8
    cmp bx, 0x102
    je .i_add_rsp_r9
    cmp bx, 0x103
    je .i_add_rsp_r10
    cmp bx, 0x104
    je .i_add_rsp_r11
    cmp bx, 0x105
    je .i_add_rsp_rsp
    cmp bx, 0x106
    je .i_add_rsp_rbp
    cmp bx, 0x107
    je .i_add_rbp_rax
    cmp bx, 0x108
    je .i_add_rbp_rcx
    cmp bx, 0x109
    je .i_add_rbp_rdx
    cmp bx, 0x10a
    je .i_add_rbp_r8
    cmp bx, 0x10b
    je .i_add_rbp_r9
    cmp bx, 0x10c
    je .i_add_rbp_r10
    cmp bx, 0x10d
    je .i_add_rbp_r11
    cmp bx, 0x10e
    je .i_add_rbp_rsp
    cmp bx, 0x10f
    je .i_add_rbp_rbp
    cmp bx, 0x110
    je .i_sub_rax_rax
    cmp bx, 0x111
    je .i_sub_rax_rcx
    cmp bx, 0x112
    je .i_sub_rax_rdx
    cmp bx, 0x113
    je .i_sub_rax_r8
    cmp bx, 0x114
    je .i_sub_rax_r9
    cmp bx, 0x115
    je .i_sub_rax_r10
    cmp bx, 0x116
    je .i_sub_rax_r11
    cmp bx, 0x117
    je .i_sub_rax_rsp
    cmp bx, 0x118
    je .i_sub_rax_rbp
    cmp bx, 0x119
    je .i_sub_rcx_rax
    cmp bx, 0x11a
    je .i_sub_rcx_rcx
    cmp bx, 0x11b
    je .i_sub_rcx_rdx
    cmp bx, 0x11c
    je .i_sub_rcx_r8
    cmp bx, 0x11d
    je .i_sub_rcx_r9
    cmp bx, 0x11e
    je .i_sub_rcx_r10
    cmp bx, 0x11f
    je .i_sub_rcx_r11
    cmp bx, 0x120
    je .i_sub_rcx_rsp
    cmp bx, 0x121
    je .i_sub_rcx_rbp
    cmp bx, 0x122
    je .i_sub_rdx_rax
    cmp bx, 0x123
    je .i_sub_rdx_rcx
    cmp bx, 0x124
    je .i_sub_rdx_rdx
    cmp bx, 0x125
    je .i_sub_rdx_r8
    cmp bx, 0x126
    je .i_sub_rdx_r9
    cmp bx, 0x127
    je .i_sub_rdx_r10
    cmp bx, 0x128
    je .i_sub_rdx_r11
    cmp bx, 0x129
    je .i_sub_rdx_rsp
    cmp bx, 0x12a
    je .i_sub_rdx_rbp
    cmp bx, 0x12b
    je .i_sub_r8_rax
    cmp bx, 0x12c
    je .i_sub_r8_rcx
    cmp bx, 0x12d
    je .i_sub_r8_rdx
    cmp bx, 0x12e
    je .i_sub_r8_r8
    cmp bx, 0x12f
    je .i_sub_r8_r9
    cmp bx, 0x130
    je .i_sub_r8_r10
    cmp bx, 0x131
    je .i_sub_r8_r11
    cmp bx, 0x132
    je .i_sub_r8_rsp
    cmp bx, 0x133
    je .i_sub_r8_rbp
    cmp bx, 0x134
    je .i_sub_r9_rax
    cmp bx, 0x135
    je .i_sub_r9_rcx
    cmp bx, 0x136
    je .i_sub_r9_rdx
    cmp bx, 0x137
    je .i_sub_r9_r8
    cmp bx, 0x138
    je .i_sub_r9_r9
    cmp bx, 0x139
    je .i_sub_r9_r10
    cmp bx, 0x13a
    je .i_sub_r9_r11
    cmp bx, 0x13b
    je .i_sub_r9_rsp
    cmp bx, 0x13c
    je .i_sub_r9_rbp
    cmp bx, 0x13d
    je .i_sub_r10_rax
    cmp bx, 0x13e
    je .i_sub_r10_rcx
    cmp bx, 0x13f
    je .i_sub_r10_rdx
    cmp bx, 0x140
    je .i_sub_r10_r8
    cmp bx, 0x141
    je .i_sub_r10_r9
    cmp bx, 0x142
    je .i_sub_r10_r10
    cmp bx, 0x143
    je .i_sub_r10_r11
    cmp bx, 0x144
    je .i_sub_r10_rsp
    cmp bx, 0x145
    je .i_sub_r10_rbp
    cmp bx, 0x146
    je .i_sub_r11_rax
    cmp bx, 0x147
    je .i_sub_r11_rcx
    cmp bx, 0x148
    je .i_sub_r11_rdx
    cmp bx, 0x149
    je .i_sub_r11_r8
    cmp bx, 0x14a
    je .i_sub_r11_r9
    cmp bx, 0x14b
    je .i_sub_r11_r10
    cmp bx, 0x14c
    je .i_sub_r11_r11
    cmp bx, 0x14d
    je .i_sub_r11_rsp
    cmp bx, 0x14e
    je .i_sub_r11_rbp
    cmp bx, 0x14f
    je .i_sub_rsp_rax
    cmp bx, 0x150
    je .i_sub_rsp_rcx
    cmp bx, 0x151
    je .i_sub_rsp_rdx
    cmp bx, 0x152
    je .i_sub_rsp_r8
    cmp bx, 0x153
    je .i_sub_rsp_r9
    cmp bx, 0x154
    je .i_sub_rsp_r10
    cmp bx, 0x155
    je .i_sub_rsp_r11
    cmp bx, 0x156
    je .i_sub_rsp_rsp
    cmp bx, 0x157
    je .i_sub_rsp_rbp
    cmp bx, 0x158
    je .i_sub_rbp_rax
    cmp bx, 0x159
    je .i_sub_rbp_rcx
    cmp bx, 0x15a
    je .i_sub_rbp_rdx
    cmp bx, 0x15b
    je .i_sub_rbp_r8
    cmp bx, 0x15c
    je .i_sub_rbp_r9
    cmp bx, 0x15d
    je .i_sub_rbp_r10
    cmp bx, 0x15e
    je .i_sub_rbp_r11
    cmp bx, 0x15f
    je .i_sub_rbp_rsp
    cmp bx, 0x160
    je .i_sub_rbp_rbp
    cmp bx, 0x161
    je .i_imul_rax_rax
    cmp bx, 0x162
    je .i_imul_rax_rcx
    cmp bx, 0x163
    je .i_imul_rax_rdx
    cmp bx, 0x164
    je .i_imul_rax_r8
    cmp bx, 0x165
    je .i_imul_rax_r9
    cmp bx, 0x166
    je .i_imul_rax_r10
    cmp bx, 0x167
    je .i_imul_rax_r11
    cmp bx, 0x168
    je .i_imul_rax_rsp
    cmp bx, 0x169
    je .i_imul_rax_rbp
    cmp bx, 0x16a
    je .i_imul_rcx_rax
    cmp bx, 0x16b
    je .i_imul_rcx_rcx
    cmp bx, 0x16c
    je .i_imul_rcx_rdx
    cmp bx, 0x16d
    je .i_imul_rcx_r8
    cmp bx, 0x16e
    je .i_imul_rcx_r9
    cmp bx, 0x16f
    je .i_imul_rcx_r10
    cmp bx, 0x170
    je .i_imul_rcx_r11
    cmp bx, 0x171
    je .i_imul_rcx_rsp
    cmp bx, 0x172
    je .i_imul_rcx_rbp
    cmp bx, 0x173
    je .i_imul_rdx_rax
    cmp bx, 0x174
    je .i_imul_rdx_rcx
    cmp bx, 0x175
    je .i_imul_rdx_rdx
    cmp bx, 0x176
    je .i_imul_rdx_r8
    cmp bx, 0x177
    je .i_imul_rdx_r9
    cmp bx, 0x178
    je .i_imul_rdx_r10
    cmp bx, 0x179
    je .i_imul_rdx_r11
    cmp bx, 0x17a
    je .i_imul_rdx_rsp
    cmp bx, 0x17b
    je .i_imul_rdx_rbp
    cmp bx, 0x17c
    je .i_imul_r8_rax
    cmp bx, 0x17d
    je .i_imul_r8_rcx
    cmp bx, 0x17e
    je .i_imul_r8_rdx
    cmp bx, 0x17f
    je .i_imul_r8_r8
    cmp bx, 0x180
    je .i_imul_r8_r9
    cmp bx, 0x181
    je .i_imul_r8_r10
    cmp bx, 0x182
    je .i_imul_r8_r11
    cmp bx, 0x183
    je .i_imul_r8_rsp
    cmp bx, 0x184
    je .i_imul_r8_rbp
    cmp bx, 0x185
    je .i_imul_r9_rax
    cmp bx, 0x186
    je .i_imul_r9_rcx
    cmp bx, 0x187
    je .i_imul_r9_rdx
    cmp bx, 0x188
    je .i_imul_r9_r8
    cmp bx, 0x189
    je .i_imul_r9_r9
    cmp bx, 0x18a
    je .i_imul_r9_r10
    cmp bx, 0x18b
    je .i_imul_r9_r11
    cmp bx, 0x18c
    je .i_imul_r9_rsp
    cmp bx, 0x18d
    je .i_imul_r9_rbp
    cmp bx, 0x18e
    je .i_imul_r10_rax
    cmp bx, 0x18f
    je .i_imul_r10_rcx
    cmp bx, 0x190
    je .i_imul_r10_rdx
    cmp bx, 0x191
    je .i_imul_r10_r8
    cmp bx, 0x192
    je .i_imul_r10_r9
    cmp bx, 0x193
    je .i_imul_r10_r10
    cmp bx, 0x194
    je .i_imul_r10_r11
    cmp bx, 0x195
    je .i_imul_r10_rsp
    cmp bx, 0x196
    je .i_imul_r10_rbp
    cmp bx, 0x197
    je .i_imul_r11_rax
    cmp bx, 0x198
    je .i_imul_r11_rcx
    cmp bx, 0x199
    je .i_imul_r11_rdx
    cmp bx, 0x19a
    je .i_imul_r11_r8
    cmp bx, 0x19b
    je .i_imul_r11_r9
    cmp bx, 0x19c
    je .i_imul_r11_r10
    cmp bx, 0x19d
    je .i_imul_r11_r11
    cmp bx, 0x19e
    je .i_imul_r11_rsp
    cmp bx, 0x19f
    je .i_imul_r11_rbp
    cmp bx, 0x1a0
    je .i_imul_rsp_rax
    cmp bx, 0x1a1
    je .i_imul_rsp_rcx
    cmp bx, 0x1a2
    je .i_imul_rsp_rdx
    cmp bx, 0x1a3
    je .i_imul_rsp_r8
    cmp bx, 0x1a4
    je .i_imul_rsp_r9
    cmp bx, 0x1a5
    je .i_imul_rsp_r10
    cmp bx, 0x1a6
    je .i_imul_rsp_r11
    cmp bx, 0x1a7
    je .i_imul_rsp_rsp
    cmp bx, 0x1a8
    je .i_imul_rsp_rbp
    cmp bx, 0x1a9
    je .i_imul_rbp_rax
    cmp bx, 0x1aa
    je .i_imul_rbp_rcx
    cmp bx, 0x1ab
    je .i_imul_rbp_rdx
    cmp bx, 0x1ac
    je .i_imul_rbp_r8
    cmp bx, 0x1ad
    je .i_imul_rbp_r9
    cmp bx, 0x1ae
    je .i_imul_rbp_r10
    cmp bx, 0x1af
    je .i_imul_rbp_r11
    cmp bx, 0x1b0
    je .i_imul_rbp_rsp
    cmp bx, 0x1b1
    je .i_imul_rbp_rbp
    cmp bx, 0x1b2
    je .i_and_rax_rax
    cmp bx, 0x1b3
    je .i_and_rax_rcx
    cmp bx, 0x1b4
    je .i_and_rax_rdx
    cmp bx, 0x1b5
    je .i_and_rax_r8
    cmp bx, 0x1b6
    je .i_and_rax_r9
    cmp bx, 0x1b7
    je .i_and_rax_r10
    cmp bx, 0x1b8
    je .i_and_rax_r11
    cmp bx, 0x1b9
    je .i_and_rax_rsp
    cmp bx, 0x1ba
    je .i_and_rax_rbp
    cmp bx, 0x1bb
    je .i_and_rcx_rax
    cmp bx, 0x1bc
    je .i_and_rcx_rcx
    cmp bx, 0x1bd
    je .i_and_rcx_rdx
    cmp bx, 0x1be
    je .i_and_rcx_r8
    cmp bx, 0x1bf
    je .i_and_rcx_r9
    cmp bx, 0x1c0
    je .i_and_rcx_r10
    cmp bx, 0x1c1
    je .i_and_rcx_r11
    cmp bx, 0x1c2
    je .i_and_rcx_rsp
    cmp bx, 0x1c3
    je .i_and_rcx_rbp
    cmp bx, 0x1c4
    je .i_and_rdx_rax
    cmp bx, 0x1c5
    je .i_and_rdx_rcx
    cmp bx, 0x1c6
    je .i_and_rdx_rdx
    cmp bx, 0x1c7
    je .i_and_rdx_r8
    cmp bx, 0x1c8
    je .i_and_rdx_r9
    cmp bx, 0x1c9
    je .i_and_rdx_r10
    cmp bx, 0x1ca
    je .i_and_rdx_r11
    cmp bx, 0x1cb
    je .i_and_rdx_rsp
    cmp bx, 0x1cc
    je .i_and_rdx_rbp
    cmp bx, 0x1cd
    je .i_and_r8_rax
    cmp bx, 0x1ce
    je .i_and_r8_rcx
    cmp bx, 0x1cf
    je .i_and_r8_rdx
    cmp bx, 0x1d0
    je .i_and_r8_r8
    cmp bx, 0x1d1
    je .i_and_r8_r9
    cmp bx, 0x1d2
    je .i_and_r8_r10
    cmp bx, 0x1d3
    je .i_and_r8_r11
    cmp bx, 0x1d4
    je .i_and_r8_rsp
    cmp bx, 0x1d5
    je .i_and_r8_rbp
    cmp bx, 0x1d6
    je .i_and_r9_rax
    cmp bx, 0x1d7
    je .i_and_r9_rcx
    cmp bx, 0x1d8
    je .i_and_r9_rdx
    cmp bx, 0x1d9
    je .i_and_r9_r8
    cmp bx, 0x1da
    je .i_and_r9_r9
    cmp bx, 0x1db
    je .i_and_r9_r10
    cmp bx, 0x1dc
    je .i_and_r9_r11
    cmp bx, 0x1dd
    je .i_and_r9_rsp
    cmp bx, 0x1de
    je .i_and_r9_rbp
    cmp bx, 0x1df
    je .i_and_r10_rax
    cmp bx, 0x1e0
    je .i_and_r10_rcx
    cmp bx, 0x1e1
    je .i_and_r10_rdx
    cmp bx, 0x1e2
    je .i_and_r10_r8
    cmp bx, 0x1e3
    je .i_and_r10_r9
    cmp bx, 0x1e4
    je .i_and_r10_r10
    cmp bx, 0x1e5
    je .i_and_r10_r11
    cmp bx, 0x1e6
    je .i_and_r10_rsp
    cmp bx, 0x1e7
    je .i_and_r10_rbp
    cmp bx, 0x1e8
    je .i_and_r11_rax
    cmp bx, 0x1e9
    je .i_and_r11_rcx
    cmp bx, 0x1ea
    je .i_and_r11_rdx
    cmp bx, 0x1eb
    je .i_and_r11_r8
    cmp bx, 0x1ec
    je .i_and_r11_r9
    cmp bx, 0x1ed
    je .i_and_r11_r10
    cmp bx, 0x1ee
    je .i_and_r11_r11
    cmp bx, 0x1ef
    je .i_and_r11_rsp
    cmp bx, 0x1f0
    je .i_and_r11_rbp
    cmp bx, 0x1f1
    je .i_and_rsp_rax
    cmp bx, 0x1f2
    je .i_and_rsp_rcx
    cmp bx, 0x1f3
    je .i_and_rsp_rdx
    cmp bx, 0x1f4
    je .i_and_rsp_r8
    cmp bx, 0x1f5
    je .i_and_rsp_r9
    cmp bx, 0x1f6
    je .i_and_rsp_r10
    cmp bx, 0x1f7
    je .i_and_rsp_r11
    cmp bx, 0x1f8
    je .i_and_rsp_rsp
    cmp bx, 0x1f9
    je .i_and_rsp_rbp
    cmp bx, 0x1fa
    je .i_and_rbp_rax
    cmp bx, 0x1fb
    je .i_and_rbp_rcx
    cmp bx, 0x1fc
    je .i_and_rbp_rdx
    cmp bx, 0x1fd
    je .i_and_rbp_r8
    cmp bx, 0x1fe
    je .i_and_rbp_r9
    cmp bx, 0x1ff
    je .i_and_rbp_r10
    cmp bx, 0x200
    je .i_and_rbp_r11
    cmp bx, 0x201
    je .i_and_rbp_rsp
    cmp bx, 0x202
    je .i_and_rbp_rbp
    cmp bx, 0x203
    je .i_or_rax_rax
    cmp bx, 0x204
    je .i_or_rax_rcx
    cmp bx, 0x205
    je .i_or_rax_rdx
    cmp bx, 0x206
    je .i_or_rax_r8
    cmp bx, 0x207
    je .i_or_rax_r9
    cmp bx, 0x208
    je .i_or_rax_r10
    cmp bx, 0x209
    je .i_or_rax_r11
    cmp bx, 0x20a
    je .i_or_rax_rsp
    cmp bx, 0x20b
    je .i_or_rax_rbp
    cmp bx, 0x20c
    je .i_or_rcx_rax
    cmp bx, 0x20d
    je .i_or_rcx_rcx
    cmp bx, 0x20e
    je .i_or_rcx_rdx
    cmp bx, 0x20f
    je .i_or_rcx_r8
    cmp bx, 0x210
    je .i_or_rcx_r9
    cmp bx, 0x211
    je .i_or_rcx_r10
    cmp bx, 0x212
    je .i_or_rcx_r11
    cmp bx, 0x213
    je .i_or_rcx_rsp
    cmp bx, 0x214
    je .i_or_rcx_rbp
    cmp bx, 0x215
    je .i_or_rdx_rax
    cmp bx, 0x216
    je .i_or_rdx_rcx
    cmp bx, 0x217
    je .i_or_rdx_rdx
    cmp bx, 0x218
    je .i_or_rdx_r8
    cmp bx, 0x219
    je .i_or_rdx_r9
    cmp bx, 0x21a
    je .i_or_rdx_r10
    cmp bx, 0x21b
    je .i_or_rdx_r11
    cmp bx, 0x21c
    je .i_or_rdx_rsp
    cmp bx, 0x21d
    je .i_or_rdx_rbp
    cmp bx, 0x21e
    je .i_or_r8_rax
    cmp bx, 0x21f
    je .i_or_r8_rcx
    cmp bx, 0x220
    je .i_or_r8_rdx
    cmp bx, 0x221
    je .i_or_r8_r8
    cmp bx, 0x222
    je .i_or_r8_r9
    cmp bx, 0x223
    je .i_or_r8_r10
    cmp bx, 0x224
    je .i_or_r8_r11
    cmp bx, 0x225
    je .i_or_r8_rsp
    cmp bx, 0x226
    je .i_or_r8_rbp
    cmp bx, 0x227
    je .i_or_r9_rax
    cmp bx, 0x228
    je .i_or_r9_rcx
    cmp bx, 0x229
    je .i_or_r9_rdx
    cmp bx, 0x22a
    je .i_or_r9_r8
    cmp bx, 0x22b
    je .i_or_r9_r9
    cmp bx, 0x22c
    je .i_or_r9_r10
    cmp bx, 0x22d
    je .i_or_r9_r11
    cmp bx, 0x22e
    je .i_or_r9_rsp
    cmp bx, 0x22f
    je .i_or_r9_rbp
    cmp bx, 0x230
    je .i_or_r10_rax
    cmp bx, 0x231
    je .i_or_r10_rcx
    cmp bx, 0x232
    je .i_or_r10_rdx
    cmp bx, 0x233
    je .i_or_r10_r8
    cmp bx, 0x234
    je .i_or_r10_r9
    cmp bx, 0x235
    je .i_or_r10_r10
    cmp bx, 0x236
    je .i_or_r10_r11
    cmp bx, 0x237
    je .i_or_r10_rsp
    cmp bx, 0x238
    je .i_or_r10_rbp
    cmp bx, 0x239
    je .i_or_r11_rax
    cmp bx, 0x23a
    je .i_or_r11_rcx
    cmp bx, 0x23b
    je .i_or_r11_rdx
    cmp bx, 0x23c
    je .i_or_r11_r8
    cmp bx, 0x23d
    je .i_or_r11_r9
    cmp bx, 0x23e
    je .i_or_r11_r10
    cmp bx, 0x23f
    je .i_or_r11_r11
    cmp bx, 0x240
    je .i_or_r11_rsp
    cmp bx, 0x241
    je .i_or_r11_rbp
    cmp bx, 0x242
    je .i_or_rsp_rax
    cmp bx, 0x243
    je .i_or_rsp_rcx
    cmp bx, 0x244
    je .i_or_rsp_rdx
    cmp bx, 0x245
    je .i_or_rsp_r8
    cmp bx, 0x246
    je .i_or_rsp_r9
    cmp bx, 0x247
    je .i_or_rsp_r10
    cmp bx, 0x248
    je .i_or_rsp_r11
    cmp bx, 0x249
    je .i_or_rsp_rsp
    cmp bx, 0x24a
    je .i_or_rsp_rbp
    cmp bx, 0x24b
    je .i_or_rbp_rax
    cmp bx, 0x24c
    je .i_or_rbp_rcx
    cmp bx, 0x24d
    je .i_or_rbp_rdx
    cmp bx, 0x24e
    je .i_or_rbp_r8
    cmp bx, 0x24f
    je .i_or_rbp_r9
    cmp bx, 0x250
    je .i_or_rbp_r10
    cmp bx, 0x251
    je .i_or_rbp_r11
    cmp bx, 0x252
    je .i_or_rbp_rsp
    cmp bx, 0x253
    je .i_or_rbp_rbp
    cmp bx, 0x254
    je .i_xor_rax_rax
    cmp bx, 0x255
    je .i_xor_rax_rcx
    cmp bx, 0x256
    je .i_xor_rax_rdx
    cmp bx, 0x257
    je .i_xor_rax_r8
    cmp bx, 0x258
    je .i_xor_rax_r9
    cmp bx, 0x259
    je .i_xor_rax_r10
    cmp bx, 0x25a
    je .i_xor_rax_r11
    cmp bx, 0x25b
    je .i_xor_rax_rsp
    cmp bx, 0x25c
    je .i_xor_rax_rbp
    cmp bx, 0x25d
    je .i_xor_rcx_rax
    cmp bx, 0x25e
    je .i_xor_rcx_rcx
    cmp bx, 0x25f
    je .i_xor_rcx_rdx
    cmp bx, 0x260
    je .i_xor_rcx_r8
    cmp bx, 0x261
    je .i_xor_rcx_r9
    cmp bx, 0x262
    je .i_xor_rcx_r10
    cmp bx, 0x263
    je .i_xor_rcx_r11
    cmp bx, 0x264
    je .i_xor_rcx_rsp
    cmp bx, 0x265
    je .i_xor_rcx_rbp
    cmp bx, 0x266
    je .i_xor_rdx_rax
    cmp bx, 0x267
    je .i_xor_rdx_rcx
    cmp bx, 0x268
    je .i_xor_rdx_rdx
    cmp bx, 0x269
    je .i_xor_rdx_r8
    cmp bx, 0x26a
    je .i_xor_rdx_r9
    cmp bx, 0x26b
    je .i_xor_rdx_r10
    cmp bx, 0x26c
    je .i_xor_rdx_r11
    cmp bx, 0x26d
    je .i_xor_rdx_rsp
    cmp bx, 0x26e
    je .i_xor_rdx_rbp
    cmp bx, 0x26f
    je .i_xor_r8_rax
    cmp bx, 0x270
    je .i_xor_r8_rcx
    cmp bx, 0x271
    je .i_xor_r8_rdx
    cmp bx, 0x272
    je .i_xor_r8_r8
    cmp bx, 0x273
    je .i_xor_r8_r9
    cmp bx, 0x274
    je .i_xor_r8_r10
    cmp bx, 0x275
    je .i_xor_r8_r11
    cmp bx, 0x276
    je .i_xor_r8_rsp
    cmp bx, 0x277
    je .i_xor_r8_rbp
    cmp bx, 0x278
    je .i_xor_r9_rax
    cmp bx, 0x279
    je .i_xor_r9_rcx
    cmp bx, 0x27a
    je .i_xor_r9_rdx
    cmp bx, 0x27b
    je .i_xor_r9_r8
    cmp bx, 0x27c
    je .i_xor_r9_r9
    cmp bx, 0x27d
    je .i_xor_r9_r10
    cmp bx, 0x27e
    je .i_xor_r9_r11
    cmp bx, 0x27f
    je .i_xor_r9_rsp
    cmp bx, 0x280
    je .i_xor_r9_rbp
    cmp bx, 0x281
    je .i_xor_r10_rax
    cmp bx, 0x282
    je .i_xor_r10_rcx
    cmp bx, 0x283
    je .i_xor_r10_rdx
    cmp bx, 0x284
    je .i_xor_r10_r8
    cmp bx, 0x285
    je .i_xor_r10_r9
    cmp bx, 0x286
    je .i_xor_r10_r10
    cmp bx, 0x287
    je .i_xor_r10_r11
    cmp bx, 0x288
    je .i_xor_r10_rsp
    cmp bx, 0x289
    je .i_xor_r10_rbp
    cmp bx, 0x28a
    je .i_xor_r11_rax
    cmp bx, 0x28b
    je .i_xor_r11_rcx
    cmp bx, 0x28c
    je .i_xor_r11_rdx
    cmp bx, 0x28d
    je .i_xor_r11_r8
    cmp bx, 0x28e
    je .i_xor_r11_r9
    cmp bx, 0x28f
    je .i_xor_r11_r10
    cmp bx, 0x290
    je .i_xor_r11_r11
    cmp bx, 0x291
    je .i_xor_r11_rsp
    cmp bx, 0x292
    je .i_xor_r11_rbp
    cmp bx, 0x293
    je .i_xor_rsp_rax
    cmp bx, 0x294
    je .i_xor_rsp_rcx
    cmp bx, 0x295
    je .i_xor_rsp_rdx
    cmp bx, 0x296
    je .i_xor_rsp_r8
    cmp bx, 0x297
    je .i_xor_rsp_r9
    cmp bx, 0x298
    je .i_xor_rsp_r10
    cmp bx, 0x299
    je .i_xor_rsp_r11
    cmp bx, 0x29a
    je .i_xor_rsp_rsp
    cmp bx, 0x29b
    je .i_xor_rsp_rbp
    cmp bx, 0x29c
    je .i_xor_rbp_rax
    cmp bx, 0x29d
    je .i_xor_rbp_rcx
    cmp bx, 0x29e
    je .i_xor_rbp_rdx
    cmp bx, 0x29f
    je .i_xor_rbp_r8
    cmp bx, 0x2a0
    je .i_xor_rbp_r9
    cmp bx, 0x2a1
    je .i_xor_rbp_r10
    cmp bx, 0x2a2
    je .i_xor_rbp_r11
    cmp bx, 0x2a3
    je .i_xor_rbp_rsp
    cmp bx, 0x2a4
    je .i_xor_rbp_rbp
    cmp bx, 0x2a5
    je .i_cmp_rax_rax
    cmp bx, 0x2a6
    je .i_cmp_rax_rcx
    cmp bx, 0x2a7
    je .i_cmp_rax_rdx
    cmp bx, 0x2a8
    je .i_cmp_rax_r8
    cmp bx, 0x2a9
    je .i_cmp_rax_r9
    cmp bx, 0x2aa
    je .i_cmp_rax_r10
    cmp bx, 0x2ab
    je .i_cmp_rax_r11
    cmp bx, 0x2ac
    je .i_cmp_rax_rsp
    cmp bx, 0x2ad
    je .i_cmp_rax_rbp
    cmp bx, 0x2ae
    je .i_cmp_rcx_rax
    cmp bx, 0x2af
    je .i_cmp_rcx_rcx
    cmp bx, 0x2b0
    je .i_cmp_rcx_rdx
    cmp bx, 0x2b1
    je .i_cmp_rcx_r8
    cmp bx, 0x2b2
    je .i_cmp_rcx_r9
    cmp bx, 0x2b3
    je .i_cmp_rcx_r10
    cmp bx, 0x2b4
    je .i_cmp_rcx_r11
    cmp bx, 0x2b5
    je .i_cmp_rcx_rsp
    cmp bx, 0x2b6
    je .i_cmp_rcx_rbp
    cmp bx, 0x2b7
    je .i_cmp_rdx_rax
    cmp bx, 0x2b8
    je .i_cmp_rdx_rcx
    cmp bx, 0x2b9
    je .i_cmp_rdx_rdx
    cmp bx, 0x2ba
    je .i_cmp_rdx_r8
    cmp bx, 0x2bb
    je .i_cmp_rdx_r9
    cmp bx, 0x2bc
    je .i_cmp_rdx_r10
    cmp bx, 0x2bd
    je .i_cmp_rdx_r11
    cmp bx, 0x2be
    je .i_cmp_rdx_rsp
    cmp bx, 0x2bf
    je .i_cmp_rdx_rbp
    cmp bx, 0x2c0
    je .i_cmp_r8_rax
    cmp bx, 0x2c1
    je .i_cmp_r8_rcx
    cmp bx, 0x2c2
    je .i_cmp_r8_rdx
    cmp bx, 0x2c3
    je .i_cmp_r8_r8
    cmp bx, 0x2c4
    je .i_cmp_r8_r9
    cmp bx, 0x2c5
    je .i_cmp_r8_r10
    cmp bx, 0x2c6
    je .i_cmp_r8_r11
    cmp bx, 0x2c7
    je .i_cmp_r8_rsp
    cmp bx, 0x2c8
    je .i_cmp_r8_rbp
    cmp bx, 0x2c9
    je .i_cmp_r9_rax
    cmp bx, 0x2ca
    je .i_cmp_r9_rcx
    cmp bx, 0x2cb
    je .i_cmp_r9_rdx
    cmp bx, 0x2cc
    je .i_cmp_r9_r8
    cmp bx, 0x2cd
    je .i_cmp_r9_r9
    cmp bx, 0x2ce
    je .i_cmp_r9_r10
    cmp bx, 0x2cf
    je .i_cmp_r9_r11
    cmp bx, 0x2d0
    je .i_cmp_r9_rsp
    cmp bx, 0x2d1
    je .i_cmp_r9_rbp
    cmp bx, 0x2d2
    je .i_cmp_r10_rax
    cmp bx, 0x2d3
    je .i_cmp_r10_rcx
    cmp bx, 0x2d4
    je .i_cmp_r10_rdx
    cmp bx, 0x2d5
    je .i_cmp_r10_r8
    cmp bx, 0x2d6
    je .i_cmp_r10_r9
    cmp bx, 0x2d7
    je .i_cmp_r10_r10
    cmp bx, 0x2d8
    je .i_cmp_r10_r11
    cmp bx, 0x2d9
    je .i_cmp_r10_rsp
    cmp bx, 0x2da
    je .i_cmp_r10_rbp
    cmp bx, 0x2db
    je .i_cmp_r11_rax
    cmp bx, 0x2dc
    je .i_cmp_r11_rcx
    cmp bx, 0x2dd
    je .i_cmp_r11_rdx
    cmp bx, 0x2de
    je .i_cmp_r11_r8
    cmp bx, 0x2df
    je .i_cmp_r11_r9
    cmp bx, 0x2e0
    je .i_cmp_r11_r10
    cmp bx, 0x2e1
    je .i_cmp_r11_r11
    cmp bx, 0x2e2
    je .i_cmp_r11_rsp
    cmp bx, 0x2e3
    je .i_cmp_r11_rbp
    cmp bx, 0x2e4
    je .i_cmp_rsp_rax
    cmp bx, 0x2e5
    je .i_cmp_rsp_rcx
    cmp bx, 0x2e6
    je .i_cmp_rsp_rdx
    cmp bx, 0x2e7
    je .i_cmp_rsp_r8
    cmp bx, 0x2e8
    je .i_cmp_rsp_r9
    cmp bx, 0x2e9
    je .i_cmp_rsp_r10
    cmp bx, 0x2ea
    je .i_cmp_rsp_r11
    cmp bx, 0x2eb
    je .i_cmp_rsp_rsp
    cmp bx, 0x2ec
    je .i_cmp_rsp_rbp
    cmp bx, 0x2ed
    je .i_cmp_rbp_rax
    cmp bx, 0x2ee
    je .i_cmp_rbp_rcx
    cmp bx, 0x2ef
    je .i_cmp_rbp_rdx
    cmp bx, 0x2f0
    je .i_cmp_rbp_r8
    cmp bx, 0x2f1
    je .i_cmp_rbp_r9
    cmp bx, 0x2f2
    je .i_cmp_rbp_r10
    cmp bx, 0x2f3
    je .i_cmp_rbp_r11
    cmp bx, 0x2f4
    je .i_cmp_rbp_rsp
    cmp bx, 0x2f5
    je .i_cmp_rbp_rbp
    cmp bx, 0x2f6
    je .i_dref_rax_rax
    cmp bx, 0x2f7
    je .i_dref_rax_rcx
    cmp bx, 0x2f8
    je .i_dref_rax_rdx
    cmp bx, 0x2f9
    je .i_dref_rax_r8
    cmp bx, 0x2fa
    je .i_dref_rax_r9
    cmp bx, 0x2fb
    je .i_dref_rax_r10
    cmp bx, 0x2fc
    je .i_dref_rax_r11
    cmp bx, 0x2fd
    je .i_dref_rax_rsp
    cmp bx, 0x2fe
    je .i_dref_rax_rbp
    cmp bx, 0x2ff
    je .i_dref_rcx_rax
    cmp bx, 0x300
    je .i_dref_rcx_rcx
    cmp bx, 0x301
    je .i_dref_rcx_rdx
    cmp bx, 0x302
    je .i_dref_rcx_r8
    cmp bx, 0x303
    je .i_dref_rcx_r9
    cmp bx, 0x304
    je .i_dref_rcx_r10
    cmp bx, 0x305
    je .i_dref_rcx_r11
    cmp bx, 0x306
    je .i_dref_rcx_rsp
    cmp bx, 0x307
    je .i_dref_rcx_rbp
    cmp bx, 0x308
    je .i_dref_rdx_rax
    cmp bx, 0x309
    je .i_dref_rdx_rcx
    cmp bx, 0x30a
    je .i_dref_rdx_rdx
    cmp bx, 0x30b
    je .i_dref_rdx_r8
    cmp bx, 0x30c
    je .i_dref_rdx_r9
    cmp bx, 0x30d
    je .i_dref_rdx_r10
    cmp bx, 0x30e
    je .i_dref_rdx_r11
    cmp bx, 0x30f
    je .i_dref_rdx_rsp
    cmp bx, 0x310
    je .i_dref_rdx_rbp
    cmp bx, 0x311
    je .i_dref_r8_rax
    cmp bx, 0x312
    je .i_dref_r8_rcx
    cmp bx, 0x313
    je .i_dref_r8_rdx
    cmp bx, 0x314
    je .i_dref_r8_r8
    cmp bx, 0x315
    je .i_dref_r8_r9
    cmp bx, 0x316
    je .i_dref_r8_r10
    cmp bx, 0x317
    je .i_dref_r8_r11
    cmp bx, 0x318
    je .i_dref_r8_rsp
    cmp bx, 0x319
    je .i_dref_r8_rbp
    cmp bx, 0x31a
    je .i_dref_r9_rax
    cmp bx, 0x31b
    je .i_dref_r9_rcx
    cmp bx, 0x31c
    je .i_dref_r9_rdx
    cmp bx, 0x31d
    je .i_dref_r9_r8
    cmp bx, 0x31e
    je .i_dref_r9_r9
    cmp bx, 0x31f
    je .i_dref_r9_r10
    cmp bx, 0x320
    je .i_dref_r9_r11
    cmp bx, 0x321
    je .i_dref_r9_rsp
    cmp bx, 0x322
    je .i_dref_r9_rbp
    cmp bx, 0x323
    je .i_dref_r10_rax
    cmp bx, 0x324
    je .i_dref_r10_rcx
    cmp bx, 0x325
    je .i_dref_r10_rdx
    cmp bx, 0x326
    je .i_dref_r10_r8
    cmp bx, 0x327
    je .i_dref_r10_r9
    cmp bx, 0x328
    je .i_dref_r10_r10
    cmp bx, 0x329
    je .i_dref_r10_r11
    cmp bx, 0x32a
    je .i_dref_r10_rsp
    cmp bx, 0x32b
    je .i_dref_r10_rbp
    cmp bx, 0x32c
    je .i_dref_r11_rax
    cmp bx, 0x32d
    je .i_dref_r11_rcx
    cmp bx, 0x32e
    je .i_dref_r11_rdx
    cmp bx, 0x32f
    je .i_dref_r11_r8
    cmp bx, 0x330
    je .i_dref_r11_r9
    cmp bx, 0x331
    je .i_dref_r11_r10
    cmp bx, 0x332
    je .i_dref_r11_r11
    cmp bx, 0x333
    je .i_dref_r11_rsp
    cmp bx, 0x334
    je .i_dref_r11_rbp
    cmp bx, 0x335
    je .i_dref_rsp_rax
    cmp bx, 0x336
    je .i_dref_rsp_rcx
    cmp bx, 0x337
    je .i_dref_rsp_rdx
    cmp bx, 0x338
    je .i_dref_rsp_r8
    cmp bx, 0x339
    je .i_dref_rsp_r9
    cmp bx, 0x33a
    je .i_dref_rsp_r10
    cmp bx, 0x33b
    je .i_dref_rsp_r11
    cmp bx, 0x33c
    je .i_dref_rsp_rsp
    cmp bx, 0x33d
    je .i_dref_rsp_rbp
    cmp bx, 0x33e
    je .i_dref_rbp_rax
    cmp bx, 0x33f
    je .i_dref_rbp_rcx
    cmp bx, 0x340
    je .i_dref_rbp_rdx
    cmp bx, 0x341
    je .i_dref_rbp_r8
    cmp bx, 0x342
    je .i_dref_rbp_r9
    cmp bx, 0x343
    je .i_dref_rbp_r10
    cmp bx, 0x344
    je .i_dref_rbp_r11
    cmp bx, 0x345
    je .i_dref_rbp_rsp
    cmp bx, 0x346
    je .i_dref_rbp_rbp
    cmp bx, 0x347
    je .i_jmp
    cmp bx, 0x348
    je .i_je
    cmp bx, 0x349
    je .i_jz
    cmp bx, 0x34a
    je .i_jne
    cmp bx, 0x34b
    je .i_jl
    cmp bx, 0x34c
    je .i_jg
    cmp bx, 0x34d
    je .i_jle
    cmp bx, 0x34e
    je .i_jge
    cmp bx, 0x34f
    je .i_call
    cmp bx, 0x350
    je .i_extern_call
    cmp bx, 0x351
    je .i_ret
    cmp bx, 0x352
    je .i_leave
    cmp bx, 0x353
    je .i_enter


    mov cx, bx
    mov rdx, rsi
    sub rdx, rsi
    call handle_invalid_bvm_oper
    mov rax, 1
    jmp ._return


    .i_exit:
    jmp ._return
    jmp ._loop

    .i_nop:
    jmp ._loop

    .i_push_rax:
    push rax
    jmp ._loop

    .i_push_rcx:
    push rcx
    jmp ._loop

    .i_push_rdx:
    push rdx
    jmp ._loop

    .i_push_r8:
    push r8
    jmp ._loop

    .i_push_r9:
    push r9
    jmp ._loop

    .i_push_r10:
    push r10
    jmp ._loop

    .i_push_r11:
    push r11
    jmp ._loop

    .i_push_rsp:
    push rsp
    jmp ._loop

    .i_push_rbp:
    push rbp
    jmp ._loop

    .i_pop_rax:
    pop rax
    jmp ._loop

    .i_pop_rcx:
    pop rcx
    jmp ._loop

    .i_pop_rdx:
    pop rdx
    jmp ._loop

    .i_pop_r8:
    pop r8
    jmp ._loop

    .i_pop_r9:
    pop r9
    jmp ._loop

    .i_pop_r10:
    pop r10
    jmp ._loop

    .i_pop_r11:
    pop r11
    jmp ._loop

    .i_pop_rsp:
    pop rsp
    jmp ._loop

    .i_pop_rbp:
    pop rbp
    jmp ._loop

    .i_dref_rax:
    mov rax, [rax]
    jmp ._loop

    .i_dref_rcx:
    mov rcx, [rcx]
    jmp ._loop

    .i_dref_rdx:
    mov rdx, [rdx]
    jmp ._loop

    .i_dref_r8:
    mov r8, [r8]
    jmp ._loop

    .i_dref_r9:
    mov r9, [r9]
    jmp ._loop

    .i_dref_r10:
    mov r10, [r10]
    jmp ._loop

    .i_dref_r11:
    mov r11, [r11]
    jmp ._loop

    .i_dref_rsp:
    mov rsp, [rsp]
    jmp ._loop

    .i_dref_rbp:
    mov rbp, [rbp]
    jmp ._loop

    .i_mov_rax_t:
    mov rax, [rsi]
    add rsi, 8
    jmp ._loop

    .i_mov_rcx_t:
    mov rcx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_mov_rdx_t:
    mov rdx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_mov_r8_t:
    mov r8, [rsi]
    add rsi, 8
    jmp ._loop

    .i_mov_r9_t:
    mov r9, [rsi]
    add rsi, 8
    jmp ._loop

    .i_mov_r10_t:
    mov r10, [rsi]
    add rsi, 8
    jmp ._loop

    .i_mov_r11_t:
    mov r11, [rsi]
    add rsi, 8
    jmp ._loop

    .i_mov_rsp_t:
    mov rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_mov_rbp_t:
    mov rbp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_add_rax_t:
    add rax, [rsi]
    add rsi, 8
    jmp ._loop

    .i_add_rcx_t:
    add rcx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_add_rdx_t:
    add rdx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_add_r8_t:
    add r8, [rsi]
    add rsi, 8
    jmp ._loop

    .i_add_r9_t:
    add r9, [rsi]
    add rsi, 8
    jmp ._loop

    .i_add_r10_t:
    add r10, [rsi]
    add rsi, 8
    jmp ._loop

    .i_add_r11_t:
    add r11, [rsi]
    add rsi, 8
    jmp ._loop

    .i_add_rsp_t:
    add rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_add_rbp_t:
    add rbp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_rax_t:
    sub rax, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_rcx_t:
    sub rcx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_rdx_t:
    sub rdx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_r8_t:
    sub r8, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_r9_t:
    sub r9, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_r10_t:
    sub r10, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_r11_t:
    sub r11, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_rsp_t:
    sub rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_rbp_t:
    sub rbp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rax_t:
    imul rax, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rcx_t:
    imul rcx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rdx_t:
    imul rdx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_r8_t:
    imul r8, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_r9_t:
    imul r9, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_r10_t:
    imul r10, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_r11_t:
    imul r11, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rsp_t:
    imul rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rbp_t:
    imul rbp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_and_rax_t:
    and rax, [rsi]
    add rsi, 8
    jmp ._loop

    .i_and_rcx_t:
    and rcx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_and_rdx_t:
    and rdx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_and_r8_t:
    and r8, [rsi]
    add rsi, 8
    jmp ._loop

    .i_and_r9_t:
    and r9, [rsi]
    add rsi, 8
    jmp ._loop

    .i_and_r10_t:
    and r10, [rsi]
    add rsi, 8
    jmp ._loop

    .i_and_r11_t:
    and r11, [rsi]
    add rsi, 8
    jmp ._loop

    .i_and_rsp_t:
    and rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_and_rbp_t:
    and rbp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_or_rax_t:
    or rax, [rsi]
    add rsi, 8
    jmp ._loop

    .i_or_rcx_t:
    or rcx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_or_rdx_t:
    or rdx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_or_r8_t:
    or r8, [rsi]
    add rsi, 8
    jmp ._loop

    .i_or_r9_t:
    or r9, [rsi]
    add rsi, 8
    jmp ._loop

    .i_or_r10_t:
    or r10, [rsi]
    add rsi, 8
    jmp ._loop

    .i_or_r11_t:
    or r11, [rsi]
    add rsi, 8
    jmp ._loop

    .i_or_rsp_t:
    or rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_or_rbp_t:
    or rbp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_xor_rax_t:
    xor rax, [rsi]
    add rsi, 8
    jmp ._loop

    .i_xor_rcx_t:
    xor rcx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_xor_rdx_t:
    xor rdx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_xor_r8_t:
    xor r8, [rsi]
    add rsi, 8
    jmp ._loop

    .i_xor_r9_t:
    xor r9, [rsi]
    add rsi, 8
    jmp ._loop

    .i_xor_r10_t:
    xor r10, [rsi]
    add rsi, 8
    jmp ._loop

    .i_xor_r11_t:
    xor r11, [rsi]
    add rsi, 8
    jmp ._loop

    .i_xor_rsp_t:
    xor rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_xor_rbp_t:
    xor rbp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_ldd_rax_t:
    mov rax, [rdi+16]
    add rax, [rsi]
    add rsi, 8
    jmp ._loop

    .i_ldd_rcx_t:
    mov rcx, [rdi+16]
    add rcx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_ldd_rdx_t:
    mov rdx, [rdi+16]
    add rdx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_ldd_r8_t:
    mov r8, [rdi+16]
    add r8, [rsi]
    add rsi, 8
    jmp ._loop

    .i_ldd_r9_t:
    mov r9, [rdi+16]
    add r9, [rsi]
    add rsi, 8
    jmp ._loop

    .i_ldd_r10_t:
    mov r10, [rdi+16]
    add r10, [rsi]
    add rsi, 8
    jmp ._loop

    .i_ldd_r11_t:
    mov r11, [rdi+16]
    add r11, [rsi]
    add rsi, 8
    jmp ._loop

    .i_ldd_rsp_t:
    mov rsp, [rdi+16]
    add rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_ldd_rbp_t:
    mov rbp, [rdi+16]
    add rbp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_cmp_rax_t:
    mov rbx, rax
    sub rbx, [rsi]
    push rbx
    add rsi, 8
    jmp ._loop

    .i_cmp_rcx_t:
    mov rbx, rcx
    sub rbx, [rsi]
    push rbx
    add rsi, 8
    jmp ._loop

    .i_cmp_rdx_t:
    mov rbx, rdx
    sub rbx, [rsi]
    push rbx
    add rsi, 8
    jmp ._loop

    .i_cmp_r8_t:
    mov rbx, r8
    sub rbx, [rsi]
    push rbx
    add rsi, 8
    jmp ._loop

    .i_cmp_r9_t:
    mov rbx, r9
    sub rbx, [rsi]
    push rbx
    add rsi, 8
    jmp ._loop

    .i_cmp_r10_t:
    mov rbx, r10
    sub rbx, [rsi]
    push rbx
    add rsi, 8
    jmp ._loop

    .i_cmp_r11_t:
    mov rbx, r11
    sub rbx, [rsi]
    push rbx
    add rsi, 8
    jmp ._loop

    .i_cmp_rsp_t:
    mov rbx, rsp
    sub rbx, [rsi]
    push rbx
    add rsi, 8
    jmp ._loop

    .i_cmp_rbp_t:
    mov rbx, rbp
    sub rbx, [rsi]
    push rbx
    add rsi, 8
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

    .i_mov_r11_rsp:
    mov r11, rsp
    jmp ._loop

    .i_mov_r11_rbp:
    mov r11, rbp
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

    .i_mov_rbp_rsp:
    mov rbp, rsp
    jmp ._loop

    .i_mov_rbp_rbp:
    mov rbp, rbp
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

    .i_add_r11_rsp:
    add r11, rsp
    jmp ._loop

    .i_add_r11_rbp:
    add r11, rbp
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

    .i_add_rbp_rsp:
    add rbp, rsp
    jmp ._loop

    .i_add_rbp_rbp:
    add rbp, rbp
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

    .i_sub_r11_rsp:
    sub r11, rsp
    jmp ._loop

    .i_sub_r11_rbp:
    sub r11, rbp
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

    .i_sub_rbp_rsp:
    sub rbp, rsp
    jmp ._loop

    .i_sub_rbp_rbp:
    sub rbp, rbp
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

    .i_imul_r11_rsp:
    imul r11, rsp
    jmp ._loop

    .i_imul_r11_rbp:
    imul r11, rbp
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

    .i_imul_rbp_rsp:
    imul rbp, rsp
    jmp ._loop

    .i_imul_rbp_rbp:
    imul rbp, rbp
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

    .i_and_r11_rsp:
    and r11, rsp
    jmp ._loop

    .i_and_r11_rbp:
    and r11, rbp
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

    .i_and_rbp_rsp:
    and rbp, rsp
    jmp ._loop

    .i_and_rbp_rbp:
    and rbp, rbp
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

    .i_or_r11_rsp:
    or r11, rsp
    jmp ._loop

    .i_or_r11_rbp:
    or r11, rbp
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

    .i_or_rbp_rsp:
    or rbp, rsp
    jmp ._loop

    .i_or_rbp_rbp:
    or rbp, rbp
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

    .i_xor_r11_rsp:
    xor r11, rsp
    jmp ._loop

    .i_xor_r11_rbp:
    xor r11, rbp
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

    .i_xor_rbp_rsp:
    xor rbp, rsp
    jmp ._loop

    .i_xor_rbp_rbp:
    xor rbp, rbp
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
    jmp ._loop

    .i_dref_rax_rcx:
    mov rax, [rcx]
    jmp ._loop

    .i_dref_rax_rdx:
    mov rax, [rdx]
    jmp ._loop

    .i_dref_rax_r8:
    mov rax, [r8]
    jmp ._loop

    .i_dref_rax_r9:
    mov rax, [r9]
    jmp ._loop

    .i_dref_rax_r10:
    mov rax, [r10]
    jmp ._loop

    .i_dref_rax_r11:
    mov rax, [r11]
    jmp ._loop

    .i_dref_rax_rsp:
    mov rax, [rsp]
    jmp ._loop

    .i_dref_rax_rbp:
    mov rax, [rbp]
    jmp ._loop

    .i_dref_rcx_rax:
    mov rcx, [rax]
    jmp ._loop

    .i_dref_rcx_rcx:
    mov rcx, [rcx]
    jmp ._loop

    .i_dref_rcx_rdx:
    mov rcx, [rdx]
    jmp ._loop

    .i_dref_rcx_r8:
    mov rcx, [r8]
    jmp ._loop

    .i_dref_rcx_r9:
    mov rcx, [r9]
    jmp ._loop

    .i_dref_rcx_r10:
    mov rcx, [r10]
    jmp ._loop

    .i_dref_rcx_r11:
    mov rcx, [r11]
    jmp ._loop

    .i_dref_rcx_rsp:
    mov rcx, [rsp]
    jmp ._loop

    .i_dref_rcx_rbp:
    mov rcx, [rbp]
    jmp ._loop

    .i_dref_rdx_rax:
    mov rdx, [rax]
    jmp ._loop

    .i_dref_rdx_rcx:
    mov rdx, [rcx]
    jmp ._loop

    .i_dref_rdx_rdx:
    mov rdx, [rdx]
    jmp ._loop

    .i_dref_rdx_r8:
    mov rdx, [r8]
    jmp ._loop

    .i_dref_rdx_r9:
    mov rdx, [r9]
    jmp ._loop

    .i_dref_rdx_r10:
    mov rdx, [r10]
    jmp ._loop

    .i_dref_rdx_r11:
    mov rdx, [r11]
    jmp ._loop

    .i_dref_rdx_rsp:
    mov rdx, [rsp]
    jmp ._loop

    .i_dref_rdx_rbp:
    mov rdx, [rbp]
    jmp ._loop

    .i_dref_r8_rax:
    mov r8, [rax]
    jmp ._loop

    .i_dref_r8_rcx:
    mov r8, [rcx]
    jmp ._loop

    .i_dref_r8_rdx:
    mov r8, [rdx]
    jmp ._loop

    .i_dref_r8_r8:
    mov r8, [r8]
    jmp ._loop

    .i_dref_r8_r9:
    mov r8, [r9]
    jmp ._loop

    .i_dref_r8_r10:
    mov r8, [r10]
    jmp ._loop

    .i_dref_r8_r11:
    mov r8, [r11]
    jmp ._loop

    .i_dref_r8_rsp:
    mov r8, [rsp]
    jmp ._loop

    .i_dref_r8_rbp:
    mov r8, [rbp]
    jmp ._loop

    .i_dref_r9_rax:
    mov r9, [rax]
    jmp ._loop

    .i_dref_r9_rcx:
    mov r9, [rcx]
    jmp ._loop

    .i_dref_r9_rdx:
    mov r9, [rdx]
    jmp ._loop

    .i_dref_r9_r8:
    mov r9, [r8]
    jmp ._loop

    .i_dref_r9_r9:
    mov r9, [r9]
    jmp ._loop

    .i_dref_r9_r10:
    mov r9, [r10]
    jmp ._loop

    .i_dref_r9_r11:
    mov r9, [r11]
    jmp ._loop

    .i_dref_r9_rsp:
    mov r9, [rsp]
    jmp ._loop

    .i_dref_r9_rbp:
    mov r9, [rbp]
    jmp ._loop

    .i_dref_r10_rax:
    mov r10, [rax]
    jmp ._loop

    .i_dref_r10_rcx:
    mov r10, [rcx]
    jmp ._loop

    .i_dref_r10_rdx:
    mov r10, [rdx]
    jmp ._loop

    .i_dref_r10_r8:
    mov r10, [r8]
    jmp ._loop

    .i_dref_r10_r9:
    mov r10, [r9]
    jmp ._loop

    .i_dref_r10_r10:
    mov r10, [r10]
    jmp ._loop

    .i_dref_r10_r11:
    mov r10, [r11]
    jmp ._loop

    .i_dref_r10_rsp:
    mov r10, [rsp]
    jmp ._loop

    .i_dref_r10_rbp:
    mov r10, [rbp]
    jmp ._loop

    .i_dref_r11_rax:
    mov r11, [rax]
    jmp ._loop

    .i_dref_r11_rcx:
    mov r11, [rcx]
    jmp ._loop

    .i_dref_r11_rdx:
    mov r11, [rdx]
    jmp ._loop

    .i_dref_r11_r8:
    mov r11, [r8]
    jmp ._loop

    .i_dref_r11_r9:
    mov r11, [r9]
    jmp ._loop

    .i_dref_r11_r10:
    mov r11, [r10]
    jmp ._loop

    .i_dref_r11_r11:
    mov r11, [r11]
    jmp ._loop

    .i_dref_r11_rsp:
    mov r11, [rsp]
    jmp ._loop

    .i_dref_r11_rbp:
    mov r11, [rbp]
    jmp ._loop

    .i_dref_rsp_rax:
    mov rsp, [rax]
    jmp ._loop

    .i_dref_rsp_rcx:
    mov rsp, [rcx]
    jmp ._loop

    .i_dref_rsp_rdx:
    mov rsp, [rdx]
    jmp ._loop

    .i_dref_rsp_r8:
    mov rsp, [r8]
    jmp ._loop

    .i_dref_rsp_r9:
    mov rsp, [r9]
    jmp ._loop

    .i_dref_rsp_r10:
    mov rsp, [r10]
    jmp ._loop

    .i_dref_rsp_r11:
    mov rsp, [r11]
    jmp ._loop

    .i_dref_rsp_rsp:
    mov rsp, [rsp]
    jmp ._loop

    .i_dref_rsp_rbp:
    mov rsp, [rbp]
    jmp ._loop

    .i_dref_rbp_rax:
    mov rbp, [rax]
    jmp ._loop

    .i_dref_rbp_rcx:
    mov rbp, [rcx]
    jmp ._loop

    .i_dref_rbp_rdx:
    mov rbp, [rdx]
    jmp ._loop

    .i_dref_rbp_r8:
    mov rbp, [r8]
    jmp ._loop

    .i_dref_rbp_r9:
    mov rbp, [r9]
    jmp ._loop

    .i_dref_rbp_r10:
    mov rbp, [r10]
    jmp ._loop

    .i_dref_rbp_r11:
    mov rbp, [r11]
    jmp ._loop

    .i_dref_rbp_rsp:
    mov rbp, [rsp]
    jmp ._loop

    .i_dref_rbp_rbp:
    mov rbp, [rbp]
    jmp ._loop

    .i_jmp:
    add rsi, 8
    mov rsi, [rsi-8]
    add rsi, [rdi+8]
    jmp ._loop

    .i_je:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jne ._loop
    mov rsi, [rsi-8]
    add rsi, [rdi+8]
    jmp ._loop

    .i_jz:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jnz ._loop
    mov rsi, [rsi-8]
    add rsi, [rdi+8]
    jmp ._loop

    .i_jne:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    je ._loop
    mov rsi, [rsi-8]
    add rsi, [rdi+8]
    jmp ._loop

    .i_jl:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jge ._loop
    mov rsi, [rsi-8]
    add rsi, [rdi+8]
    jmp ._loop

    .i_jg:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jle ._loop
    mov rsi, [rsi-8]
    add rsi, [rdi+8]
    jmp ._loop

    .i_jle:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jg ._loop
    mov rsi, [rsi-8]
    add rsi, [rdi+8]
    jmp ._loop

    .i_jge:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jl ._loop
    mov rsi, [rsi-8]
    add rsi, [rdi+8]
    jmp ._loop

    .i_call:
    add rsi, 8
    push rsi
    mov rsi, [rsi-8]
    add rsi, [rdi+8]
    jmp ._loop

    .i_extern_call:
    add rsi, 8
    push rsi
    push rdi
    mov rbx, [rdi+24]
    add rbx, [rsi-8]
    call [rbx]
    pop rdi
    pop rsi
    jmp ._loop

    .i_ret:
    pop rsi
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
    pop rbx
    ret
