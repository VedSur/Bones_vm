
global run
extern exec_cmd
extern invalid_inst

section .text
run:
    push rbp
    mov rbp, rsp
    
    mov rdi, rcx
    mov rsi, rdi

    mov rbx, 0
    
    ._loop:
    mov bx, word [rsi]
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
    je .i_push_rsp
    cmp bx, 0x8
    je .i_push_rbp
    cmp bx, 0x9
    je .i_pop_rax
    cmp bx, 0xa
    je .i_pop_rcx
    cmp bx, 0xb
    je .i_pop_rdx
    cmp bx, 0xc
    je .i_pop_r8
    cmp bx, 0xd
    je .i_pop_r9
    cmp bx, 0xe
    je .i_pop_rsp
    cmp bx, 0xf
    je .i_pop_rbp
    cmp bx, 0x10
    je .i_dref_rax
    cmp bx, 0x11
    je .i_dref_rcx
    cmp bx, 0x12
    je .i_dref_rdx
    cmp bx, 0x13
    je .i_dref_r8
    cmp bx, 0x14
    je .i_dref_r9
    cmp bx, 0x15
    je .i_dref_rsp
    cmp bx, 0x16
    je .i_dref_rbp
    cmp bx, 0x17
    je .i_mov_rax_t
    cmp bx, 0x18
    je .i_mov_rcx_t
    cmp bx, 0x19
    je .i_mov_rdx_t
    cmp bx, 0x1a
    je .i_mov_r8_t
    cmp bx, 0x1b
    je .i_mov_r9_t
    cmp bx, 0x1c
    je .i_mov_rsp_t
    cmp bx, 0x1d
    je .i_mov_rbp_t
    cmp bx, 0x1e
    je .i_add_rax_t
    cmp bx, 0x1f
    je .i_add_rcx_t
    cmp bx, 0x20
    je .i_add_rdx_t
    cmp bx, 0x21
    je .i_add_r8_t
    cmp bx, 0x22
    je .i_add_r9_t
    cmp bx, 0x23
    je .i_add_rsp_t
    cmp bx, 0x24
    je .i_add_rbp_t
    cmp bx, 0x25
    je .i_sub_rax_t
    cmp bx, 0x26
    je .i_sub_rcx_t
    cmp bx, 0x27
    je .i_sub_rdx_t
    cmp bx, 0x28
    je .i_sub_r8_t
    cmp bx, 0x29
    je .i_sub_r9_t
    cmp bx, 0x2a
    je .i_sub_rsp_t
    cmp bx, 0x2b
    je .i_sub_rbp_t
    cmp bx, 0x2c
    je .i_imul_rax_t
    cmp bx, 0x2d
    je .i_imul_rcx_t
    cmp bx, 0x2e
    je .i_imul_rdx_t
    cmp bx, 0x2f
    je .i_imul_r8_t
    cmp bx, 0x30
    je .i_imul_r9_t
    cmp bx, 0x31
    je .i_imul_rsp_t
    cmp bx, 0x32
    je .i_imul_rbp_t
    cmp bx, 0x33
    je .i_cmp_rax_t
    cmp bx, 0x34
    je .i_cmp_rcx_t
    cmp bx, 0x35
    je .i_cmp_rdx_t
    cmp bx, 0x36
    je .i_cmp_r8_t
    cmp bx, 0x37
    je .i_cmp_r9_t
    cmp bx, 0x38
    je .i_cmp_rsp_t
    cmp bx, 0x39
    je .i_cmp_rbp_t
    cmp bx, 0x3a
    je .i_mov_rax_rax
    cmp bx, 0x3b
    je .i_mov_rax_rcx
    cmp bx, 0x3c
    je .i_mov_rax_rdx
    cmp bx, 0x3d
    je .i_mov_rax_r8
    cmp bx, 0x3e
    je .i_mov_rax_r9
    cmp bx, 0x3f
    je .i_mov_rax_rsp
    cmp bx, 0x40
    je .i_mov_rax_rbp
    cmp bx, 0x41
    je .i_mov_rcx_rax
    cmp bx, 0x42
    je .i_mov_rcx_rcx
    cmp bx, 0x43
    je .i_mov_rcx_rdx
    cmp bx, 0x44
    je .i_mov_rcx_r8
    cmp bx, 0x45
    je .i_mov_rcx_r9
    cmp bx, 0x46
    je .i_mov_rcx_rsp
    cmp bx, 0x47
    je .i_mov_rcx_rbp
    cmp bx, 0x48
    je .i_mov_rdx_rax
    cmp bx, 0x49
    je .i_mov_rdx_rcx
    cmp bx, 0x4a
    je .i_mov_rdx_rdx
    cmp bx, 0x4b
    je .i_mov_rdx_r8
    cmp bx, 0x4c
    je .i_mov_rdx_r9
    cmp bx, 0x4d
    je .i_mov_rdx_rsp
    cmp bx, 0x4e
    je .i_mov_rdx_rbp
    cmp bx, 0x4f
    je .i_mov_r8_rax
    cmp bx, 0x50
    je .i_mov_r8_rcx
    cmp bx, 0x51
    je .i_mov_r8_rdx
    cmp bx, 0x52
    je .i_mov_r8_r8
    cmp bx, 0x53
    je .i_mov_r8_r9
    cmp bx, 0x54
    je .i_mov_r8_rsp
    cmp bx, 0x55
    je .i_mov_r8_rbp
    cmp bx, 0x56
    je .i_mov_r9_rax
    cmp bx, 0x57
    je .i_mov_r9_rcx
    cmp bx, 0x58
    je .i_mov_r9_rdx
    cmp bx, 0x59
    je .i_mov_r9_r8
    cmp bx, 0x5a
    je .i_mov_r9_r9
    cmp bx, 0x5b
    je .i_mov_r9_rsp
    cmp bx, 0x5c
    je .i_mov_r9_rbp
    cmp bx, 0x5d
    je .i_mov_rsp_rax
    cmp bx, 0x5e
    je .i_mov_rsp_rcx
    cmp bx, 0x5f
    je .i_mov_rsp_rdx
    cmp bx, 0x60
    je .i_mov_rsp_r8
    cmp bx, 0x61
    je .i_mov_rsp_r9
    cmp bx, 0x62
    je .i_mov_rsp_rsp
    cmp bx, 0x63
    je .i_mov_rsp_rbp
    cmp bx, 0x64
    je .i_mov_rbp_rax
    cmp bx, 0x65
    je .i_mov_rbp_rcx
    cmp bx, 0x66
    je .i_mov_rbp_rdx
    cmp bx, 0x67
    je .i_mov_rbp_r8
    cmp bx, 0x68
    je .i_mov_rbp_r9
    cmp bx, 0x69
    je .i_mov_rbp_rsp
    cmp bx, 0x6a
    je .i_mov_rbp_rbp
    cmp bx, 0x6b
    je .i_add_rax_rax
    cmp bx, 0x6c
    je .i_add_rax_rcx
    cmp bx, 0x6d
    je .i_add_rax_rdx
    cmp bx, 0x6e
    je .i_add_rax_r8
    cmp bx, 0x6f
    je .i_add_rax_r9
    cmp bx, 0x70
    je .i_add_rax_rsp
    cmp bx, 0x71
    je .i_add_rax_rbp
    cmp bx, 0x72
    je .i_add_rcx_rax
    cmp bx, 0x73
    je .i_add_rcx_rcx
    cmp bx, 0x74
    je .i_add_rcx_rdx
    cmp bx, 0x75
    je .i_add_rcx_r8
    cmp bx, 0x76
    je .i_add_rcx_r9
    cmp bx, 0x77
    je .i_add_rcx_rsp
    cmp bx, 0x78
    je .i_add_rcx_rbp
    cmp bx, 0x79
    je .i_add_rdx_rax
    cmp bx, 0x7a
    je .i_add_rdx_rcx
    cmp bx, 0x7b
    je .i_add_rdx_rdx
    cmp bx, 0x7c
    je .i_add_rdx_r8
    cmp bx, 0x7d
    je .i_add_rdx_r9
    cmp bx, 0x7e
    je .i_add_rdx_rsp
    cmp bx, 0x7f
    je .i_add_rdx_rbp
    cmp bx, 0x80
    je .i_add_r8_rax
    cmp bx, 0x81
    je .i_add_r8_rcx
    cmp bx, 0x82
    je .i_add_r8_rdx
    cmp bx, 0x83
    je .i_add_r8_r8
    cmp bx, 0x84
    je .i_add_r8_r9
    cmp bx, 0x85
    je .i_add_r8_rsp
    cmp bx, 0x86
    je .i_add_r8_rbp
    cmp bx, 0x87
    je .i_add_r9_rax
    cmp bx, 0x88
    je .i_add_r9_rcx
    cmp bx, 0x89
    je .i_add_r9_rdx
    cmp bx, 0x8a
    je .i_add_r9_r8
    cmp bx, 0x8b
    je .i_add_r9_r9
    cmp bx, 0x8c
    je .i_add_r9_rsp
    cmp bx, 0x8d
    je .i_add_r9_rbp
    cmp bx, 0x8e
    je .i_add_rsp_rax
    cmp bx, 0x8f
    je .i_add_rsp_rcx
    cmp bx, 0x90
    je .i_add_rsp_rdx
    cmp bx, 0x91
    je .i_add_rsp_r8
    cmp bx, 0x92
    je .i_add_rsp_r9
    cmp bx, 0x93
    je .i_add_rsp_rsp
    cmp bx, 0x94
    je .i_add_rsp_rbp
    cmp bx, 0x95
    je .i_add_rbp_rax
    cmp bx, 0x96
    je .i_add_rbp_rcx
    cmp bx, 0x97
    je .i_add_rbp_rdx
    cmp bx, 0x98
    je .i_add_rbp_r8
    cmp bx, 0x99
    je .i_add_rbp_r9
    cmp bx, 0x9a
    je .i_add_rbp_rsp
    cmp bx, 0x9b
    je .i_add_rbp_rbp
    cmp bx, 0x9c
    je .i_sub_rax_rax
    cmp bx, 0x9d
    je .i_sub_rax_rcx
    cmp bx, 0x9e
    je .i_sub_rax_rdx
    cmp bx, 0x9f
    je .i_sub_rax_r8
    cmp bx, 0xa0
    je .i_sub_rax_r9
    cmp bx, 0xa1
    je .i_sub_rax_rsp
    cmp bx, 0xa2
    je .i_sub_rax_rbp
    cmp bx, 0xa3
    je .i_sub_rcx_rax
    cmp bx, 0xa4
    je .i_sub_rcx_rcx
    cmp bx, 0xa5
    je .i_sub_rcx_rdx
    cmp bx, 0xa6
    je .i_sub_rcx_r8
    cmp bx, 0xa7
    je .i_sub_rcx_r9
    cmp bx, 0xa8
    je .i_sub_rcx_rsp
    cmp bx, 0xa9
    je .i_sub_rcx_rbp
    cmp bx, 0xaa
    je .i_sub_rdx_rax
    cmp bx, 0xab
    je .i_sub_rdx_rcx
    cmp bx, 0xac
    je .i_sub_rdx_rdx
    cmp bx, 0xad
    je .i_sub_rdx_r8
    cmp bx, 0xae
    je .i_sub_rdx_r9
    cmp bx, 0xaf
    je .i_sub_rdx_rsp
    cmp bx, 0xb0
    je .i_sub_rdx_rbp
    cmp bx, 0xb1
    je .i_sub_r8_rax
    cmp bx, 0xb2
    je .i_sub_r8_rcx
    cmp bx, 0xb3
    je .i_sub_r8_rdx
    cmp bx, 0xb4
    je .i_sub_r8_r8
    cmp bx, 0xb5
    je .i_sub_r8_r9
    cmp bx, 0xb6
    je .i_sub_r8_rsp
    cmp bx, 0xb7
    je .i_sub_r8_rbp
    cmp bx, 0xb8
    je .i_sub_r9_rax
    cmp bx, 0xb9
    je .i_sub_r9_rcx
    cmp bx, 0xba
    je .i_sub_r9_rdx
    cmp bx, 0xbb
    je .i_sub_r9_r8
    cmp bx, 0xbc
    je .i_sub_r9_r9
    cmp bx, 0xbd
    je .i_sub_r9_rsp
    cmp bx, 0xbe
    je .i_sub_r9_rbp
    cmp bx, 0xbf
    je .i_sub_rsp_rax
    cmp bx, 0xc0
    je .i_sub_rsp_rcx
    cmp bx, 0xc1
    je .i_sub_rsp_rdx
    cmp bx, 0xc2
    je .i_sub_rsp_r8
    cmp bx, 0xc3
    je .i_sub_rsp_r9
    cmp bx, 0xc4
    je .i_sub_rsp_rsp
    cmp bx, 0xc5
    je .i_sub_rsp_rbp
    cmp bx, 0xc6
    je .i_sub_rbp_rax
    cmp bx, 0xc7
    je .i_sub_rbp_rcx
    cmp bx, 0xc8
    je .i_sub_rbp_rdx
    cmp bx, 0xc9
    je .i_sub_rbp_r8
    cmp bx, 0xca
    je .i_sub_rbp_r9
    cmp bx, 0xcb
    je .i_sub_rbp_rsp
    cmp bx, 0xcc
    je .i_sub_rbp_rbp
    cmp bx, 0xcd
    je .i_imul_rax_rax
    cmp bx, 0xce
    je .i_imul_rax_rcx
    cmp bx, 0xcf
    je .i_imul_rax_rdx
    cmp bx, 0xd0
    je .i_imul_rax_r8
    cmp bx, 0xd1
    je .i_imul_rax_r9
    cmp bx, 0xd2
    je .i_imul_rax_rsp
    cmp bx, 0xd3
    je .i_imul_rax_rbp
    cmp bx, 0xd4
    je .i_imul_rcx_rax
    cmp bx, 0xd5
    je .i_imul_rcx_rcx
    cmp bx, 0xd6
    je .i_imul_rcx_rdx
    cmp bx, 0xd7
    je .i_imul_rcx_r8
    cmp bx, 0xd8
    je .i_imul_rcx_r9
    cmp bx, 0xd9
    je .i_imul_rcx_rsp
    cmp bx, 0xda
    je .i_imul_rcx_rbp
    cmp bx, 0xdb
    je .i_imul_rdx_rax
    cmp bx, 0xdc
    je .i_imul_rdx_rcx
    cmp bx, 0xdd
    je .i_imul_rdx_rdx
    cmp bx, 0xde
    je .i_imul_rdx_r8
    cmp bx, 0xdf
    je .i_imul_rdx_r9
    cmp bx, 0xe0
    je .i_imul_rdx_rsp
    cmp bx, 0xe1
    je .i_imul_rdx_rbp
    cmp bx, 0xe2
    je .i_imul_r8_rax
    cmp bx, 0xe3
    je .i_imul_r8_rcx
    cmp bx, 0xe4
    je .i_imul_r8_rdx
    cmp bx, 0xe5
    je .i_imul_r8_r8
    cmp bx, 0xe6
    je .i_imul_r8_r9
    cmp bx, 0xe7
    je .i_imul_r8_rsp
    cmp bx, 0xe8
    je .i_imul_r8_rbp
    cmp bx, 0xe9
    je .i_imul_r9_rax
    cmp bx, 0xea
    je .i_imul_r9_rcx
    cmp bx, 0xeb
    je .i_imul_r9_rdx
    cmp bx, 0xec
    je .i_imul_r9_r8
    cmp bx, 0xed
    je .i_imul_r9_r9
    cmp bx, 0xee
    je .i_imul_r9_rsp
    cmp bx, 0xef
    je .i_imul_r9_rbp
    cmp bx, 0xf0
    je .i_imul_rsp_rax
    cmp bx, 0xf1
    je .i_imul_rsp_rcx
    cmp bx, 0xf2
    je .i_imul_rsp_rdx
    cmp bx, 0xf3
    je .i_imul_rsp_r8
    cmp bx, 0xf4
    je .i_imul_rsp_r9
    cmp bx, 0xf5
    je .i_imul_rsp_rsp
    cmp bx, 0xf6
    je .i_imul_rsp_rbp
    cmp bx, 0xf7
    je .i_imul_rbp_rax
    cmp bx, 0xf8
    je .i_imul_rbp_rcx
    cmp bx, 0xf9
    je .i_imul_rbp_rdx
    cmp bx, 0xfa
    je .i_imul_rbp_r8
    cmp bx, 0xfb
    je .i_imul_rbp_r9
    cmp bx, 0xfc
    je .i_imul_rbp_rsp
    cmp bx, 0xfd
    je .i_imul_rbp_rbp
    cmp bx, 0xfe
    je .i_cmp_rax_rax
    cmp bx, 0xff
    je .i_cmp_rax_rcx
    cmp bx, 0x100
    je .i_cmp_rax_rdx
    cmp bx, 0x101
    je .i_cmp_rax_r8
    cmp bx, 0x102
    je .i_cmp_rax_r9
    cmp bx, 0x103
    je .i_cmp_rax_rsp
    cmp bx, 0x104
    je .i_cmp_rax_rbp
    cmp bx, 0x105
    je .i_cmp_rcx_rax
    cmp bx, 0x106
    je .i_cmp_rcx_rcx
    cmp bx, 0x107
    je .i_cmp_rcx_rdx
    cmp bx, 0x108
    je .i_cmp_rcx_r8
    cmp bx, 0x109
    je .i_cmp_rcx_r9
    cmp bx, 0x10a
    je .i_cmp_rcx_rsp
    cmp bx, 0x10b
    je .i_cmp_rcx_rbp
    cmp bx, 0x10c
    je .i_cmp_rdx_rax
    cmp bx, 0x10d
    je .i_cmp_rdx_rcx
    cmp bx, 0x10e
    je .i_cmp_rdx_rdx
    cmp bx, 0x10f
    je .i_cmp_rdx_r8
    cmp bx, 0x110
    je .i_cmp_rdx_r9
    cmp bx, 0x111
    je .i_cmp_rdx_rsp
    cmp bx, 0x112
    je .i_cmp_rdx_rbp
    cmp bx, 0x113
    je .i_cmp_r8_rax
    cmp bx, 0x114
    je .i_cmp_r8_rcx
    cmp bx, 0x115
    je .i_cmp_r8_rdx
    cmp bx, 0x116
    je .i_cmp_r8_r8
    cmp bx, 0x117
    je .i_cmp_r8_r9
    cmp bx, 0x118
    je .i_cmp_r8_rsp
    cmp bx, 0x119
    je .i_cmp_r8_rbp
    cmp bx, 0x11a
    je .i_cmp_r9_rax
    cmp bx, 0x11b
    je .i_cmp_r9_rcx
    cmp bx, 0x11c
    je .i_cmp_r9_rdx
    cmp bx, 0x11d
    je .i_cmp_r9_r8
    cmp bx, 0x11e
    je .i_cmp_r9_r9
    cmp bx, 0x11f
    je .i_cmp_r9_rsp
    cmp bx, 0x120
    je .i_cmp_r9_rbp
    cmp bx, 0x121
    je .i_cmp_rsp_rax
    cmp bx, 0x122
    je .i_cmp_rsp_rcx
    cmp bx, 0x123
    je .i_cmp_rsp_rdx
    cmp bx, 0x124
    je .i_cmp_rsp_r8
    cmp bx, 0x125
    je .i_cmp_rsp_r9
    cmp bx, 0x126
    je .i_cmp_rsp_rsp
    cmp bx, 0x127
    je .i_cmp_rsp_rbp
    cmp bx, 0x128
    je .i_cmp_rbp_rax
    cmp bx, 0x129
    je .i_cmp_rbp_rcx
    cmp bx, 0x12a
    je .i_cmp_rbp_rdx
    cmp bx, 0x12b
    je .i_cmp_rbp_r8
    cmp bx, 0x12c
    je .i_cmp_rbp_r9
    cmp bx, 0x12d
    je .i_cmp_rbp_rsp
    cmp bx, 0x12e
    je .i_cmp_rbp_rbp
    cmp bx, 0x12f
    je .i_dref_rax_rax
    cmp bx, 0x130
    je .i_dref_rax_rcx
    cmp bx, 0x131
    je .i_dref_rax_rdx
    cmp bx, 0x132
    je .i_dref_rax_r8
    cmp bx, 0x133
    je .i_dref_rax_r9
    cmp bx, 0x134
    je .i_dref_rax_rsp
    cmp bx, 0x135
    je .i_dref_rax_rbp
    cmp bx, 0x136
    je .i_dref_rcx_rax
    cmp bx, 0x137
    je .i_dref_rcx_rcx
    cmp bx, 0x138
    je .i_dref_rcx_rdx
    cmp bx, 0x139
    je .i_dref_rcx_r8
    cmp bx, 0x13a
    je .i_dref_rcx_r9
    cmp bx, 0x13b
    je .i_dref_rcx_rsp
    cmp bx, 0x13c
    je .i_dref_rcx_rbp
    cmp bx, 0x13d
    je .i_dref_rdx_rax
    cmp bx, 0x13e
    je .i_dref_rdx_rcx
    cmp bx, 0x13f
    je .i_dref_rdx_rdx
    cmp bx, 0x140
    je .i_dref_rdx_r8
    cmp bx, 0x141
    je .i_dref_rdx_r9
    cmp bx, 0x142
    je .i_dref_rdx_rsp
    cmp bx, 0x143
    je .i_dref_rdx_rbp
    cmp bx, 0x144
    je .i_dref_r8_rax
    cmp bx, 0x145
    je .i_dref_r8_rcx
    cmp bx, 0x146
    je .i_dref_r8_rdx
    cmp bx, 0x147
    je .i_dref_r8_r8
    cmp bx, 0x148
    je .i_dref_r8_r9
    cmp bx, 0x149
    je .i_dref_r8_rsp
    cmp bx, 0x14a
    je .i_dref_r8_rbp
    cmp bx, 0x14b
    je .i_dref_r9_rax
    cmp bx, 0x14c
    je .i_dref_r9_rcx
    cmp bx, 0x14d
    je .i_dref_r9_rdx
    cmp bx, 0x14e
    je .i_dref_r9_r8
    cmp bx, 0x14f
    je .i_dref_r9_r9
    cmp bx, 0x150
    je .i_dref_r9_rsp
    cmp bx, 0x151
    je .i_dref_r9_rbp
    cmp bx, 0x152
    je .i_dref_rsp_rax
    cmp bx, 0x153
    je .i_dref_rsp_rcx
    cmp bx, 0x154
    je .i_dref_rsp_rdx
    cmp bx, 0x155
    je .i_dref_rsp_r8
    cmp bx, 0x156
    je .i_dref_rsp_r9
    cmp bx, 0x157
    je .i_dref_rsp_rsp
    cmp bx, 0x158
    je .i_dref_rsp_rbp
    cmp bx, 0x159
    je .i_dref_rbp_rax
    cmp bx, 0x15a
    je .i_dref_rbp_rcx
    cmp bx, 0x15b
    je .i_dref_rbp_rdx
    cmp bx, 0x15c
    je .i_dref_rbp_r8
    cmp bx, 0x15d
    je .i_dref_rbp_r9
    cmp bx, 0x15e
    je .i_dref_rbp_rsp
    cmp bx, 0x15f
    je .i_dref_rbp_rbp
    cmp bx, 0x160
    je .i_jmp
    cmp bx, 0x161
    je .i_je
    cmp bx, 0x162
    je .i_jz
    cmp bx, 0x163
    je .i_jne
    cmp bx, 0x164
    je .i_jl
    cmp bx, 0x165
    je .i_jg
    cmp bx, 0x166
    je .i_jle
    cmp bx, 0x167
    je .i_jge
    cmp bx, 0x168
    je .i_call
    cmp bx, 0x169
    je .i_ret
    cmp bx, 0x16a
    je .i_leave
    cmp bx, 0x16b
    je .i_enter
    cmp bx, 0x16c
    je .i_extern_call


    mov cx, bx
    call invalid_inst
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

    .i_sub_rsp_t:
    sub rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_sub_rbp_t:
    sub rbp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rax_t:
    add rax, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rcx_t:
    add rcx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rdx_t:
    add rdx, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_r8_t:
    add r8, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_r9_t:
    add r9, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rsp_t:
    add rsp, [rsi]
    add rsi, 8
    jmp ._loop

    .i_imul_rbp_t:
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

    .i_mov_r9_rsp:
    mov r9, rsp
    jmp ._loop

    .i_mov_r9_rbp:
    mov r9, rbp
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

    .i_add_r9_rsp:
    add r9, rsp
    jmp ._loop

    .i_add_r9_rbp:
    add r9, rbp
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

    .i_sub_r9_rsp:
    sub r9, rsp
    jmp ._loop

    .i_sub_r9_rbp:
    sub r9, rbp
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

    .i_sub_rbp_rsp:
    sub rbp, rsp
    jmp ._loop

    .i_sub_rbp_rbp:
    sub rbp, rbp
    jmp ._loop

    .i_imul_rax_rax:
    sub rax, rax
    jmp ._loop

    .i_imul_rax_rcx:
    sub rax, rcx
    jmp ._loop

    .i_imul_rax_rdx:
    sub rax, rdx
    jmp ._loop

    .i_imul_rax_r8:
    sub rax, r8
    jmp ._loop

    .i_imul_rax_r9:
    sub rax, r9
    jmp ._loop

    .i_imul_rax_rsp:
    sub rax, rsp
    jmp ._loop

    .i_imul_rax_rbp:
    sub rax, rbp
    jmp ._loop

    .i_imul_rcx_rax:
    sub rcx, rax
    jmp ._loop

    .i_imul_rcx_rcx:
    sub rcx, rcx
    jmp ._loop

    .i_imul_rcx_rdx:
    sub rcx, rdx
    jmp ._loop

    .i_imul_rcx_r8:
    sub rcx, r8
    jmp ._loop

    .i_imul_rcx_r9:
    sub rcx, r9
    jmp ._loop

    .i_imul_rcx_rsp:
    sub rcx, rsp
    jmp ._loop

    .i_imul_rcx_rbp:
    sub rcx, rbp
    jmp ._loop

    .i_imul_rdx_rax:
    sub rdx, rax
    jmp ._loop

    .i_imul_rdx_rcx:
    sub rdx, rcx
    jmp ._loop

    .i_imul_rdx_rdx:
    sub rdx, rdx
    jmp ._loop

    .i_imul_rdx_r8:
    sub rdx, r8
    jmp ._loop

    .i_imul_rdx_r9:
    sub rdx, r9
    jmp ._loop

    .i_imul_rdx_rsp:
    sub rdx, rsp
    jmp ._loop

    .i_imul_rdx_rbp:
    sub rdx, rbp
    jmp ._loop

    .i_imul_r8_rax:
    sub r8, rax
    jmp ._loop

    .i_imul_r8_rcx:
    sub r8, rcx
    jmp ._loop

    .i_imul_r8_rdx:
    sub r8, rdx
    jmp ._loop

    .i_imul_r8_r8:
    sub r8, r8
    jmp ._loop

    .i_imul_r8_r9:
    sub r8, r9
    jmp ._loop

    .i_imul_r8_rsp:
    sub r8, rsp
    jmp ._loop

    .i_imul_r8_rbp:
    sub r8, rbp
    jmp ._loop

    .i_imul_r9_rax:
    sub r9, rax
    jmp ._loop

    .i_imul_r9_rcx:
    sub r9, rcx
    jmp ._loop

    .i_imul_r9_rdx:
    sub r9, rdx
    jmp ._loop

    .i_imul_r9_r8:
    sub r9, r8
    jmp ._loop

    .i_imul_r9_r9:
    sub r9, r9
    jmp ._loop

    .i_imul_r9_rsp:
    sub r9, rsp
    jmp ._loop

    .i_imul_r9_rbp:
    sub r9, rbp
    jmp ._loop

    .i_imul_rsp_rax:
    sub rsp, rax
    jmp ._loop

    .i_imul_rsp_rcx:
    sub rsp, rcx
    jmp ._loop

    .i_imul_rsp_rdx:
    sub rsp, rdx
    jmp ._loop

    .i_imul_rsp_r8:
    sub rsp, r8
    jmp ._loop

    .i_imul_rsp_r9:
    sub rsp, r9
    jmp ._loop

    .i_imul_rsp_rsp:
    sub rsp, rsp
    jmp ._loop

    .i_imul_rsp_rbp:
    sub rsp, rbp
    jmp ._loop

    .i_imul_rbp_rax:
    sub rbp, rax
    jmp ._loop

    .i_imul_rbp_rcx:
    sub rbp, rcx
    jmp ._loop

    .i_imul_rbp_rdx:
    sub rbp, rdx
    jmp ._loop

    .i_imul_rbp_r8:
    sub rbp, r8
    jmp ._loop

    .i_imul_rbp_r9:
    sub rbp, r9
    jmp ._loop

    .i_imul_rbp_rsp:
    sub rbp, rsp
    jmp ._loop

    .i_imul_rbp_rbp:
    sub rbp, rbp
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

    .i_dref_r9_rsp:
    mov r9, [rsp]
    jmp ._loop

    .i_dref_r9_rbp:
    mov r9, [rbp]
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

    .i_dref_rbp_rsp:
    mov rbp, [rsp]
    jmp ._loop

    .i_dref_rbp_rbp:
    mov rbp, [rbp]
    jmp ._loop

    .i_jmp:
    add rsi, 8
    mov rsi, [rsi-8]
    add rsi, rdi
    jmp ._loop

    .i_je:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jne ._loop
    mov rsi, [rsi-8]
    add rsi, rdi
    jmp ._loop

    .i_jz:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jnz ._loop
    mov rsi, [rsi-8]
    add rsi, rdi
    jmp ._loop

    .i_jne:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    je ._loop
    mov rsi, [rsi-8]
    add rsi, rdi
    jmp ._loop

    .i_jl:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jge ._loop
    mov rsi, [rsi-8]
    add rsi, rdi
    jmp ._loop

    .i_jg:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jle ._loop
    mov rsi, [rsi-8]
    add rsi, rdi
    jmp ._loop

    .i_jle:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jg ._loop
    mov rsi, [rsi-8]
    add rsi, rdi
    jmp ._loop

    .i_jge:
    add rsi, 8
    pop rbx
    cmp rbx, 0
    jl ._loop
    mov rsi, [rsi-8]
    add rsi, rdi
    jmp ._loop

    .i_call:
    add rsi, 8
    push rsi
    mov rsi, [rsi-8]
    add rsi, rdi
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

    .i_extern_call:
    push rsi
    push rdi
    call [rsi]
    pop rdi
   pop rsi
    jmp ._loop


    ._return:
    leave
    ret
