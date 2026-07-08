
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
    cmp bx, 0
    je .i_exit
    cmp bx, 1
    je .i_nop
    cmp bx, 2
    je .i_push_rax
    cmp bx, 3
    je .i_push_rcx
    cmp bx, 4
    je .i_push_rdx
    cmp bx, 5
    je .i_push_r8
    cmp bx, 6
    je .i_push_r9
    cmp bx, 7
    je .i_push_rsp
    cmp bx, 8
    je .i_push_rbp
    cmp bx, 9
    je .i_pop_rax
    cmp bx, 10
    je .i_pop_rcx
    cmp bx, 11
    je .i_pop_rdx
    cmp bx, 12
    je .i_pop_r8
    cmp bx, 13
    je .i_pop_r9
    cmp bx, 14
    je .i_pop_rsp
    cmp bx, 15
    je .i_pop_rbp
    cmp bx, 16
    je .i_dref_rax
    cmp bx, 17
    je .i_dref_rcx
    cmp bx, 18
    je .i_dref_rdx
    cmp bx, 19
    je .i_dref_r8
    cmp bx, 20
    je .i_dref_r9
    cmp bx, 21
    je .i_dref_rsp
    cmp bx, 22
    je .i_dref_rbp
    cmp bx, 23
    je .i_mov_rax_t
    cmp bx, 24
    je .i_mov_rcx_t
    cmp bx, 25
    je .i_mov_rdx_t
    cmp bx, 26
    je .i_mov_r8_t
    cmp bx, 27
    je .i_mov_r9_t
    cmp bx, 28
    je .i_mov_rsp_t
    cmp bx, 29
    je .i_mov_rbp_t
    cmp bx, 30
    je .i_add_rax_t
    cmp bx, 31
    je .i_add_rcx_t
    cmp bx, 32
    je .i_add_rdx_t
    cmp bx, 33
    je .i_add_r8_t
    cmp bx, 34
    je .i_add_r9_t
    cmp bx, 35
    je .i_add_rsp_t
    cmp bx, 36
    je .i_add_rbp_t
    cmp bx, 37
    je .i_sub_rax_t
    cmp bx, 38
    je .i_sub_rcx_t
    cmp bx, 39
    je .i_sub_rdx_t
    cmp bx, 40
    je .i_sub_r8_t
    cmp bx, 41
    je .i_sub_r9_t
    cmp bx, 42
    je .i_sub_rsp_t
    cmp bx, 43
    je .i_sub_rbp_t
    cmp bx, 44
    je .i_imul_rax_t
    cmp bx, 45
    je .i_imul_rcx_t
    cmp bx, 46
    je .i_imul_rdx_t
    cmp bx, 47
    je .i_imul_r8_t
    cmp bx, 48
    je .i_imul_r9_t
    cmp bx, 49
    je .i_imul_rsp_t
    cmp bx, 50
    je .i_imul_rbp_t
    cmp bx, 51
    je .i_cmp_rax_t
    cmp bx, 52
    je .i_cmp_rcx_t
    cmp bx, 53
    je .i_cmp_rdx_t
    cmp bx, 54
    je .i_cmp_r8_t
    cmp bx, 55
    je .i_cmp_r9_t
    cmp bx, 56
    je .i_cmp_rsp_t
    cmp bx, 57
    je .i_cmp_rbp_t
    cmp bx, 58
    je .i_mov_rax_rax
    cmp bx, 59
    je .i_mov_rax_rcx
    cmp bx, 60
    je .i_mov_rax_rdx
    cmp bx, 61
    je .i_mov_rax_r8
    cmp bx, 62
    je .i_mov_rax_r9
    cmp bx, 63
    je .i_mov_rax_rsp
    cmp bx, 64
    je .i_mov_rax_rbp
    cmp bx, 65
    je .i_mov_rcx_rax
    cmp bx, 66
    je .i_mov_rcx_rcx
    cmp bx, 67
    je .i_mov_rcx_rdx
    cmp bx, 68
    je .i_mov_rcx_r8
    cmp bx, 69
    je .i_mov_rcx_r9
    cmp bx, 70
    je .i_mov_rcx_rsp
    cmp bx, 71
    je .i_mov_rcx_rbp
    cmp bx, 72
    je .i_mov_rdx_rax
    cmp bx, 73
    je .i_mov_rdx_rcx
    cmp bx, 74
    je .i_mov_rdx_rdx
    cmp bx, 75
    je .i_mov_rdx_r8
    cmp bx, 76
    je .i_mov_rdx_r9
    cmp bx, 77
    je .i_mov_rdx_rsp
    cmp bx, 78
    je .i_mov_rdx_rbp
    cmp bx, 79
    je .i_mov_r8_rax
    cmp bx, 80
    je .i_mov_r8_rcx
    cmp bx, 81
    je .i_mov_r8_rdx
    cmp bx, 82
    je .i_mov_r8_r8
    cmp bx, 83
    je .i_mov_r8_r9
    cmp bx, 84
    je .i_mov_r8_rsp
    cmp bx, 85
    je .i_mov_r8_rbp
    cmp bx, 86
    je .i_mov_r9_rax
    cmp bx, 87
    je .i_mov_r9_rcx
    cmp bx, 88
    je .i_mov_r9_rdx
    cmp bx, 89
    je .i_mov_r9_r8
    cmp bx, 90
    je .i_mov_r9_r9
    cmp bx, 91
    je .i_mov_r9_rsp
    cmp bx, 92
    je .i_mov_r9_rbp
    cmp bx, 93
    je .i_mov_rsp_rax
    cmp bx, 94
    je .i_mov_rsp_rcx
    cmp bx, 95
    je .i_mov_rsp_rdx
    cmp bx, 96
    je .i_mov_rsp_r8
    cmp bx, 97
    je .i_mov_rsp_r9
    cmp bx, 98
    je .i_mov_rsp_rsp
    cmp bx, 99
    je .i_mov_rsp_rbp
    cmp bx, 100
    je .i_mov_rbp_rax
    cmp bx, 101
    je .i_mov_rbp_rcx
    cmp bx, 102
    je .i_mov_rbp_rdx
    cmp bx, 103
    je .i_mov_rbp_r8
    cmp bx, 104
    je .i_mov_rbp_r9
    cmp bx, 105
    je .i_mov_rbp_rsp
    cmp bx, 106
    je .i_mov_rbp_rbp
    cmp bx, 107
    je .i_add_rax_rax
    cmp bx, 108
    je .i_add_rax_rcx
    cmp bx, 109
    je .i_add_rax_rdx
    cmp bx, 110
    je .i_add_rax_r8
    cmp bx, 111
    je .i_add_rax_r9
    cmp bx, 112
    je .i_add_rax_rsp
    cmp bx, 113
    je .i_add_rax_rbp
    cmp bx, 114
    je .i_add_rcx_rax
    cmp bx, 115
    je .i_add_rcx_rcx
    cmp bx, 116
    je .i_add_rcx_rdx
    cmp bx, 117
    je .i_add_rcx_r8
    cmp bx, 118
    je .i_add_rcx_r9
    cmp bx, 119
    je .i_add_rcx_rsp
    cmp bx, 120
    je .i_add_rcx_rbp
    cmp bx, 121
    je .i_add_rdx_rax
    cmp bx, 122
    je .i_add_rdx_rcx
    cmp bx, 123
    je .i_add_rdx_rdx
    cmp bx, 124
    je .i_add_rdx_r8
    cmp bx, 125
    je .i_add_rdx_r9
    cmp bx, 126
    je .i_add_rdx_rsp
    cmp bx, 127
    je .i_add_rdx_rbp
    cmp bx, 128
    je .i_add_r8_rax
    cmp bx, 129
    je .i_add_r8_rcx
    cmp bx, 130
    je .i_add_r8_rdx
    cmp bx, 131
    je .i_add_r8_r8
    cmp bx, 132
    je .i_add_r8_r9
    cmp bx, 133
    je .i_add_r8_rsp
    cmp bx, 134
    je .i_add_r8_rbp
    cmp bx, 135
    je .i_add_r9_rax
    cmp bx, 136
    je .i_add_r9_rcx
    cmp bx, 137
    je .i_add_r9_rdx
    cmp bx, 138
    je .i_add_r9_r8
    cmp bx, 139
    je .i_add_r9_r9
    cmp bx, 140
    je .i_add_r9_rsp
    cmp bx, 141
    je .i_add_r9_rbp
    cmp bx, 142
    je .i_add_rsp_rax
    cmp bx, 143
    je .i_add_rsp_rcx
    cmp bx, 144
    je .i_add_rsp_rdx
    cmp bx, 145
    je .i_add_rsp_r8
    cmp bx, 146
    je .i_add_rsp_r9
    cmp bx, 147
    je .i_add_rsp_rsp
    cmp bx, 148
    je .i_add_rsp_rbp
    cmp bx, 149
    je .i_add_rbp_rax
    cmp bx, 150
    je .i_add_rbp_rcx
    cmp bx, 151
    je .i_add_rbp_rdx
    cmp bx, 152
    je .i_add_rbp_r8
    cmp bx, 153
    je .i_add_rbp_r9
    cmp bx, 154
    je .i_add_rbp_rsp
    cmp bx, 155
    je .i_add_rbp_rbp
    cmp bx, 156
    je .i_sub_rax_rax
    cmp bx, 157
    je .i_sub_rax_rcx
    cmp bx, 158
    je .i_sub_rax_rdx
    cmp bx, 159
    je .i_sub_rax_r8
    cmp bx, 160
    je .i_sub_rax_r9
    cmp bx, 161
    je .i_sub_rax_rsp
    cmp bx, 162
    je .i_sub_rax_rbp
    cmp bx, 163
    je .i_sub_rcx_rax
    cmp bx, 164
    je .i_sub_rcx_rcx
    cmp bx, 165
    je .i_sub_rcx_rdx
    cmp bx, 166
    je .i_sub_rcx_r8
    cmp bx, 167
    je .i_sub_rcx_r9
    cmp bx, 168
    je .i_sub_rcx_rsp
    cmp bx, 169
    je .i_sub_rcx_rbp
    cmp bx, 170
    je .i_sub_rdx_rax
    cmp bx, 171
    je .i_sub_rdx_rcx
    cmp bx, 172
    je .i_sub_rdx_rdx
    cmp bx, 173
    je .i_sub_rdx_r8
    cmp bx, 174
    je .i_sub_rdx_r9
    cmp bx, 175
    je .i_sub_rdx_rsp
    cmp bx, 176
    je .i_sub_rdx_rbp
    cmp bx, 177
    je .i_sub_r8_rax
    cmp bx, 178
    je .i_sub_r8_rcx
    cmp bx, 179
    je .i_sub_r8_rdx
    cmp bx, 180
    je .i_sub_r8_r8
    cmp bx, 181
    je .i_sub_r8_r9
    cmp bx, 182
    je .i_sub_r8_rsp
    cmp bx, 183
    je .i_sub_r8_rbp
    cmp bx, 184
    je .i_sub_r9_rax
    cmp bx, 185
    je .i_sub_r9_rcx
    cmp bx, 186
    je .i_sub_r9_rdx
    cmp bx, 187
    je .i_sub_r9_r8
    cmp bx, 188
    je .i_sub_r9_r9
    cmp bx, 189
    je .i_sub_r9_rsp
    cmp bx, 190
    je .i_sub_r9_rbp
    cmp bx, 191
    je .i_sub_rsp_rax
    cmp bx, 192
    je .i_sub_rsp_rcx
    cmp bx, 193
    je .i_sub_rsp_rdx
    cmp bx, 194
    je .i_sub_rsp_r8
    cmp bx, 195
    je .i_sub_rsp_r9
    cmp bx, 196
    je .i_sub_rsp_rsp
    cmp bx, 197
    je .i_sub_rsp_rbp
    cmp bx, 198
    je .i_sub_rbp_rax
    cmp bx, 199
    je .i_sub_rbp_rcx
    cmp bx, 200
    je .i_sub_rbp_rdx
    cmp bx, 201
    je .i_sub_rbp_r8
    cmp bx, 202
    je .i_sub_rbp_r9
    cmp bx, 203
    je .i_sub_rbp_rsp
    cmp bx, 204
    je .i_sub_rbp_rbp
    cmp bx, 205
    je .i_imul_rax_rax
    cmp bx, 206
    je .i_imul_rax_rcx
    cmp bx, 207
    je .i_imul_rax_rdx
    cmp bx, 208
    je .i_imul_rax_r8
    cmp bx, 209
    je .i_imul_rax_r9
    cmp bx, 210
    je .i_imul_rax_rsp
    cmp bx, 211
    je .i_imul_rax_rbp
    cmp bx, 212
    je .i_imul_rcx_rax
    cmp bx, 213
    je .i_imul_rcx_rcx
    cmp bx, 214
    je .i_imul_rcx_rdx
    cmp bx, 215
    je .i_imul_rcx_r8
    cmp bx, 216
    je .i_imul_rcx_r9
    cmp bx, 217
    je .i_imul_rcx_rsp
    cmp bx, 218
    je .i_imul_rcx_rbp
    cmp bx, 219
    je .i_imul_rdx_rax
    cmp bx, 220
    je .i_imul_rdx_rcx
    cmp bx, 221
    je .i_imul_rdx_rdx
    cmp bx, 222
    je .i_imul_rdx_r8
    cmp bx, 223
    je .i_imul_rdx_r9
    cmp bx, 224
    je .i_imul_rdx_rsp
    cmp bx, 225
    je .i_imul_rdx_rbp
    cmp bx, 226
    je .i_imul_r8_rax
    cmp bx, 227
    je .i_imul_r8_rcx
    cmp bx, 228
    je .i_imul_r8_rdx
    cmp bx, 229
    je .i_imul_r8_r8
    cmp bx, 230
    je .i_imul_r8_r9
    cmp bx, 231
    je .i_imul_r8_rsp
    cmp bx, 232
    je .i_imul_r8_rbp
    cmp bx, 233
    je .i_imul_r9_rax
    cmp bx, 234
    je .i_imul_r9_rcx
    cmp bx, 235
    je .i_imul_r9_rdx
    cmp bx, 236
    je .i_imul_r9_r8
    cmp bx, 237
    je .i_imul_r9_r9
    cmp bx, 238
    je .i_imul_r9_rsp
    cmp bx, 239
    je .i_imul_r9_rbp
    cmp bx, 240
    je .i_imul_rsp_rax
    cmp bx, 241
    je .i_imul_rsp_rcx
    cmp bx, 242
    je .i_imul_rsp_rdx
    cmp bx, 243
    je .i_imul_rsp_r8
    cmp bx, 244
    je .i_imul_rsp_r9
    cmp bx, 245
    je .i_imul_rsp_rsp
    cmp bx, 246
    je .i_imul_rsp_rbp
    cmp bx, 247
    je .i_imul_rbp_rax
    cmp bx, 248
    je .i_imul_rbp_rcx
    cmp bx, 249
    je .i_imul_rbp_rdx
    cmp bx, 250
    je .i_imul_rbp_r8
    cmp bx, 251
    je .i_imul_rbp_r9
    cmp bx, 252
    je .i_imul_rbp_rsp
    cmp bx, 253
    je .i_imul_rbp_rbp
    cmp bx, 254
    je .i_cmp_rax_rax
    cmp bx, 255
    je .i_cmp_rax_rcx
    cmp bx, 256
    je .i_cmp_rax_rdx
    cmp bx, 257
    je .i_cmp_rax_r8
    cmp bx, 258
    je .i_cmp_rax_r9
    cmp bx, 259
    je .i_cmp_rax_rsp
    cmp bx, 260
    je .i_cmp_rax_rbp
    cmp bx, 261
    je .i_cmp_rcx_rax
    cmp bx, 262
    je .i_cmp_rcx_rcx
    cmp bx, 263
    je .i_cmp_rcx_rdx
    cmp bx, 264
    je .i_cmp_rcx_r8
    cmp bx, 265
    je .i_cmp_rcx_r9
    cmp bx, 266
    je .i_cmp_rcx_rsp
    cmp bx, 267
    je .i_cmp_rcx_rbp
    cmp bx, 268
    je .i_cmp_rdx_rax
    cmp bx, 269
    je .i_cmp_rdx_rcx
    cmp bx, 270
    je .i_cmp_rdx_rdx
    cmp bx, 271
    je .i_cmp_rdx_r8
    cmp bx, 272
    je .i_cmp_rdx_r9
    cmp bx, 273
    je .i_cmp_rdx_rsp
    cmp bx, 274
    je .i_cmp_rdx_rbp
    cmp bx, 275
    je .i_cmp_r8_rax
    cmp bx, 276
    je .i_cmp_r8_rcx
    cmp bx, 277
    je .i_cmp_r8_rdx
    cmp bx, 278
    je .i_cmp_r8_r8
    cmp bx, 279
    je .i_cmp_r8_r9
    cmp bx, 280
    je .i_cmp_r8_rsp
    cmp bx, 281
    je .i_cmp_r8_rbp
    cmp bx, 282
    je .i_cmp_r9_rax
    cmp bx, 283
    je .i_cmp_r9_rcx
    cmp bx, 284
    je .i_cmp_r9_rdx
    cmp bx, 285
    je .i_cmp_r9_r8
    cmp bx, 286
    je .i_cmp_r9_r9
    cmp bx, 287
    je .i_cmp_r9_rsp
    cmp bx, 288
    je .i_cmp_r9_rbp
    cmp bx, 289
    je .i_cmp_rsp_rax
    cmp bx, 290
    je .i_cmp_rsp_rcx
    cmp bx, 291
    je .i_cmp_rsp_rdx
    cmp bx, 292
    je .i_cmp_rsp_r8
    cmp bx, 293
    je .i_cmp_rsp_r9
    cmp bx, 294
    je .i_cmp_rsp_rsp
    cmp bx, 295
    je .i_cmp_rsp_rbp
    cmp bx, 296
    je .i_cmp_rbp_rax
    cmp bx, 297
    je .i_cmp_rbp_rcx
    cmp bx, 298
    je .i_cmp_rbp_rdx
    cmp bx, 299
    je .i_cmp_rbp_r8
    cmp bx, 300
    je .i_cmp_rbp_r9
    cmp bx, 301
    je .i_cmp_rbp_rsp
    cmp bx, 302
    je .i_cmp_rbp_rbp
    cmp bx, 303
    je .i_dref_rax_rax
    cmp bx, 304
    je .i_dref_rax_rcx
    cmp bx, 305
    je .i_dref_rax_rdx
    cmp bx, 306
    je .i_dref_rax_r8
    cmp bx, 307
    je .i_dref_rax_r9
    cmp bx, 308
    je .i_dref_rax_rsp
    cmp bx, 309
    je .i_dref_rax_rbp
    cmp bx, 310
    je .i_dref_rcx_rax
    cmp bx, 311
    je .i_dref_rcx_rcx
    cmp bx, 312
    je .i_dref_rcx_rdx
    cmp bx, 313
    je .i_dref_rcx_r8
    cmp bx, 314
    je .i_dref_rcx_r9
    cmp bx, 315
    je .i_dref_rcx_rsp
    cmp bx, 316
    je .i_dref_rcx_rbp
    cmp bx, 317
    je .i_dref_rdx_rax
    cmp bx, 318
    je .i_dref_rdx_rcx
    cmp bx, 319
    je .i_dref_rdx_rdx
    cmp bx, 320
    je .i_dref_rdx_r8
    cmp bx, 321
    je .i_dref_rdx_r9
    cmp bx, 322
    je .i_dref_rdx_rsp
    cmp bx, 323
    je .i_dref_rdx_rbp
    cmp bx, 324
    je .i_dref_r8_rax
    cmp bx, 325
    je .i_dref_r8_rcx
    cmp bx, 326
    je .i_dref_r8_rdx
    cmp bx, 327
    je .i_dref_r8_r8
    cmp bx, 328
    je .i_dref_r8_r9
    cmp bx, 329
    je .i_dref_r8_rsp
    cmp bx, 330
    je .i_dref_r8_rbp
    cmp bx, 331
    je .i_dref_r9_rax
    cmp bx, 332
    je .i_dref_r9_rcx
    cmp bx, 333
    je .i_dref_r9_rdx
    cmp bx, 334
    je .i_dref_r9_r8
    cmp bx, 335
    je .i_dref_r9_r9
    cmp bx, 336
    je .i_dref_r9_rsp
    cmp bx, 337
    je .i_dref_r9_rbp
    cmp bx, 338
    je .i_dref_rsp_rax
    cmp bx, 339
    je .i_dref_rsp_rcx
    cmp bx, 340
    je .i_dref_rsp_rdx
    cmp bx, 341
    je .i_dref_rsp_r8
    cmp bx, 342
    je .i_dref_rsp_r9
    cmp bx, 343
    je .i_dref_rsp_rsp
    cmp bx, 344
    je .i_dref_rsp_rbp
    cmp bx, 345
    je .i_dref_rbp_rax
    cmp bx, 346
    je .i_dref_rbp_rcx
    cmp bx, 347
    je .i_dref_rbp_rdx
    cmp bx, 348
    je .i_dref_rbp_r8
    cmp bx, 349
    je .i_dref_rbp_r9
    cmp bx, 350
    je .i_dref_rbp_rsp
    cmp bx, 351
    je .i_dref_rbp_rbp
    cmp bx, 352
    je .i_jmp
    cmp bx, 353
    je .i_je
    cmp bx, 354
    je .i_jz
    cmp bx, 355
    je .i_jne
    cmp bx, 356
    je .i_jl
    cmp bx, 357
    je .i_jg
    cmp bx, 358
    je .i_jle
    cmp bx, 359
    je .i_jge
    cmp bx, 360
    je .i_call
    cmp bx, 361
    je .i_ret
    cmp bx, 362
    je .i_leave
    cmp bx, 363
    je .i_enter
    cmp bx, 364
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
    mov rax, rax
    jmp ._loop

    .i_mov_rax_rdx:
    mov rax, rax
    jmp ._loop

    .i_mov_rax_r8:
    mov rax, rax
    jmp ._loop

    .i_mov_rax_r9:
    mov rax, rax
    jmp ._loop

    .i_mov_rax_rsp:
    mov rax, rax
    jmp ._loop

    .i_mov_rax_rbp:
    mov rax, rax
    jmp ._loop

    .i_mov_rcx_rax:
    mov rcx, rcx
    jmp ._loop

    .i_mov_rcx_rcx:
    mov rcx, rcx
    jmp ._loop

    .i_mov_rcx_rdx:
    mov rcx, rcx
    jmp ._loop

    .i_mov_rcx_r8:
    mov rcx, rcx
    jmp ._loop

    .i_mov_rcx_r9:
    mov rcx, rcx
    jmp ._loop

    .i_mov_rcx_rsp:
    mov rcx, rcx
    jmp ._loop

    .i_mov_rcx_rbp:
    mov rcx, rcx
    jmp ._loop

    .i_mov_rdx_rax:
    mov rdx, rdx
    jmp ._loop

    .i_mov_rdx_rcx:
    mov rdx, rdx
    jmp ._loop

    .i_mov_rdx_rdx:
    mov rdx, rdx
    jmp ._loop

    .i_mov_rdx_r8:
    mov rdx, rdx
    jmp ._loop

    .i_mov_rdx_r9:
    mov rdx, rdx
    jmp ._loop

    .i_mov_rdx_rsp:
    mov rdx, rdx
    jmp ._loop

    .i_mov_rdx_rbp:
    mov rdx, rdx
    jmp ._loop

    .i_mov_r8_rax:
    mov r8, r8
    jmp ._loop

    .i_mov_r8_rcx:
    mov r8, r8
    jmp ._loop

    .i_mov_r8_rdx:
    mov r8, r8
    jmp ._loop

    .i_mov_r8_r8:
    mov r8, r8
    jmp ._loop

    .i_mov_r8_r9:
    mov r8, r8
    jmp ._loop

    .i_mov_r8_rsp:
    mov r8, r8
    jmp ._loop

    .i_mov_r8_rbp:
    mov r8, r8
    jmp ._loop

    .i_mov_r9_rax:
    mov r9, r9
    jmp ._loop

    .i_mov_r9_rcx:
    mov r9, r9
    jmp ._loop

    .i_mov_r9_rdx:
    mov r9, r9
    jmp ._loop

    .i_mov_r9_r8:
    mov r9, r9
    jmp ._loop

    .i_mov_r9_r9:
    mov r9, r9
    jmp ._loop

    .i_mov_r9_rsp:
    mov r9, r9
    jmp ._loop

    .i_mov_r9_rbp:
    mov r9, r9
    jmp ._loop

    .i_mov_rsp_rax:
    mov rsp, rsp
    jmp ._loop

    .i_mov_rsp_rcx:
    mov rsp, rsp
    jmp ._loop

    .i_mov_rsp_rdx:
    mov rsp, rsp
    jmp ._loop

    .i_mov_rsp_r8:
    mov rsp, rsp
    jmp ._loop

    .i_mov_rsp_r9:
    mov rsp, rsp
    jmp ._loop

    .i_mov_rsp_rsp:
    mov rsp, rsp
    jmp ._loop

    .i_mov_rsp_rbp:
    mov rsp, rsp
    jmp ._loop

    .i_mov_rbp_rax:
    mov rbp, rbp
    jmp ._loop

    .i_mov_rbp_rcx:
    mov rbp, rbp
    jmp ._loop

    .i_mov_rbp_rdx:
    mov rbp, rbp
    jmp ._loop

    .i_mov_rbp_r8:
    mov rbp, rbp
    jmp ._loop

    .i_mov_rbp_r9:
    mov rbp, rbp
    jmp ._loop

    .i_mov_rbp_rsp:
    mov rbp, rbp
    jmp ._loop

    .i_mov_rbp_rbp:
    mov rbp, rbp
    jmp ._loop

    .i_add_rax_rax:
    add rax, rax
    jmp ._loop

    .i_add_rax_rcx:
    add rax, rax
    jmp ._loop

    .i_add_rax_rdx:
    add rax, rax
    jmp ._loop

    .i_add_rax_r8:
    add rax, rax
    jmp ._loop

    .i_add_rax_r9:
    add rax, rax
    jmp ._loop

    .i_add_rax_rsp:
    add rax, rax
    jmp ._loop

    .i_add_rax_rbp:
    add rax, rax
    jmp ._loop

    .i_add_rcx_rax:
    add rcx, rcx
    jmp ._loop

    .i_add_rcx_rcx:
    add rcx, rcx
    jmp ._loop

    .i_add_rcx_rdx:
    add rcx, rcx
    jmp ._loop

    .i_add_rcx_r8:
    add rcx, rcx
    jmp ._loop

    .i_add_rcx_r9:
    add rcx, rcx
    jmp ._loop

    .i_add_rcx_rsp:
    add rcx, rcx
    jmp ._loop

    .i_add_rcx_rbp:
    add rcx, rcx
    jmp ._loop

    .i_add_rdx_rax:
    add rdx, rdx
    jmp ._loop

    .i_add_rdx_rcx:
    add rdx, rdx
    jmp ._loop

    .i_add_rdx_rdx:
    add rdx, rdx
    jmp ._loop

    .i_add_rdx_r8:
    add rdx, rdx
    jmp ._loop

    .i_add_rdx_r9:
    add rdx, rdx
    jmp ._loop

    .i_add_rdx_rsp:
    add rdx, rdx
    jmp ._loop

    .i_add_rdx_rbp:
    add rdx, rdx
    jmp ._loop

    .i_add_r8_rax:
    add r8, r8
    jmp ._loop

    .i_add_r8_rcx:
    add r8, r8
    jmp ._loop

    .i_add_r8_rdx:
    add r8, r8
    jmp ._loop

    .i_add_r8_r8:
    add r8, r8
    jmp ._loop

    .i_add_r8_r9:
    add r8, r8
    jmp ._loop

    .i_add_r8_rsp:
    add r8, r8
    jmp ._loop

    .i_add_r8_rbp:
    add r8, r8
    jmp ._loop

    .i_add_r9_rax:
    add r9, r9
    jmp ._loop

    .i_add_r9_rcx:
    add r9, r9
    jmp ._loop

    .i_add_r9_rdx:
    add r9, r9
    jmp ._loop

    .i_add_r9_r8:
    add r9, r9
    jmp ._loop

    .i_add_r9_r9:
    add r9, r9
    jmp ._loop

    .i_add_r9_rsp:
    add r9, r9
    jmp ._loop

    .i_add_r9_rbp:
    add r9, r9
    jmp ._loop

    .i_add_rsp_rax:
    add rsp, rsp
    jmp ._loop

    .i_add_rsp_rcx:
    add rsp, rsp
    jmp ._loop

    .i_add_rsp_rdx:
    add rsp, rsp
    jmp ._loop

    .i_add_rsp_r8:
    add rsp, rsp
    jmp ._loop

    .i_add_rsp_r9:
    add rsp, rsp
    jmp ._loop

    .i_add_rsp_rsp:
    add rsp, rsp
    jmp ._loop

    .i_add_rsp_rbp:
    add rsp, rsp
    jmp ._loop

    .i_add_rbp_rax:
    add rbp, rbp
    jmp ._loop

    .i_add_rbp_rcx:
    add rbp, rbp
    jmp ._loop

    .i_add_rbp_rdx:
    add rbp, rbp
    jmp ._loop

    .i_add_rbp_r8:
    add rbp, rbp
    jmp ._loop

    .i_add_rbp_r9:
    add rbp, rbp
    jmp ._loop

    .i_add_rbp_rsp:
    add rbp, rbp
    jmp ._loop

    .i_add_rbp_rbp:
    add rbp, rbp
    jmp ._loop

    .i_sub_rax_rax:
    sub rax, rax
    jmp ._loop

    .i_sub_rax_rcx:
    sub rax, rax
    jmp ._loop

    .i_sub_rax_rdx:
    sub rax, rax
    jmp ._loop

    .i_sub_rax_r8:
    sub rax, rax
    jmp ._loop

    .i_sub_rax_r9:
    sub rax, rax
    jmp ._loop

    .i_sub_rax_rsp:
    sub rax, rax
    jmp ._loop

    .i_sub_rax_rbp:
    sub rax, rax
    jmp ._loop

    .i_sub_rcx_rax:
    sub rcx, rcx
    jmp ._loop

    .i_sub_rcx_rcx:
    sub rcx, rcx
    jmp ._loop

    .i_sub_rcx_rdx:
    sub rcx, rcx
    jmp ._loop

    .i_sub_rcx_r8:
    sub rcx, rcx
    jmp ._loop

    .i_sub_rcx_r9:
    sub rcx, rcx
    jmp ._loop

    .i_sub_rcx_rsp:
    sub rcx, rcx
    jmp ._loop

    .i_sub_rcx_rbp:
    sub rcx, rcx
    jmp ._loop

    .i_sub_rdx_rax:
    sub rdx, rdx
    jmp ._loop

    .i_sub_rdx_rcx:
    sub rdx, rdx
    jmp ._loop

    .i_sub_rdx_rdx:
    sub rdx, rdx
    jmp ._loop

    .i_sub_rdx_r8:
    sub rdx, rdx
    jmp ._loop

    .i_sub_rdx_r9:
    sub rdx, rdx
    jmp ._loop

    .i_sub_rdx_rsp:
    sub rdx, rdx
    jmp ._loop

    .i_sub_rdx_rbp:
    sub rdx, rdx
    jmp ._loop

    .i_sub_r8_rax:
    sub r8, r8
    jmp ._loop

    .i_sub_r8_rcx:
    sub r8, r8
    jmp ._loop

    .i_sub_r8_rdx:
    sub r8, r8
    jmp ._loop

    .i_sub_r8_r8:
    sub r8, r8
    jmp ._loop

    .i_sub_r8_r9:
    sub r8, r8
    jmp ._loop

    .i_sub_r8_rsp:
    sub r8, r8
    jmp ._loop

    .i_sub_r8_rbp:
    sub r8, r8
    jmp ._loop

    .i_sub_r9_rax:
    sub r9, r9
    jmp ._loop

    .i_sub_r9_rcx:
    sub r9, r9
    jmp ._loop

    .i_sub_r9_rdx:
    sub r9, r9
    jmp ._loop

    .i_sub_r9_r8:
    sub r9, r9
    jmp ._loop

    .i_sub_r9_r9:
    sub r9, r9
    jmp ._loop

    .i_sub_r9_rsp:
    sub r9, r9
    jmp ._loop

    .i_sub_r9_rbp:
    sub r9, r9
    jmp ._loop

    .i_sub_rsp_rax:
    sub rsp, rsp
    jmp ._loop

    .i_sub_rsp_rcx:
    sub rsp, rsp
    jmp ._loop

    .i_sub_rsp_rdx:
    sub rsp, rsp
    jmp ._loop

    .i_sub_rsp_r8:
    sub rsp, rsp
    jmp ._loop

    .i_sub_rsp_r9:
    sub rsp, rsp
    jmp ._loop

    .i_sub_rsp_rsp:
    sub rsp, rsp
    jmp ._loop

    .i_sub_rsp_rbp:
    sub rsp, rsp
    jmp ._loop

    .i_sub_rbp_rax:
    sub rbp, rbp
    jmp ._loop

    .i_sub_rbp_rcx:
    sub rbp, rbp
    jmp ._loop

    .i_sub_rbp_rdx:
    sub rbp, rbp
    jmp ._loop

    .i_sub_rbp_r8:
    sub rbp, rbp
    jmp ._loop

    .i_sub_rbp_r9:
    sub rbp, rbp
    jmp ._loop

    .i_sub_rbp_rsp:
    sub rbp, rbp
    jmp ._loop

    .i_sub_rbp_rbp:
    sub rbp, rbp
    jmp ._loop

    .i_imul_rax_rax:
    sub rax, rax
    jmp ._loop

    .i_imul_rax_rcx:
    sub rax, rax
    jmp ._loop

    .i_imul_rax_rdx:
    sub rax, rax
    jmp ._loop

    .i_imul_rax_r8:
    sub rax, rax
    jmp ._loop

    .i_imul_rax_r9:
    sub rax, rax
    jmp ._loop

    .i_imul_rax_rsp:
    sub rax, rax
    jmp ._loop

    .i_imul_rax_rbp:
    sub rax, rax
    jmp ._loop

    .i_imul_rcx_rax:
    sub rcx, rcx
    jmp ._loop

    .i_imul_rcx_rcx:
    sub rcx, rcx
    jmp ._loop

    .i_imul_rcx_rdx:
    sub rcx, rcx
    jmp ._loop

    .i_imul_rcx_r8:
    sub rcx, rcx
    jmp ._loop

    .i_imul_rcx_r9:
    sub rcx, rcx
    jmp ._loop

    .i_imul_rcx_rsp:
    sub rcx, rcx
    jmp ._loop

    .i_imul_rcx_rbp:
    sub rcx, rcx
    jmp ._loop

    .i_imul_rdx_rax:
    sub rdx, rdx
    jmp ._loop

    .i_imul_rdx_rcx:
    sub rdx, rdx
    jmp ._loop

    .i_imul_rdx_rdx:
    sub rdx, rdx
    jmp ._loop

    .i_imul_rdx_r8:
    sub rdx, rdx
    jmp ._loop

    .i_imul_rdx_r9:
    sub rdx, rdx
    jmp ._loop

    .i_imul_rdx_rsp:
    sub rdx, rdx
    jmp ._loop

    .i_imul_rdx_rbp:
    sub rdx, rdx
    jmp ._loop

    .i_imul_r8_rax:
    sub r8, r8
    jmp ._loop

    .i_imul_r8_rcx:
    sub r8, r8
    jmp ._loop

    .i_imul_r8_rdx:
    sub r8, r8
    jmp ._loop

    .i_imul_r8_r8:
    sub r8, r8
    jmp ._loop

    .i_imul_r8_r9:
    sub r8, r8
    jmp ._loop

    .i_imul_r8_rsp:
    sub r8, r8
    jmp ._loop

    .i_imul_r8_rbp:
    sub r8, r8
    jmp ._loop

    .i_imul_r9_rax:
    sub r9, r9
    jmp ._loop

    .i_imul_r9_rcx:
    sub r9, r9
    jmp ._loop

    .i_imul_r9_rdx:
    sub r9, r9
    jmp ._loop

    .i_imul_r9_r8:
    sub r9, r9
    jmp ._loop

    .i_imul_r9_r9:
    sub r9, r9
    jmp ._loop

    .i_imul_r9_rsp:
    sub r9, r9
    jmp ._loop

    .i_imul_r9_rbp:
    sub r9, r9
    jmp ._loop

    .i_imul_rsp_rax:
    sub rsp, rsp
    jmp ._loop

    .i_imul_rsp_rcx:
    sub rsp, rsp
    jmp ._loop

    .i_imul_rsp_rdx:
    sub rsp, rsp
    jmp ._loop

    .i_imul_rsp_r8:
    sub rsp, rsp
    jmp ._loop

    .i_imul_rsp_r9:
    sub rsp, rsp
    jmp ._loop

    .i_imul_rsp_rsp:
    sub rsp, rsp
    jmp ._loop

    .i_imul_rsp_rbp:
    sub rsp, rsp
    jmp ._loop

    .i_imul_rbp_rax:
    sub rbp, rbp
    jmp ._loop

    .i_imul_rbp_rcx:
    sub rbp, rbp
    jmp ._loop

    .i_imul_rbp_rdx:
    sub rbp, rbp
    jmp ._loop

    .i_imul_rbp_r8:
    sub rbp, rbp
    jmp ._loop

    .i_imul_rbp_r9:
    sub rbp, rbp
    jmp ._loop

    .i_imul_rbp_rsp:
    sub rbp, rbp
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
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rax_rdx:
    mov rbx, rax
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rax_r8:
    mov rbx, rax
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rax_r9:
    mov rbx, rax
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rax_rsp:
    mov rbx, rax
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rax_rbp:
    mov rbx, rax
    sub rbx, rax
    push rbx
    jmp ._loop

    .i_cmp_rcx_rax:
    mov rbx, rcx
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rcx_rcx:
    mov rbx, rcx
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rcx_rdx:
    mov rbx, rcx
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rcx_r8:
    mov rbx, rcx
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rcx_r9:
    mov rbx, rcx
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rcx_rsp:
    mov rbx, rcx
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rcx_rbp:
    mov rbx, rcx
    sub rbx, rcx
    push rbx
    jmp ._loop

    .i_cmp_rdx_rax:
    mov rbx, rdx
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rdx_rcx:
    mov rbx, rdx
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rdx_rdx:
    mov rbx, rdx
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rdx_r8:
    mov rbx, rdx
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rdx_r9:
    mov rbx, rdx
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rdx_rsp:
    mov rbx, rdx
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_rdx_rbp:
    mov rbx, rdx
    sub rbx, rdx
    push rbx
    jmp ._loop

    .i_cmp_r8_rax:
    mov rbx, r8
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r8_rcx:
    mov rbx, r8
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r8_rdx:
    mov rbx, r8
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r8_r8:
    mov rbx, r8
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r8_r9:
    mov rbx, r8
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r8_rsp:
    mov rbx, r8
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r8_rbp:
    mov rbx, r8
    sub rbx, r8
    push rbx
    jmp ._loop

    .i_cmp_r9_rax:
    mov rbx, r9
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r9_rcx:
    mov rbx, r9
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r9_rdx:
    mov rbx, r9
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r9_r8:
    mov rbx, r9
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r9_r9:
    mov rbx, r9
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r9_rsp:
    mov rbx, r9
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_r9_rbp:
    mov rbx, r9
    sub rbx, r9
    push rbx
    jmp ._loop

    .i_cmp_rsp_rax:
    mov rbx, rsp
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rsp_rcx:
    mov rbx, rsp
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rsp_rdx:
    mov rbx, rsp
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rsp_r8:
    mov rbx, rsp
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rsp_r9:
    mov rbx, rsp
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rsp_rsp:
    mov rbx, rsp
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rsp_rbp:
    mov rbx, rsp
    sub rbx, rsp
    push rbx
    jmp ._loop

    .i_cmp_rbp_rax:
    mov rbx, rbp
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rbp_rcx:
    mov rbx, rbp
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rbp_rdx:
    mov rbx, rbp
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rbp_r8:
    mov rbx, rbp
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rbp_r9:
    mov rbx, rbp
    sub rbx, rbp
    push rbx
    jmp ._loop

    .i_cmp_rbp_rsp:
    mov rbx, rbp
    sub rbx, rbp
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
    mov rax, [rax]
    jmp ._loop

    .i_dref_rax_rdx:
    mov rax, [rax]
    jmp ._loop

    .i_dref_rax_r8:
    mov rax, [rax]
    jmp ._loop

    .i_dref_rax_r9:
    mov rax, [rax]
    jmp ._loop

    .i_dref_rax_rsp:
    mov rax, [rax]
    jmp ._loop

    .i_dref_rax_rbp:
    mov rax, [rax]
    jmp ._loop

    .i_dref_rcx_rax:
    mov rcx, [rcx]
    jmp ._loop

    .i_dref_rcx_rcx:
    mov rcx, [rcx]
    jmp ._loop

    .i_dref_rcx_rdx:
    mov rcx, [rcx]
    jmp ._loop

    .i_dref_rcx_r8:
    mov rcx, [rcx]
    jmp ._loop

    .i_dref_rcx_r9:
    mov rcx, [rcx]
    jmp ._loop

    .i_dref_rcx_rsp:
    mov rcx, [rcx]
    jmp ._loop

    .i_dref_rcx_rbp:
    mov rcx, [rcx]
    jmp ._loop

    .i_dref_rdx_rax:
    mov rdx, [rdx]
    jmp ._loop

    .i_dref_rdx_rcx:
    mov rdx, [rdx]
    jmp ._loop

    .i_dref_rdx_rdx:
    mov rdx, [rdx]
    jmp ._loop

    .i_dref_rdx_r8:
    mov rdx, [rdx]
    jmp ._loop

    .i_dref_rdx_r9:
    mov rdx, [rdx]
    jmp ._loop

    .i_dref_rdx_rsp:
    mov rdx, [rdx]
    jmp ._loop

    .i_dref_rdx_rbp:
    mov rdx, [rdx]
    jmp ._loop

    .i_dref_r8_rax:
    mov r8, [r8]
    jmp ._loop

    .i_dref_r8_rcx:
    mov r8, [r8]
    jmp ._loop

    .i_dref_r8_rdx:
    mov r8, [r8]
    jmp ._loop

    .i_dref_r8_r8:
    mov r8, [r8]
    jmp ._loop

    .i_dref_r8_r9:
    mov r8, [r8]
    jmp ._loop

    .i_dref_r8_rsp:
    mov r8, [r8]
    jmp ._loop

    .i_dref_r8_rbp:
    mov r8, [r8]
    jmp ._loop

    .i_dref_r9_rax:
    mov r9, [r9]
    jmp ._loop

    .i_dref_r9_rcx:
    mov r9, [r9]
    jmp ._loop

    .i_dref_r9_rdx:
    mov r9, [r9]
    jmp ._loop

    .i_dref_r9_r8:
    mov r9, [r9]
    jmp ._loop

    .i_dref_r9_r9:
    mov r9, [r9]
    jmp ._loop

    .i_dref_r9_rsp:
    mov r9, [r9]
    jmp ._loop

    .i_dref_r9_rbp:
    mov r9, [r9]
    jmp ._loop

    .i_dref_rsp_rax:
    mov rsp, [rsp]
    jmp ._loop

    .i_dref_rsp_rcx:
    mov rsp, [rsp]
    jmp ._loop

    .i_dref_rsp_rdx:
    mov rsp, [rsp]
    jmp ._loop

    .i_dref_rsp_r8:
    mov rsp, [rsp]
    jmp ._loop

    .i_dref_rsp_r9:
    mov rsp, [rsp]
    jmp ._loop

    .i_dref_rsp_rsp:
    mov rsp, [rsp]
    jmp ._loop

    .i_dref_rsp_rbp:
    mov rsp, [rsp]
    jmp ._loop

    .i_dref_rbp_rax:
    mov rbp, [rbp]
    jmp ._loop

    .i_dref_rbp_rcx:
    mov rbp, [rbp]
    jmp ._loop

    .i_dref_rbp_rdx:
    mov rbp, [rbp]
    jmp ._loop

    .i_dref_rbp_r8:
    mov rbp, [rbp]
    jmp ._loop

    .i_dref_rbp_r9:
    mov rbp, [rbp]
    jmp ._loop

    .i_dref_rbp_rsp:
    mov rbp, [rbp]
    jmp ._loop

    .i_dref_rbp_rbp:
    mov rbp, [rbp]
    jmp ._loop

    .i_jmp:
    mov rsi, [rsi]
    add rsi, rdi
    add rsi, 8
    jmp ._loop

    .i_je:
   pop rbx
    cmp rbx, 0
    jne .end_je
    mov rsi, [rsi]
    add rsi, rdi
    .end_je:
    add rsi, 8
    jmp ._loop

    .i_jz:
   pop rbx
    cmp rbx, 0
    jnz .end_jz
    mov rsi, [rsi]
    add rsi, rdi
    .end_jz:
    add rsi, 8
    jmp ._loop

    .i_jne:
   pop rbx
    cmp rbx, 0
    je .end_jne
    mov rsi, [rsi]
    add rsi, rdi
    .end_jne:
    add rsi, 8
    jmp ._loop

    .i_jl:
   pop rbx
    cmp rbx, 0
    jge .end_jl
    mov rsi, [rsi]
    add rsi, rdi
    .end_jl:
    add rsi, 8
    jmp ._loop

    .i_jg:
   pop rbx
    cmp rbx, 0
    jle .end_jg
    mov rsi, [rsi]
    add rsi, rdi
    .end_jg:
    add rsi, 8
    jmp ._loop

    .i_jle:
   pop rbx
    cmp rbx, 0
    jg .end_jle
    mov rsi, [rsi]
    add rsi, rdi
    .end_jle:
    add rsi, 8
    jmp ._loop

    .i_jge:
   pop rbx
    cmp rbx, 0
    jl .end_jge
    mov rsi, [rsi]
    add rsi, rdi
    .end_jge:
    add rsi, 8
    jmp ._loop

    .i_call:
    push rsi
    mov rsi, [rsi]
    add rsi, rdi
    add rsi, 8
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
