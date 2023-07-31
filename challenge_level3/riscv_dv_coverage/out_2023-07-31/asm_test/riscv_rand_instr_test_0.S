.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 1
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

init_machine_mode:
                  li x29, 0x1a00
                  csrw 0x300, x29 # MSTATUS
                  li x29, 0x0
                  csrw 0x304, x29 # MIE
                  mret
init:             
                  li x0, 0x94a329e8
                  li x1, 0xfd77e6d7
                  li x2, 0xf4ede9a9
                  li x3, 0xca9cebcd
                  li x4, 0xfa16076a
                  li x5, 0xd
                  li x6, 0xfea1026e
                  li x7, 0x9
                  li x8, 0xe
                  li x9, 0xb
                  li x10, 0x3
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0xb
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xaf53c765
                  li x18, 0x753bed73
                  li x19, 0x0
                  li x20, 0xfdd2e1a6
                  li x21, 0xf484cc14
                  li x22, 0x9
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x8
                  li x27, 0x3
                  li x28, 0x871acd
                  li x29, 0x80000000
                  la x30, user_stack_end
main:             la         sp, region_1+3308 #start riscv_load_store_rand_instr_stream_0
                  sh          t4, -210 (s9)
                  and         s1, a0, t6
                  sw          s4, 188 (s9)
                  lh          t1, -249 (s9)
                  lb          t3, 38 (s9)
                  sw          s4, 142 (s9)
                  srl         a0, a2, t5
                  sw          s4, -193 (s9)
                  xori        s7, s2, -1710
                  sra         zero, t4, s6
                  or          t4, sp, s1
                  sh          t4, 163 (s9)
                  or          zero, s10, s7
                  lh          t1, -18 (s9)
                  lw          a1, -203 (s9)
                  sw          s4, 85 (s9)
                  addi        a1, gp, 897
                  slli        zero, a4, 9
                  sw          s4, -82 (s9)
                  sltiu       a2, t0, 1817
                  lh          t1, -128 (s9)
                  andi        a1, t6, 950
                  xor         a6, a3, a4
                  sb          a2, 234 (s9)
                  sra         s5, a2, s0
                  xor         a1, tp, t3
                  lw          a1, 96 (s9)
                  lb          t3, -69 (s9)
                  lb          t3, 16 (s9)
                  srli        s0, a0, 8
                  and         gp, a1, t3
                  and         gp, s0, t5
                  sub         a1, s7, s5
                  lhu         s7, -197 (s9)
                  or          zero, t1, s6
                  srli        t3, a4, 29
                  sw          s4, 140 (s9)
                  lw          a1, -226 (s9)
                  lbu         t2, -114 (s9)
                  ori         s4, t1, -1505
                  sh          t4, 38 (s9)
                  lb          t3, -185 (s9) #end riscv_load_store_rand_instr_stream_0
                  la         s9, region_1+3127 #start riscv_load_store_hazard_instr_stream_0
                  lw          a1, -290 (s9)
                  lw          a1, -290 (s9)
                  lhu         s7, -290 (s9)
                  ori         t0, s6, 1970
                  sb          a2, -290 (s9)
                  sh          t4, -290 (s9)
                  lbu         t2, -290 (s9)
                  lh          t1, -290 (s9)
                  sh          t4, -290 (s9)
                  sb          a2, -290 (s9)
                  sw          s4, -290 (s9)
                  lh          t1, -290 (s9)
                  lh          t1, -290 (s9)
                  lh          t1, -290 (s9)
                  lb          t3, -290 (s9)
                  sw          s4, -290 (s9)
                  lb          t3, -290 (s9) #end riscv_load_store_hazard_instr_stream_0
                  blt         s2, ra, 5f
                  blt         t5, sp, 7f
                  sll         s1, zero, s5
                  slti        zero, t4, -947
                  blt         a2, t1, 7f
main_2:           jal         t6, 8f
0:                jal         ra, 4f
1:                jal         ra, 17f
2:                jal         s2, 11f
3:                jal         ra, 2b
4:                jal         ra, 6f
5:                jal         ra, 12f
6:                jal         a1, 1b
7:                jal         ra, 10f
8:                jal         ra, 15f
9:                jal         ra, 3b
10:               jal         a1, 16f
11:               jal         ra, 7b
12:               jal         ra, 13f
13:               jal         ra, 0b
14:               jal         ra, 5b
15:               jal         ra, 14b
16:               jal         ra, 18f
17:               jal         ra, 9b
18:               sltiu       t2, s2, 766
5:                bgeu        t5, a6, 7f
                  bltu        a3, s4, 7f
7:                lui         a3, 79609
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .region_0,"aw",@progbits;
region_0:
.word 0xe15ecb01, 0x3a9c7583, 0x5e4a5ee1, 0x3792d035, 0x8d6ec471, 0x5f4443ba, 0x09258d05, 0x8a2e1a7c
.word 0x9642e082, 0x90849f89, 0xc5e02633, 0x0ac409f4, 0x13f9ca58, 0xd50fbbdd, 0x1b69bab3, 0xb9b0875b
.word 0x1145f13c, 0xfbc1622d, 0x28a5f041, 0x08db9b92, 0xf6ecc51b, 0x2fc662d6, 0xfeb1f88d, 0x38f14c0b
.word 0x5f586ea9, 0xfdcac3cb, 0x58a4e707, 0x608e913a, 0x500c4ae7, 0x6f76f5ac, 0x02118e91, 0xfc434a85
.word 0xe33f81ba, 0xe639ebd1, 0x94adfda3, 0x6747bf6c, 0x29c267d4, 0x00e80de3, 0x3344fe36, 0xcae9aa50
.word 0xb15b8664, 0xb03cbb32, 0x84d73298, 0x58f4838a, 0xf8b12798, 0xef057d44, 0x4f927bd2, 0x25cc6776
.word 0x672d2bad, 0x7a5fa7d5, 0x25c1d451, 0x88835b83, 0xfc708858, 0x1ae074bb, 0x1f47031f, 0x71d324df
.word 0x577b397d, 0xaadef4df, 0xbd761ebf, 0xdc18ca55, 0xdb43cdbe, 0xaa242422, 0x40603746, 0x7106de96
.word 0xe881d551, 0x7958b1fd, 0x5c8a553d, 0xfb86d090, 0x6f4a15c6, 0xfc3f8013, 0xe01fd2c3, 0x06b83326
.word 0xa440b21d, 0x2a365d5b, 0xcf7789d6, 0x2ab540b9, 0x7de22ff8, 0x5be29022, 0xe05cf5ad, 0x1d890e29
.word 0x80580a8f, 0xf054383d, 0x18ba6c8f, 0x1685537f, 0xed005d20, 0x382cc71c, 0x1c8c3f95, 0xba129be3
.word 0xe3578fcb, 0x0fa32bfb, 0xa34cd66d, 0x4d8a96e1, 0xd5d08d67, 0x8778cfea, 0xb83ba103, 0x37419372
.word 0x49811219, 0x4e279308, 0x4a9a55ce, 0x6008b3ed, 0x5d91d0ef, 0x1cf511b0, 0xf5f4a428, 0xbdf95d96
.word 0x1df3c9fc, 0x818b5fed, 0xe563813c, 0xb99c1ecc, 0x5fb9d2d1, 0x5a18eebd, 0x25e98fe4, 0x0a1fabb4
.word 0xced11bf9, 0x8b2404a8, 0xaf0f9573, 0x67a79dba, 0x575fc1bf, 0xd6cf395c, 0xb77beb45, 0x3b17b318
.word 0x049fc65a, 0xec5f9685, 0x34d5e783, 0x02417bfc, 0xf04a258f, 0xb02eb295, 0x3fbf3992, 0x2b9e0721
.word 0x55f9d745, 0xc8e31937, 0xc748aa27, 0x27da7b48, 0x1b58b61f, 0x603cbb43, 0xc04b8743, 0x759a5217
.word 0x6f5343b7, 0xda7d0ad6, 0xc80b1e0b, 0x1c9b0c23, 0x48dedbd6, 0xaf3a2be2, 0xcef851de, 0x9d063d1f
.word 0x6bed9208, 0xbbe867bb, 0xf0cc42c3, 0x30c9b31b, 0x5f51875d, 0xfeab5a4b, 0x870462eb, 0x72b259c9
.word 0xae5d664c, 0xe2d03e1e, 0x14fc80fe, 0xf7ca0c86, 0xd83de6f6, 0x6dc15942, 0x0f7fbbc0, 0xbe7d6bfb
.word 0xce7d341e, 0xc23ab3f8, 0xa69b420c, 0xdcf342f7, 0xebe9b7df, 0xe799e3e2, 0xbafd8e34, 0x42b36dcb
.word 0x42f0524a, 0x512dce3a, 0xdf7b7b8b, 0x8ce768c6, 0x37d01c6f, 0x5c8cbd21, 0xdad20c9e, 0x55e2e33f
.word 0xd26f3f7b, 0x3a368adb, 0x14777415, 0xfa68662e, 0x9d522cf5, 0xee8696d6, 0x0cf161f3, 0x3df1f709
.word 0xcf3c805c, 0xba59e307, 0x6bdb5bc7, 0x28c6a64d, 0xac44585d, 0xbbe97e21, 0xda04db9b, 0x4de4f6d0
.word 0x63b46e88, 0xf8f4309e, 0xbb2f3f58, 0xd4ab4fcc, 0x71a621a0, 0x2c1d6593, 0x97a8f5c4, 0xa68c1440
.word 0x53a1a5e0, 0x563827b8, 0x6ec879ba, 0xc4658581, 0x390aa38c, 0x961588f1, 0x7dc51bf2, 0x276c12bf
.word 0x9004ef81, 0xa0723ba0, 0xd50fa914, 0x0c116951, 0xdf9a6683, 0x118fb0a5, 0xb958f9be, 0xbcd5351e
.word 0xbe113c96, 0x2f2a47fe, 0xbc05f6c9, 0x07643783, 0x1803ba92, 0x7834a5a3, 0x81fef4d8, 0x3a3666dd
.word 0x24dbec90, 0x266c563e, 0xa5bbd2e7, 0xb13a22fa, 0x5ea32702, 0x1b3a1119, 0x5bf3bbec, 0xf5d46b45
.word 0x7b3a5061, 0xbadc0d5d, 0x83d41d63, 0x4e40cdbb, 0x8ee674a1, 0x18e15e4b, 0xc7f64cbe, 0x4fb86595
.word 0x28cfc48c, 0x44f51e09, 0x0180e2dc, 0xfe7d4100, 0x8ef2904c, 0xce5aed47, 0x2e8d102a, 0x6b70364f
.word 0x3e2dcfd7, 0xc768c19d, 0xd715f1c6, 0x15a13324, 0xb375e1ca, 0x652753e0, 0x5bf71e47, 0x78d9c83d
.word 0x549f5229, 0x34f438fa, 0xfadd765a, 0x8af2da99, 0x6cfcd8f5, 0x75281e9e, 0x7e71bca9, 0x34a14c34
.word 0xcc644b9b, 0xcd2f0ee4, 0x8380b770, 0x2ad53ac3, 0xc08bac93, 0x6f766221, 0x4fcd0306, 0x82f8b0c8
.word 0x09de48b3, 0x102f1e8e, 0xbeaf615f, 0x8f1997e5, 0xccc952ef, 0x45dd22ac, 0x3b202e5a, 0x8481bc61
.word 0x280b5045, 0x10babc4f, 0x9dde823b, 0x00a1343a, 0xf16703cd, 0x934f98e6, 0xfc730c98, 0x9239a4a3
.word 0xd12dcf08, 0x78c4a57e, 0xa6fda4a0, 0xb3980b06, 0x1c0a056a, 0x5aed4c11, 0x26972fd2, 0xc0991a07
.word 0xfec8810e, 0x1abcc62d, 0x6e330ff5, 0xd5cb46b4, 0x6cf1d644, 0xe6cf95dd, 0x53048dcf, 0x9258c455
.word 0x8b75f7ad, 0x58e9dc76, 0x291754d9, 0xf4cc8cfc, 0xb119f252, 0x512784e5, 0x4e206575, 0x04d13f15
.word 0x4812da6a, 0x1bbfd9df, 0xa9f234cc, 0x42f96fe9, 0xb0704ba3, 0x29497c8f, 0xe2ec7cf3, 0x0c3027ca
.word 0xf8271cd8, 0x48afd6e9, 0x74e80ea5, 0x734c746e, 0x82530fee, 0xb6b2e485, 0x879295b1, 0xee83ccc9
.word 0xc8f4d6f7, 0xeeedf4bb, 0xbe86978c, 0x888f0fd2, 0xc2fa1e63, 0xd4665b3c, 0x41ad3777, 0x9896329e
.word 0xacd230b6, 0xa266cee2, 0x10fb4655, 0xe63b3a33, 0xc01a83e7, 0x8d1c3fe4, 0x452cfc07, 0x799fd2fc
.word 0xfa3c23d5, 0xc0254802, 0x070f624a, 0xa8c0120f, 0x4ec0b34c, 0xaff5a4a9, 0xd8e6d6bf, 0x3946025c
.word 0x878570aa, 0x281abd84, 0x0acddc60, 0xe1386b77, 0xfb3c187c, 0x82359ba6, 0xf7fb269e, 0x2814b4c0
.word 0xb2782437, 0xb44089b1, 0xb79e3796, 0x7940784c, 0xb3d611ec, 0x39327f68, 0x2d9de64f, 0x8604c131
.word 0x0c66d326, 0xe4039a20, 0xd5b051c1, 0xeb8226aa, 0x35695832, 0x76d959f2, 0x40a27c73, 0x37693332
.word 0xb11eb9de, 0x263d4f42, 0x55ea1da3, 0xb0a7e5b4, 0xf0f8054c, 0xf30533be, 0x35f7f414, 0x33ce41c1
.word 0x5d097ecf, 0x4a87cbda, 0xe98060f9, 0x30839834, 0x70c7b0e4, 0xeabe7483, 0xc2a8d764, 0x6b53da68
.word 0x2b32a416, 0x9c8c8959, 0x4b857e92, 0xde3b8c17, 0xe99f9425, 0x05f817dd, 0xf3ebefa3, 0x024b0ecc
.word 0xe1e7828c, 0xfe59fb53, 0xee1b88f6, 0x08431ca1, 0xbf0f7e25, 0xf3edc271, 0x8f93bc34, 0x9b4050cb
.word 0xc1835ab1, 0x50fa5a8a, 0xe65a5b2f, 0x36bf98ed, 0x51c51425, 0x74efb43d, 0xae694ba2, 0x36e41cf4
.word 0xbf00e087, 0x1af1c434, 0xa018cda4, 0x3833f7c9, 0x084d6f72, 0x3cf888f6, 0xd5d4a6c7, 0xd5d5536f
.word 0x66ee1362, 0xcfcb8bd7, 0x2d5ee8b2, 0x2bda1596, 0x81a5e9ca, 0xc95fd762, 0x5dfa80d6, 0x32d6812a
.word 0x885a9354, 0xdc72bbc6, 0x68371abc, 0xb58b01a0, 0xdd9db254, 0x43272c0a, 0x96f59fcb, 0x40888724
.word 0x6db0fde2, 0x7f4db673, 0xd263790b, 0x27f3b678, 0xb25edd37, 0x6bce1175, 0xb95c5aaf, 0x1c9dd760
.word 0x20228710, 0x4ec474ef, 0x932b5a0f, 0x695255af, 0x8d7ff54a, 0xd4ae3f86, 0xa84831e0, 0x6187588f
.word 0xe4d09f98, 0x87428ab9, 0x702bb7ea, 0x365abe98, 0x5e8df89e, 0xca0e4af7, 0xcab10cdd, 0x1db2b1d5
.word 0x5f5c1294, 0xefa28743, 0x37e08adb, 0xe47d868c, 0x31fa8838, 0xc4b29d9a, 0xca04587f, 0x36a07197
.word 0xc8416999, 0x5b3e2d49, 0x4b26420c, 0x8c7ed060, 0x617290a1, 0xed6a6679, 0x9d41a62c, 0x7f832729
.word 0x07574b50, 0x80bedf8a, 0x464c0c20, 0x792c3235, 0x10da0e49, 0xeb703357, 0x8a4b1979, 0x0ddb3112
.word 0xcaaa0797, 0xa10c37b2, 0x4a6e3f0b, 0x43bb187f, 0xf08ca0d6, 0xfa04d49f, 0xdef76c41, 0x39db948e
.word 0x17f27494, 0x7ce52deb, 0x0a81a8e0, 0x2ba8278f, 0x7d463afd, 0x8d9b4fb5, 0x64a17437, 0x1865ddf9
.word 0xe18cc504, 0x67c91d39, 0x9784c1f5, 0x0bef4c14, 0xa4aea18a, 0xdce231ea, 0xdcca7069, 0xc1982a1b
.word 0x2304a119, 0xc50438b3, 0x1738fb3e, 0xe4f6fc9e, 0xae2c4645, 0xa0fa6eb8, 0xca2eaef7, 0xe184bdda
.word 0xcce8142c, 0xde89f562, 0xd19d77ba, 0x4e80c489, 0xfb3aba24, 0x15be946f, 0x64c312cd, 0x351b2950
.word 0xaf3f7779, 0x698e1e74, 0xae60990e, 0x4f482df0, 0x49be1146, 0xd932e6b0, 0x1ee8246f, 0xb294b37a
.word 0xe8f3d450, 0xcdface63, 0xd90cac66, 0x41519a93, 0x378dc2d9, 0x3e37067a, 0x9fcabb95, 0x169851a2
.word 0xaec7c6b8, 0xf05e3f7d, 0xdd03db31, 0xa630b374, 0xa8e2a879, 0xaa3dde55, 0x5adc5073, 0x7cf9e555
.word 0x041a013e, 0xc8dfc39b, 0x1043c0a8, 0x18c3873f, 0x3542a739, 0xce97fcdf, 0x8019d112, 0xf4a6fca4
.word 0xa9bea60e, 0xde5b861f, 0x369a99bc, 0xb8258ce4, 0xacf32263, 0x69e0ecf7, 0x939020ef, 0x623ffd49
.word 0x0abc2668, 0x1d34a37a, 0xc7516820, 0xe822b24e, 0xd19f98ab, 0x7115fd24, 0xa325dee2, 0x4130377a
.word 0x3ea55319, 0x9496f760, 0xa791d06c, 0xec97c37a, 0x19abe3fc, 0x89e737d9, 0xf9b4dbfa, 0x57beb3ea
.word 0xa3c93288, 0xc952c336, 0x1d36297b, 0xc010dcf5, 0x5042a3a3, 0x3b5a39a2, 0xb542d6cc, 0x3f861951
.word 0x29a4553c, 0xfc2f39a9, 0x9b7e1e3f, 0x9ddd794c, 0xe251c7d2, 0x870c40a6, 0xf797c9f1, 0x5a2f7fa8
.word 0xc84a383f, 0x552d2923, 0x77d65c33, 0x3034d1d9, 0x5b764c76, 0xf58b48e2, 0x50c2b8ad, 0x59a6e66f
.word 0x7cf17db4, 0x0f2c59ec, 0xdedd7c0d, 0x19fe1dbe, 0xf1fafb58, 0x000f6651, 0x242b7b74, 0x47182cb1
.word 0x8a882132, 0x90705968, 0xeb3b10ce, 0x0c172b48, 0xefddec04, 0x58db0062, 0x71a8f380, 0x89899b81
.word 0x9b77a0a7, 0x080fea68, 0x09a38c25, 0xe5324412, 0xafec0cd5, 0xb5fb23d3, 0x82e0eb8b, 0x4ba314ae
.word 0xefdc67bb, 0x0ac8daa2, 0x75f1ef5c, 0xd5a7e4b8, 0x138ff6ef, 0x721e530d, 0x1b8c0abe, 0x32702309
.word 0xc06a3136, 0xa71a369b, 0x13984b7b, 0xfcbe0498, 0x6bdbd5b8, 0x8bf2bf87, 0xbfa067d7, 0x323b6191
.word 0xb50023e4, 0x0e7465c8, 0xfb647d67, 0x92ac32a3, 0x7420fd7f, 0xd5cbfd29, 0x3646554e, 0x61cf151a
.word 0x8c9f5879, 0xb9b64c99, 0x36593ff0, 0xea12140a, 0x5efe2084, 0x01095346, 0x8802ee97, 0x9799dffa
.word 0xf693e12b, 0x6f60b90c, 0xe75e388d, 0x27eea64e, 0x3dbc25cd, 0x7ef97df8, 0x91fe1bd8, 0xc25869ed
.word 0xc18ba2a7, 0x63764f0f, 0x9b9bd77f, 0x2ba02c36, 0xdb3da089, 0x4faad80c, 0xa78c7553, 0xf916f5cf
.word 0x5e826109, 0xe17f622c, 0xb4f065a2, 0xbe930e0b, 0x3c463483, 0x29b31472, 0x8f7db476, 0x2296c777
.word 0x739aba4f, 0xcf11a439, 0xd1471d0e, 0xc1626a0b, 0x6a7106fd, 0x676f5cd2, 0xb6c0254b, 0xd6d9c1ef
.word 0x083a3c4d, 0x31e12ac9, 0xc015cb3d, 0xaaeb6d81, 0x7d0c56ab, 0xa16dbb0f, 0x4874edc5, 0xde407158
.word 0x5cf9fa68, 0xc31361b6, 0x5ef82e61, 0x70fe6fd9, 0xa76cd9a1, 0x99ececd6, 0xee14f10f, 0x42bbac5e
.word 0xadc79888, 0xa274150f, 0x775aef2d, 0xa883f9af, 0x433d955c, 0x89123448, 0x6b2405ae, 0x6402608f
.word 0xf2b7a66d, 0xa3fd6383, 0x948b590d, 0x2e90e6ad, 0x3c7f195e, 0x1e937dc9, 0x139074e3, 0x0804309c
.word 0x4cafa17c, 0xb5235963, 0x89b83d6e, 0x06dde4ba, 0xe9eed523, 0x1cee6975, 0x15daae97, 0x5e8d5d29
.word 0x72c56a48, 0x1b8334be, 0xdb858e4c, 0x3c50b602, 0x211098a8, 0x61ee5a22, 0x19dac52f, 0x79c84de0
.word 0x6016df39, 0xdf09eb11, 0xb7c9c271, 0x7e659fc9, 0xb9f12e9b, 0x7d1620ed, 0x07968f13, 0x7e706f56
.word 0xcd43f4b7, 0x8a7575d3, 0x413b4649, 0x9c28b2d4, 0xad7834fb, 0xdf6e0e46, 0x79f12269, 0x266c37c3
.word 0x709eedcd, 0xdb9bd541, 0xe706708e, 0x7f4d40ef, 0xcb0866fe, 0x2feaeb7e, 0xcb1d873d, 0xa0588938
.word 0xcdb2603f, 0xcac22366, 0xf3f57f9c, 0x881b5d2b, 0x9de2dc75, 0x691fc396, 0x63c6432c, 0x6d1752d2
.word 0x415374aa, 0xc5e8296a, 0xfb62ddbd, 0x622b81e6, 0xb3083a7f, 0xe8efe678, 0x3d4a23d6, 0x065a33a9
.word 0xe9f04c4a, 0x3e488463, 0x60cee9b5, 0x26762cee, 0x70fd0100, 0xad33cc74, 0x783379bc, 0xc170009c
.word 0xc1d55ea3, 0x72e8d1c9, 0xd1413165, 0x1e4f209c, 0x3f5d0fa0, 0xa0f54f53, 0x868f21c1, 0x1bca0ffa
.word 0xf6654f6d, 0xdf5ac6b1, 0xde7fa79f, 0xcdb2e24d, 0x7d7461ed, 0x54108b1c, 0x145e9bea, 0x7befd86d
.word 0x640071ec, 0x3c2e370e, 0x48bc9ec3, 0x87f70c57, 0xcdbd3500, 0xfd3cd259, 0x95eda897, 0xb28394cc
.word 0x4e5a4c24, 0x46b1df9a, 0xf797f657, 0x42d7a04e, 0x74160076, 0x933379a2, 0x959c246d, 0xa5c5572d
.word 0xd3b3ed38, 0x12d9cdfa, 0x1d83d974, 0x88133de6, 0x6b511a4f, 0x877c4942, 0x5f20b682, 0x77caded4
.word 0x5e9963d3, 0x10ba1651, 0xdf941faa, 0x5f1aed1f, 0xec67d66b, 0xe9759a9a, 0xb8d54610, 0x624f8afa
.word 0x3991cfaf, 0xb0de73ca, 0xcaeeeba8, 0x2a0f5214, 0x31cde106, 0x59a3f163, 0x94174fd5, 0x67639649
.word 0x57c508a7, 0x749257a0, 0x49deecbd, 0x8fcdf907, 0xb1057b6d, 0xf04aea05, 0x5bafb947, 0x85d91807
.word 0x548814c5, 0x8f9ad063, 0x7c9d5aa0, 0xf926445b, 0xc8ef81fd, 0x09b946d8, 0x08840b84, 0x7e63a56a
.word 0x01d8a83c, 0xd08d33e9, 0x9c01f59a, 0xb070ed83, 0x219277a2, 0x7e9bd7a2, 0x1655d8b9, 0x3599b9a1
.word 0x80a962b5, 0x01567c9f, 0x8895e1be, 0xed286dc2, 0x31323ba3, 0x1c35e99c, 0xb88f9313, 0x6daf99b0
.word 0xbc1b69dd, 0xa5e535c6, 0x6bb2b987, 0x93ce4cdb, 0x9f02de14, 0x188f5526, 0x3e98f8b5, 0x73a7b0a1
.word 0x14629820, 0xfea2d574, 0x48c53ff5, 0x4e92e9d3, 0x9513c115, 0x0d2f41de, 0xef64aaee, 0xf5d8fb43
.word 0xc701e6d2, 0xdcf64250, 0x089ddb23, 0x8e103b1f, 0x626af1fe, 0xa96fcde5, 0x4b262af0, 0xdf6cc323
.word 0xa9585fc2, 0x3a6b588d, 0xbe12156a, 0x3b59e57f, 0xdb3fb822, 0x36e5f3a5, 0x88bb0112, 0x4c4eda3f
.word 0xa6b45f1c, 0x91c14a06, 0x893546c8, 0xf6c5a149, 0x7d554a94, 0xe13e60eb, 0x392c335a, 0xf17afbc0
.word 0x4ceeebba, 0xf749a03f, 0x76e140cd, 0x6d5f9825, 0x4413f7b1, 0xfd9a3d17, 0xdf98d288, 0x4a3be540
.word 0x732c8d82, 0x3766bf1c, 0x0a24a0d5, 0xf28f9ea3, 0xba7afe56, 0x7cd5c5e7, 0x3eb1b32f, 0x52ccd9d9
.word 0x5e0357ad, 0x0b723066, 0xcc0590c4, 0xfc80f9f4, 0x2fc35b4c, 0xadcb157e, 0xaababe76, 0x01a769ac
.word 0x7a46de12, 0x38d203c9, 0x99275a29, 0x8e199bb3, 0xdff8da28, 0x00eee2fe, 0x8a0c17c9, 0xe4c17f53
.word 0xd072e501, 0x22c480db, 0xa22239b7, 0x6a97b8b1, 0xc5c51c18, 0xe9861d89, 0x93c6165f, 0x1334366e
.word 0xb4eb1138, 0xb5aaf43a, 0x5b508a9b, 0xb40ff6c3, 0x092e0891, 0xd79d25fc, 0x267a5df9, 0xdcbce89b
.word 0x2668de60, 0x5ec40332, 0x79813d6b, 0x49f00772, 0x9099a6f5, 0x192466de, 0xbc77bad2, 0xc1cfaa5c
.word 0xec256a93, 0xb510084c, 0x9390da10, 0x39e00f58, 0x389eb86f, 0x2d92f532, 0x125078fe, 0xfe6e3901
.word 0x5ea1f2c2, 0xf64c51df, 0xfa68fb6c, 0x7b3b97b0, 0x687a7881, 0x2c144734, 0xd92b98ac, 0x8076eeba
.word 0xb3efb544, 0xaa53d374, 0xe00fdaaf, 0x34d4d3ba, 0x5cfed9b9, 0xe0c9440e, 0xf044e2f6, 0x54d57315
.word 0x8ea66031, 0xee084bc5, 0x49142346, 0x10331d1a, 0x3643f53a, 0x4d235e86, 0x51908f68, 0xa1237b72
.word 0x26ba3b99, 0xe982ebc9, 0x92c6991c, 0xc289901c, 0x52e934c9, 0x703b86ec, 0x0985a340, 0xcdb8b11b
.word 0x532d0c24, 0x439664ce, 0x94a0a0c3, 0x1af2e8b7, 0x2bdff823, 0x6479b408, 0xafd39d1e, 0x5f642c8f
.section .region_1,"aw",@progbits;
region_1:
.word 0xfe4e7b85, 0x4a819963, 0x0124ddee, 0x8a403b7e, 0xd05e2054, 0xef8d1af2, 0xa91737a7, 0x53b8dfcc
.word 0x51c58289, 0xc38158cd, 0x5cd2b89b, 0x6f3136cf, 0x4e3fcb76, 0x9e8d6fe7, 0x697a7ad7, 0x97b2d8cb
.word 0xda2ad30c, 0xabfcb7f3, 0xad51b742, 0xd809217d, 0x1bcb8007, 0x93f6a806, 0xb48888c5, 0x97f4c254
.word 0xe5d38566, 0x48c90a4a, 0x2600276c, 0xcf41b92c, 0xd4f1a263, 0x123c3f1e, 0x65b3cea4, 0x6f53b71b
.word 0xd987e45e, 0x81af5677, 0x6eadf9f9, 0xab049455, 0x50bbb31d, 0xae685fad, 0x3b8316ae, 0xad360558
.word 0xe55ea2a8, 0x5adfd9af, 0x06f7e6b2, 0xde0b502b, 0x470d32cf, 0x062b2bd3, 0x332a0391, 0x5254c5b3
.word 0xeb6cbad5, 0x8d191c49, 0x3269fef2, 0xd7af17fc, 0xaa14b29e, 0xf333385c, 0xba18afd4, 0xaaf69f94
.word 0x61387057, 0xb5e64535, 0x84f62a3b, 0x0c909725, 0x9765d620, 0xec7492c9, 0x2b1b4065, 0x4f708ace
.word 0x6cc3e232, 0xa0b40532, 0x602b2bd0, 0x171917d3, 0x7d9d98c2, 0x4867d4f2, 0x4689216d, 0x64fd65b8
.word 0xe755ad2b, 0x1baacbde, 0x267b0a88, 0x6ad12131, 0x1cfb783e, 0x685f0322, 0x30e73d74, 0x353f5d7c
.word 0xebd469f8, 0x42956309, 0xd1ebaea8, 0xbea2984b, 0xc98461b9, 0x68758a95, 0xa8c28742, 0x38c9b4db
.word 0x332dc075, 0x56bab8c3, 0x95e56a76, 0x2ff20ed2, 0xf718844a, 0xab5c7f1b, 0x81376a30, 0x24cedadb
.word 0x3f6adc2b, 0xcb655347, 0x3cebb587, 0x904bb62e, 0xa7af8327, 0x5cf1803f, 0x6e9f1d75, 0x3169f281
.word 0x437ba81c, 0x4fdaee42, 0x0f2aeb7b, 0xd2233ee4, 0xc599e152, 0xf01dedc1, 0x32034949, 0x8151939c
.word 0x32445839, 0x2c1b213c, 0xfea5b63e, 0xc0b3a2c9, 0xdf6df05f, 0x2d172c12, 0x52d688a7, 0xd9ee19f3
.word 0x94d97215, 0x025e4d99, 0x60d82444, 0xf04da28c, 0xa99b8a90, 0xfa9c2836, 0xe4c513eb, 0x451ed0e5
.word 0xe9a98792, 0xe4c538a5, 0x6f4309bf, 0x433852ef, 0xcda4dd0f, 0x9db754d8, 0x13695d24, 0x6151c482
.word 0x396e7049, 0x9867cc79, 0xef5fee1a, 0x6ec68905, 0x94c29684, 0x460017d7, 0x08f7b5db, 0x61014f43
.word 0x95b8826f, 0x6c60c399, 0xd44801bc, 0x537bfd96, 0x62fb152f, 0x7ce44e10, 0xf5086518, 0x39681079
.word 0xb71ae812, 0xa65fa768, 0x33a24471, 0xab3c1ac3, 0x40d29d5c, 0x181f26e6, 0xecbd2b5b, 0xa80a6f01
.word 0xdb4a3cb1, 0x3e769027, 0x7cfd8689, 0x68284e2b, 0xda8a9b91, 0x68a0d379, 0x6423c204, 0x478165bb
.word 0x6b490263, 0x00c273a0, 0xfdb84f60, 0xf0a12044, 0xd33a4db0, 0x9c12d977, 0x16b37752, 0x8cde5567
.word 0x6f2e01b2, 0x049823d6, 0x00fc6fb1, 0xc32477f5, 0xd7a17c6a, 0x982a2bbb, 0xb259599f, 0x2fcd6db7
.word 0xafbf749f, 0xb34770b4, 0x482b1998, 0x99aa9071, 0x89ac0dcc, 0x171a2b5d, 0x29e036c9, 0x3870c4ed
.word 0xb15a3d45, 0xdedf1841, 0xbe5b5c47, 0x6f1e41d3, 0x54177f13, 0x237eb800, 0x0ef3c3b2, 0xbf646046
.word 0x12e4f06f, 0xd9e4e7db, 0xfa42b03e, 0xd7ddc073, 0x87dc3526, 0x25901625, 0x6cd1eb50, 0x7b9cf326
.word 0x69537fcd, 0x37898afe, 0x03ed2fe4, 0xcdf607e1, 0xce4a2500, 0xa2a9af8d, 0x9a9fe49c, 0x8d36b71e
.word 0xce7524e6, 0x863a40c2, 0xe84e804b, 0x04519d0e, 0xc401ea3c, 0x412269c6, 0x3b10ddd2, 0xb156f9f7
.word 0x60c87737, 0xd572fcf6, 0x3cc14b0c, 0xb30a0bae, 0x3969e8a1, 0x2ad899ae, 0xce92895f, 0x8ebb076b
.word 0x5ff315c3, 0x8f11354a, 0x04b855d2, 0x61dd4123, 0xf32d6b9e, 0x1e8f1816, 0xc69118b7, 0xfe4f65a2
.word 0x99b9e077, 0x4553944f, 0x5f7d21a4, 0xcebdf364, 0xc92857db, 0x2cfe1d35, 0x2ca60231, 0xe8938703
.word 0x45499923, 0xcf33cade, 0x731acd69, 0x444de4c8, 0x5bdbb231, 0x095c123c, 0xaf4c3701, 0x9a7fb33c
.word 0x1073caab, 0x1ca43554, 0xce6d425a, 0x78f5d9d5, 0x88c84821, 0x6f3161fb, 0xf55992e5, 0xb11680af
.word 0xd49ca000, 0x3909e50e, 0x374baed4, 0x60388980, 0x7162ae66, 0x2e732ada, 0x322df879, 0xf0c75c06
.word 0xc089dabb, 0xd9e9303b, 0xea3741cf, 0x65c09b35, 0xd5124b93, 0xe94b2a03, 0xe00508bd, 0x41bd4887
.word 0x9fdf1bbf, 0x02f94dc6, 0x22e725d8, 0x4dc9127c, 0x10befeb2, 0xbc11ea25, 0xefe8ca6b, 0x2fcc5d91
.word 0x5fa970a7, 0xa3c6531c, 0x445ef422, 0x3823b4fa, 0x2c429d17, 0x38467b86, 0x8c336790, 0xc0acbcb1
.word 0x5ad17b98, 0x59aa69a3, 0x51f338b3, 0x74f96b3e, 0x18b7e53f, 0x71cdd4d0, 0xf876b56c, 0xcb5e365d
.word 0x29762e77, 0x7291ab31, 0x95435d6a, 0x1326a7c9, 0xd40a780b, 0xead3cfe6, 0x9feaf256, 0xee8e7eb2
.word 0x9862c118, 0x4b5964b4, 0x4a5ca1ee, 0x2917ccee, 0x4c318c66, 0xece70abf, 0x4c1d77a1, 0x788b6cc2
.word 0xcc3f189d, 0x810215dd, 0xe534f9aa, 0x53c2f53d, 0x1bb59cf7, 0xf1c6e62f, 0x038714b6, 0xdd9ccb31
.word 0x89f18621, 0x05d01ffb, 0xcb3da46c, 0xeef34e78, 0xcf7a76c8, 0x4a2391e7, 0x74fbd431, 0x1e636fc4
.word 0xa3d74b82, 0x8c1e515f, 0xfaf5fcb4, 0xbb353bc0, 0x7100f208, 0x42a5e8fa, 0x12a5dd99, 0xf81c5648
.word 0x6491b168, 0x518d13f2, 0x34ac5710, 0x8fe41398, 0xd5e64001, 0xcd8ad0aa, 0x4d2bd09d, 0xb54367ab
.word 0xc3a7e4d4, 0x4f663bc1, 0x249d31d5, 0x81df0a59, 0xc6107dbc, 0x52e669b2, 0x2d698e8f, 0x3a736d9c
.word 0x173c0f4e, 0xaa5c73da, 0x3779dc96, 0x3c052788, 0x9f54f796, 0xf1a13dda, 0x90e9eb6f, 0xf78c0c68
.word 0x5d6fe18d, 0x7da7c8ac, 0x848c22ee, 0x2c604740, 0x0fc38c1a, 0xf696fe13, 0xad599d1d, 0x192de709
.word 0x2d06a368, 0x146bc685, 0x4f05f22b, 0x711db7a4, 0x184db910, 0x87331a89, 0xa16be785, 0x852b97c3
.word 0x28ad3610, 0x22fea025, 0x11495c71, 0xc00fa6a8, 0x73776f38, 0xf1d85138, 0x246c2a77, 0x3624e551
.word 0x31753099, 0xc1c3fd69, 0x688c14cd, 0xe29faa1a, 0x13fa817c, 0x74ee3297, 0xc7eb443a, 0x39689466
.word 0x60458cf9, 0xbe569088, 0xe8bca18f, 0x7adb894b, 0xcebabbc6, 0xebee46aa, 0x41fadc58, 0x9a6a1699
.word 0x525494f7, 0xfecfae99, 0xc407301a, 0xe783a61a, 0xafd5748d, 0xe2e20f7b, 0xef7b6615, 0xc6769c34
.word 0x245d2b0d, 0x27c7d1e2, 0x5927c86e, 0xaec5cbbe, 0x1d75bb06, 0xa060a0dd, 0x534e0b24, 0x07a96335
.word 0x4775c513, 0x883c74ad, 0xb047ab80, 0xafc175c9, 0xee3af536, 0x407494c5, 0x254c37f6, 0xd0b9e985
.word 0x41618bcb, 0x6d5d9781, 0xf74e123c, 0x4b454555, 0x5ae8de2a, 0x3c4e5c71, 0x913a3612, 0x52467bdd
.word 0x584a28ce, 0x31a9c533, 0xf4f0724d, 0x1204704c, 0x105271d1, 0xb38429d7, 0xd0012f69, 0x51d22ac6
.word 0xbf32bb62, 0x2b7877bf, 0x764e8536, 0xe5070650, 0xe3ac3624, 0x86c263cb, 0xdd36e6f6, 0xd01b88e6
.word 0xa033ab97, 0xdef71bfc, 0xf1daaebc, 0x85c988a1, 0x9223a12e, 0x250f77d7, 0x960459ce, 0x07ea292c
.word 0x5ca49664, 0x2f6249fa, 0xad2c047d, 0xce016f36, 0x87198dd4, 0x5964e235, 0x8c5c10e3, 0x05313b06
.word 0x0192ed64, 0x5c8ff8ab, 0xc5c2a1bb, 0xc1d98cc4, 0xa9bafb73, 0x2d8121f1, 0xd5b511fb, 0xd7d36a95
.word 0xa9f8ad50, 0xaf9d4a01, 0x85b5d6e2, 0xbb648fc2, 0xd5bbb876, 0x40d59e2e, 0x30980246, 0xe5f2cf5e
.word 0x3f816bb4, 0x6e6f3e7c, 0x78a1db32, 0xb1b89aa9, 0x739b58b2, 0x027daf9e, 0x383f3da4, 0xa20f4150
.word 0x7e08572e, 0x9be18724, 0x22e26b6c, 0xc89da6f4, 0xa7f1d4d9, 0x847aa464, 0xa29c0f2b, 0x7d9dead4
.word 0x33c84a4b, 0x7c555820, 0xb8827b12, 0x352b8653, 0x8725db56, 0x3c66c077, 0xa11d399e, 0x00032e32
.word 0x6e31cdca, 0x5b968966, 0xf3da6792, 0xf9974b3d, 0x0e6aa2b5, 0xdb42b054, 0xd6584ca7, 0x43865243
.word 0x6976e5ce, 0x0e1a40dd, 0x3c8f3716, 0xa520cbfe, 0xe28b5f26, 0xe18991a2, 0xd9253b8e, 0x002efc0e
.word 0xbc3f8d8a, 0x4560cf12, 0x43c263da, 0x6a3c74c0, 0xba0a4542, 0x084875c6, 0xd9300ae5, 0xc0972988
.word 0x0850bfeb, 0xdead7e09, 0x59246f4a, 0xe731a58b, 0x0b4e33a8, 0x33bfce62, 0xb5626130, 0xdaa8f189
.word 0x3f0c0574, 0x89399b93, 0x4503bc37, 0xee1ae8b7, 0x7a42ebb3, 0x35d8cd8b, 0x2f59bda2, 0xa95ef0c8
.word 0xd650b40b, 0xb2d87b29, 0xc07f143e, 0x19864d9b, 0x8f5e7c5d, 0x8bf64346, 0xd7431676, 0xaf3f9ded
.word 0x531a3bb4, 0x5019c7b7, 0xccf70e25, 0x8be02cc8, 0x0b09cf3e, 0xa0b984cc, 0xc5540ebf, 0xc8851965
.word 0x92bb18a1, 0x63af4a03, 0xa5a5ce1f, 0x9b67efce, 0x20c1db33, 0x95c1c30a, 0xd511b13f, 0x5cac877a
.word 0x68ac10a4, 0xb74cbb98, 0x637aa5f7, 0x92000fd0, 0xc0ce44e4, 0x38112bf6, 0xd62ffcec, 0x4c7db61e
.word 0xedcb73b3, 0x7e29447e, 0x035ffcfc, 0x51a7e58b, 0x3377743d, 0x6ca11c04, 0x5f7f5602, 0xfc3d3c96
.word 0x2fd2033e, 0x387890b1, 0x85b1dddb, 0xd3eb7b3a, 0x968fe4df, 0xcd751e02, 0x87b501f5, 0x2bcfdc30
.word 0x3a1f833e, 0x8940b65c, 0x78ae4012, 0xb8dbeb04, 0xec77aedc, 0x826a3441, 0xf18dbf16, 0xc434b856
.word 0x663bb95b, 0x260700f9, 0x7ccefb08, 0xc98517f7, 0x8a887891, 0x2fb2abb1, 0xb59108c0, 0x74fe60b7
.word 0xbafeaa4a, 0x34d00cba, 0x707372e6, 0x86a237d5, 0xe6f35ff7, 0x8ea9fb93, 0x2a8ec366, 0x79a658d3
.word 0x849b1219, 0x3601ac15, 0x811b06fb, 0xfedca8b1, 0x031c696e, 0xbc5b7378, 0x7ba66f30, 0xf928f88e
.word 0x4bc133c9, 0x7f186149, 0xc80059d8, 0xba4090f6, 0xacfc0409, 0xa68069f2, 0xb9c9fc31, 0x0d7d2cea
.word 0xb718d6e5, 0xc270eaf0, 0xc5538832, 0x3c8b9ef0, 0x4f3a426d, 0x40257bc0, 0xc4a85841, 0xe79e0321
.word 0x0073432e, 0xa0633a14, 0xe99b89d9, 0x2b572289, 0x7f1e8442, 0x10ceb241, 0x0668eff9, 0x02e53b8c
.word 0x2fd16222, 0x0f6f6dad, 0xa4a70e4a, 0x6e661612, 0x597596ca, 0x74561ba9, 0x125f8546, 0x2734e8b4
.word 0x6a77748e, 0xb2bfc390, 0x82128eed, 0x1370c725, 0x43e83439, 0x984a11dc, 0xe91e75ce, 0x4f7173e6
.word 0x4380bdaf, 0xde960d47, 0xd13ed8ca, 0x984b108e, 0x6c623c01, 0x348425b6, 0x89afd24d, 0x499b7855
.word 0x81b49307, 0x8d7e2573, 0xd92d438f, 0x5e4908ef, 0xcf078440, 0x4db91908, 0x0b6faca6, 0x47308a27
.word 0xa8c08c7c, 0xf25a6bf4, 0x98d999e7, 0xb51f6a3d, 0x1df4591e, 0xb31d94ad, 0x39939b46, 0xa3e3bfd8
.word 0xc2a7d716, 0xda0ce049, 0xdcd4393d, 0x349887ae, 0x9ccdcf6a, 0xda195af5, 0x80b2096f, 0xc29961d5
.word 0x145e26da, 0x339f9762, 0x3f14947c, 0x76beb6a0, 0x96ab03e3, 0xdfd84560, 0x76164b87, 0xe75ab7af
.word 0x71972e8d, 0xdd285d2a, 0x5897e3fc, 0x77822053, 0xd831010f, 0x5b55c8df, 0x9a3c1ac4, 0x08280deb
.word 0x4b323df5, 0x822371ef, 0x9ade8585, 0x646ebee3, 0xf0f1a633, 0x63784419, 0xb90dddd0, 0x427d6196
.word 0x67f4e4ec, 0x4456d57e, 0x4e75b92b, 0x266f3b7f, 0xa96f867a, 0xda6ae295, 0xd4a9b5b0, 0x9f59b0b1
.word 0xa56a8162, 0x15599909, 0xafb8df43, 0x054e58f3, 0xcdfa16c2, 0x082607ef, 0x56dff6e0, 0xee1f5938
.word 0x276d940d, 0x1bdb6734, 0xa94f34c2, 0x0ef39f61, 0xfd1b407a, 0x4b5c3e69, 0x544bcaf8, 0x7408f8b5
.word 0xcadb6b72, 0xe209f1e2, 0x6d78c2cd, 0x96498dd5, 0x118fc062, 0x5f77cafc, 0x525bf135, 0x4512f194
.word 0x55e5dcad, 0x67b1d235, 0xd25143e4, 0x50c8c5b5, 0x39258f05, 0xacd37132, 0xc538e789, 0xe5d372b1
.word 0xf102ed1c, 0xab605a37, 0x0ca94fef, 0x6a615c16, 0x8f92a8ba, 0x8da90115, 0x8b880622, 0xf59d2f4c
.word 0xdb38b22a, 0x1432efc2, 0xed3b6a4b, 0x045a8be7, 0x57c386c9, 0x11108797, 0x090cf2c1, 0x20addafb
.word 0xdbf91f94, 0x24835aae, 0xb0647528, 0xe6853a63, 0xcb6dbc52, 0x38401da7, 0x1694c6b7, 0x374db985
.word 0x69be23b9, 0x60abe122, 0x9f70b308, 0xc1ef4e7a, 0x78ef53c7, 0x6eedcaa7, 0xb2cd5e23, 0x4ad24d43
.word 0xe94e738d, 0x9dc3dc0e, 0x5156ad65, 0x9d930faa, 0xb731cdef, 0xde3106af, 0xb4b77c38, 0x8bb1e576
.word 0x1f2016cc, 0xa8d7b6bf, 0xb60e1656, 0xedf84a9b, 0xc0f96922, 0xb7ad3216, 0x47513d3f, 0x89ad2dec
.word 0x7e35200f, 0xae5efbb2, 0x965653e3, 0xb637767d, 0x957bb6bf, 0x5cb91b8a, 0xb9e60868, 0xe3044f38
.word 0xfebae9cc, 0x751c468c, 0x42c3a98f, 0x6ca41c18, 0xf2595f14, 0xacc8ec35, 0x0ee2d6d7, 0x0a66e79d
.word 0xe3b8ce16, 0x052154b6, 0x134859f1, 0x051db336, 0x433bc805, 0xd65f0b67, 0xb4f5630f, 0x50b32b56
.word 0x841f73e9, 0xf34e96f3, 0x98def3ac, 0x16575af6, 0x6d0b0ed7, 0xfeec1a70, 0x258276a7, 0x9cc4118d
.word 0xddb4b9a8, 0x1c55d045, 0xdcb0a6d8, 0x80d785f2, 0x7bb125e2, 0xfd35bf7c, 0x3cf7e634, 0x0f46e268
.word 0x337093d4, 0x21ebaf6f, 0x61bf0d02, 0x2e70c534, 0x1fec25cd, 0x3d25525e, 0xbbbbd9b0, 0x8281aeb0
.word 0xdc25cb7f, 0xd72131af, 0x33b1edb4, 0x15ac93bc, 0x35eba789, 0x06b66b6d, 0x3bbbe40a, 0x7ab3aab6
.word 0x9d87ba35, 0xfbc8fbbb, 0x7f52153e, 0xfa4019c5, 0xf2959109, 0x032f4de8, 0x910bd3a9, 0x0b2b7c40
.word 0xa85147d0, 0x4dc251f1, 0xc2957d24, 0xf145e8f2, 0x1dc59b72, 0x9dc3aaad, 0x22480b08, 0x1ade82ad
.word 0x437acfa1, 0x71d993aa, 0xb6115eae, 0xa400cd17, 0xc863d965, 0x4750664e, 0xb302d169, 0x0039a442
.word 0x2d4c9964, 0xc9ad36e0, 0xa9935866, 0x35e6aee5, 0x43b12eaf, 0x135a651e, 0x64e8f475, 0x4e97c3ad
.word 0xbcb7fb6c, 0x7214401b, 0xd82a52a0, 0x45af3294, 0xdb3af891, 0xd4386576, 0x563d6009, 0xda4153d9
.word 0xfb0e342c, 0x7403ed96, 0xfb290eb6, 0xd422fa3a, 0x5e48e177, 0x77c84109, 0x7c475b6a, 0x4d6aabc1
.word 0x16b19d67, 0xa3f70fcf, 0xf662efe4, 0xa9e3ebaa, 0xe2602649, 0xfa4612e8, 0xc6fbe1e6, 0xb9e6e74a
.word 0x2d10b8c6, 0x4c4bdaf8, 0x3e366670, 0x3217eb27, 0xea20fd8c, 0xf7bd6500, 0xa34fb85d, 0x9756b752
.word 0x410a9f5b, 0x051a3978, 0xbf64a94c, 0xfebd91ed, 0x47a4d9be, 0x0153baea, 0xfdfac83f, 0x63a098ed
.word 0x37453c43, 0x0550ced0, 0x40a4d816, 0xd08de763, 0x68b47d90, 0x3dc7f450, 0x0e42855f, 0xbe567afa
.word 0x2db27f50, 0xde0d25d0, 0x761d4f72, 0x3bf3ce62, 0x5517eec7, 0x57245bdc, 0x67e016a0, 0x23d4c629
.word 0xa28e0f1e, 0x10aaa1c9, 0xfd9f2584, 0xcaabd06a, 0xc05c93e8, 0xa55b5ef7, 0xe33203f6, 0xb21d7aae
.word 0xd541e6d1, 0xb55867f1, 0xf542deb4, 0xce14361b, 0xcbec3160, 0x703739f5, 0x05f6c627, 0xf3173893
.word 0x610f9e49, 0x83d81086, 0xfbd2a9ef, 0xb250a9c2, 0x07612a82, 0xc8c03044, 0x838b6d17, 0xf5b35b8e
.word 0x1687e3c3, 0x85071a0d, 0xbcb7d678, 0x2d178c80, 0x56ca863f, 0x38d2292d, 0x943a2dd0, 0xa358c139
.word 0xccc863b3, 0x113ae6cb, 0xbecdb099, 0x19d4cf11, 0xb9558196, 0x569b35ed, 0x6e7d5920, 0xded695af
.word 0x543adc9e, 0x7af8e8d6, 0xd6a90a43, 0xee615404, 0x9a439eae, 0x7149381d, 0x0769c571, 0xf7ccf359
.word 0xd0839cea, 0xb6c678d3, 0xc8f818d0, 0xf340e974, 0x65661d2c, 0x9f37d969, 0xb46cdc97, 0x2a3cbe55
.word 0xb7b2ae48, 0x3bc550e8, 0x61407e9d, 0x2ec41c58, 0x09af92b0, 0x6a547d18, 0xcccb55d5, 0xca7cbcd6
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
mmode_intr_vector_1:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

.align 4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x18, 0xb # ECALL_MMODE
                  beq x29, x18, ecall_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x22, write_tohost
                  jalr x0, x22, 0

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  lw x1, 4(x30)
                  lw x2, 8(x30)
                  lw x3, 12(x30)
                  lw x4, 16(x30)
                  lw x5, 20(x30)
                  lw x6, 24(x30)
                  lw x7, 28(x30)
                  lw x8, 32(x30)
                  lw x9, 36(x30)
                  lw x10, 40(x30)
                  lw x11, 44(x30)
                  lw x12, 48(x30)
                  lw x13, 52(x30)
                  lw x14, 56(x30)
                  lw x15, 60(x30)
                  lw x16, 64(x30)
                  lw x17, 68(x30)
                  lw x18, 72(x30)
                  lw x19, 76(x30)
                  lw x20, 80(x30)
                  lw x21, 84(x30)
                  lw x22, 88(x30)
                  lw x23, 92(x30)
                  lw x24, 96(x30)
                  lw x25, 100(x30)
                  lw x26, 104(x30)
                  lw x27, 108(x30)
                  lw x28, 112(x30)
                  lw x29, 116(x30)
                  lw x30, 120(x30)
                  lw x31, 124(x30)
                  addi x30, x30, 124
                  add x31, x30, zero
                  csrrw x30, 0x340, x30
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  lw x1, 4(x30)
                  lw x2, 8(x30)
                  lw x3, 12(x30)
                  lw x4, 16(x30)
                  lw x5, 20(x30)
                  lw x6, 24(x30)
                  lw x7, 28(x30)
                  lw x8, 32(x30)
                  lw x9, 36(x30)
                  lw x10, 40(x30)
                  lw x11, 44(x30)
                  lw x12, 48(x30)
                  lw x13, 52(x30)
                  lw x14, 56(x30)
                  lw x15, 60(x30)
                  lw x16, 64(x30)
                  lw x17, 68(x30)
                  lw x18, 72(x30)
                  lw x19, 76(x30)
                  lw x20, 80(x30)
                  lw x21, 84(x30)
                  lw x22, 88(x30)
                  lw x23, 92(x30)
                  lw x24, 96(x30)
                  lw x25, 100(x30)
                  lw x26, 104(x30)
                  lw x27, 108(x30)
                  lw x28, 112(x30)
                  lw x29, 116(x30)
                  lw x30, 120(x30)
                  lw x31, 124(x30)
                  addi x30, x30, 124
                  add x31, x30, zero
                  csrrw x30, 0x340, x30
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .s_region_0,"aw",@progbits;
s_region_0:
.word 0x710dca0d, 0x8789baa4, 0x650767c7, 0xeec39925, 0xf5d6c43a, 0x39a2670a, 0xee98b2c2, 0x9c3fe5b9
.word 0xf2966e90, 0xbea3e70e, 0x466a99eb, 0xcb8270af, 0xe4a87e0d, 0xe597d6dd, 0x9b429110, 0x374caa3e
.word 0xe2b8dfb2, 0xbbf33d17, 0x6838a798, 0x3472a729, 0xa070950a, 0x6bb4c4ae, 0xf3900621, 0xd45db394
.word 0xa5b64984, 0xbd23b4c1, 0x0f39dc56, 0x7a88df26, 0xb60e860b, 0x1eea759f, 0xba382a69, 0x84d6254a
.word 0xd01c2794, 0x3984907c, 0x4433afed, 0x353509ec, 0x1d58032c, 0xf2d42bf7, 0xe92f98cc, 0xa820f9ce
.word 0xa0f69c32, 0x6399e660, 0xfaf8f29a, 0xe267e301, 0x7ab745e9, 0x37f38f88, 0x33648270, 0xea0e3a19
.word 0x08e6a933, 0xe0f294ef, 0xbcbc6683, 0xcde54d5d, 0xd1c2bdd6, 0xe162584e, 0x1525cb5f, 0x102c5641
.word 0x81196adc, 0xed8f8532, 0xc062ebc7, 0x173b317b, 0xde507259, 0xd10a993d, 0xfc988d23, 0x2d5c888c
.word 0x7c1964d0, 0xe9b5a9ba, 0x59ee91e4, 0x26cfbf57, 0x382e8f4b, 0xcb90217f, 0x7c44f38a, 0x4fdb0618
.word 0x08a36aa6, 0xe4625867, 0xce17fda5, 0x8341426f, 0x8e1f78c2, 0x0bed5b86, 0xe00722e2, 0xe701ef15
.word 0x70bf7655, 0x0e67ed12, 0xe08156a1, 0x611487ad, 0xdacc80ca, 0x7a13e0e7, 0x6b76e358, 0x0e2f252d
.word 0x013a8e07, 0xaea6f088, 0xdbf3bec6, 0x99277948, 0xfc518280, 0x180d7114, 0xdafcc56f, 0x6f7d4a9d
.word 0x210cad95, 0xf7f1cc1c, 0x7cc257df, 0x6681ed9a, 0x308c0561, 0x01fb3897, 0xbf0d01dc, 0x0081a2e5
.word 0x90d4b0a0, 0x015680bd, 0xec8aa634, 0x40af1275, 0x07246c06, 0x5d6440ea, 0xf9dc7b4c, 0xc358c7c6
.word 0x326bd4ee, 0xc7e6c4b4, 0xcf0dcbe8, 0x51b1f819, 0x6bfd6aec, 0x8aa536e3, 0xe8d8ec27, 0x0e4861e1
.word 0x6167e2d4, 0x6769d665, 0x33c8a508, 0xc4a4d2f0, 0xce3462b9, 0x4fb4b1f4, 0xd012bbe3, 0x5e8f43d6
.word 0x38788b82, 0xd6283a21, 0xc6219baa, 0xfe835013, 0x55126fac, 0xb2ecad3d, 0xa5a70267, 0xb9778b24
.word 0xab04d53f, 0x30408c51, 0xd67221a5, 0x390c73ac, 0x743d170d, 0xea196c2a, 0x9a652ef7, 0x728a4f56
.word 0xe92d86bb, 0x396f1271, 0x3463aef9, 0x2cce14a5, 0x6380c88e, 0xca4d8dd3, 0x4565adf8, 0x53fd7f99
.word 0x48e14bb0, 0x9c9538f3, 0x3ceaaf3b, 0xf6b6492c, 0x6ae409d9, 0xef7b1431, 0x55919b36, 0x4094e9ad
.word 0x1606d2fe, 0x657b1257, 0xac4f9bfa, 0xc5363a13, 0x1f1003b1, 0xe70d1b19, 0x204a584a, 0x02b436c9
.word 0x66b68351, 0xcb6cdc95, 0x4ac59fc5, 0xefd629d6, 0x24f47c93, 0xb3184a36, 0x5f486a86, 0x9adf72d0
.word 0x21445009, 0x3b123e3a, 0x967f1e63, 0xf2bf9cb5, 0x5dd47fdc, 0x71789c1a, 0x0ca34dfc, 0x8583ee4f
.word 0xfe7633d8, 0x4616cad6, 0x4298094f, 0x80144692, 0x13fb7830, 0x7f661a9e, 0x2a6645a6, 0xf3b2645e
.word 0x60da9108, 0x3983d96f, 0xbedb10db, 0x69532b90, 0xec96a3e7, 0x7a63dce8, 0x468fb5fc, 0x812e9619
.word 0x0e9d5215, 0xc9e59a9d, 0x00837330, 0xda187d7a, 0xdcb4c1e4, 0xf4d1a885, 0x7ed40e5c, 0x260415f2
.word 0x831ad074, 0xe8b2c18f, 0xcb115874, 0xa84fcf85, 0x42fae567, 0x71a8a50d, 0x9376e0aa, 0x80ba53a4
.word 0x7e984a28, 0x06d4e15b, 0x08a25ccd, 0x8572bb00, 0x66f50471, 0x28117907, 0xea0c59a4, 0x0a6152bb
.word 0xa895db5c, 0xd49cd0bf, 0xb609db8d, 0x19d5ceb7, 0xc867d1b2, 0xbd800c09, 0x6551f955, 0x52281120
.word 0x32730439, 0x38ec02ca, 0x98135c32, 0xb134a857, 0x625449fe, 0xb331f54e, 0xc758bcd1, 0xad2d1492
.word 0xcaf895c5, 0x6b7cc203, 0xb1492867, 0x9c6ece14, 0x5bb17aee, 0x9c28ef82, 0xb735c5d4, 0x0e367b34
.word 0x79430726, 0x1a9c848c, 0x443067d8, 0x4115c81f, 0x0349c06e, 0x916a4f7e, 0xda9b9ecb, 0x3b89f129
.word 0x70d0e5d5, 0x17c5b151, 0xebf93c87, 0xc15c0244, 0x8db7cd41, 0x9f2b1048, 0x11db194b, 0x78cadf5a
.word 0x0cfb9c93, 0x247f3825, 0x31860141, 0x9f7749cb, 0x66e62c7a, 0xd739b52a, 0xe1c35f21, 0xd551a661
.word 0x5210a50d, 0xfed05842, 0xf9dd74b8, 0xd49ee297, 0x0b6563e8, 0xe39806e8, 0xd6dccb8b, 0x5a76b293
.word 0x8927af3a, 0x8c332c94, 0x338fdca8, 0xdce23128, 0x467992cc, 0xaac818eb, 0xe222c465, 0x93245c7a
.word 0x2fa6ae50, 0x9a6d786f, 0xc7130f80, 0x0df30fb0, 0x1206b766, 0xdae9f96c, 0x0aacfb2a, 0xeaa5ae42
.word 0xe943c5d9, 0x4013f747, 0xb9399bef, 0xd6381919, 0x7ebdc686, 0x95915214, 0x5d74e544, 0x5d69f14a
.word 0x2464c1e0, 0x024e5ce4, 0xf021bcb0, 0x7340ef5f, 0x5df14def, 0xdfe7c6b3, 0x8f6774a1, 0xd920db16
.word 0xb1d52bce, 0xdd860951, 0xafd29d71, 0x0ae0a59c, 0x30a74d6f, 0x6d65c389, 0x91da8bc6, 0x6327efd8
.word 0xd596a568, 0x874b6372, 0x5477e35e, 0xade19799, 0x1f9e6f55, 0x8cc3a2f0, 0x5f62b1d8, 0xc35ac2d1
.word 0x70c809df, 0x4218fc5c, 0x4cbae76a, 0x90345614, 0x73deb341, 0x0a80d307, 0x3c94c4e1, 0xe988b085
.word 0x1c7f84c0, 0xee7b8520, 0x7a4d3883, 0xe20a9d9a, 0xd87a1f68, 0x36cc5f09, 0x71314ca0, 0x26a50a63
.word 0xa1ddc654, 0xb4354baa, 0x0b61e34e, 0x1eb39dfc, 0x1c41ddb3, 0xd03f8828, 0x41f1f02d, 0x7ece520c
.word 0x91e876ed, 0xd32fdf2e, 0x2efd38e3, 0x75d1bc2b, 0xd482174d, 0xe5974cdc, 0xb26d1b7b, 0xbb7f8159
.word 0xa9e91711, 0xb15f2980, 0xb4b55f18, 0x44e9d03f, 0x6a146848, 0x62efc80b, 0x2f4444e4, 0x5e034131
.word 0x2284c8a0, 0x2352e369, 0x9dd3c46b, 0xcbaf569b, 0xf40dde6f, 0x3d294c0c, 0x13b27628, 0xeee98aa0
.word 0xcfd7dae1, 0x582e5a24, 0xdc1876c5, 0xcc703502, 0x55de15df, 0xda174ff9, 0x578e4641, 0x7d83d862
.word 0xc670e5c1, 0x44c67ea4, 0xd4922071, 0xcf86dfa0, 0x711accbb, 0xe8d36bd4, 0x9af9911b, 0x3ba08a95
.word 0xf10e4f58, 0xfc2042cf, 0x7d56765b, 0x8a694289, 0x4c5565b7, 0x7f0da935, 0x22f71faa, 0x6e236762
.word 0x4d195a85, 0xa67f40aa, 0x2c97cad1, 0x95c54a47, 0x1099126b, 0x23caf148, 0x07618b2d, 0x929b4e9d
.word 0xab348685, 0x5beb34cf, 0x0cee7499, 0x08549284, 0x2bc7c1e6, 0xddc2a780, 0x8d01efae, 0x70075324
.word 0x147ce6e8, 0x08fdde7a, 0x5192c94f, 0xa6efcc55, 0xf14fac38, 0xf1654135, 0x28aa398b, 0x5f24db35
.word 0x0303bc00, 0x2e42dd19, 0x61c2bc1f, 0x464aa472, 0x08aed5ec, 0x9d904df4, 0x04e96a08, 0x22c53fcf
.word 0x5fc4dc31, 0x53320a7b, 0xc552750e, 0x6bfe1507, 0xd68edbef, 0x6057f8cf, 0x52e27e93, 0x6745ef75
.word 0xe9a43453, 0x5218c259, 0x52903ada, 0x7e63eda3, 0x5c557b6c, 0x9e403eea, 0x24c98153, 0x173634b5
.word 0x6cc7a63c, 0xd42b9314, 0xf60b6ad2, 0x5dfd3cbe, 0x4359513b, 0x466e6d5a, 0x7b3d33a0, 0x1b9ddda5
.word 0xfce19728, 0xcb2015b7, 0x06699e3c, 0xf74143c6, 0xa3460d1c, 0xfcab91ee, 0x6290d8bb, 0x41b93207
.word 0xf526cf74, 0x6cc429a9, 0x8bd9ea2e, 0x49c6ebb1, 0xe030e27e, 0x67768e75, 0xb31f04b6, 0xebe4309e
.word 0xe37e847e, 0x0bf5473a, 0x155ff934, 0x7335b4c4, 0x65d9bac2, 0x85ed6929, 0x8091dc65, 0xc3a25efa
.word 0x8bdd5807, 0x8762c0c6, 0x9423c72e, 0x0c959837, 0xf265241c, 0x009c577c, 0x4683a2f3, 0x730fdb23
.word 0x6a4b9df8, 0x2bb22682, 0xf8e45f33, 0xf105cd83, 0x7089b585, 0xa71d4a06, 0x27a1d69b, 0xbf857ae7
.word 0x736a31de, 0x5c5a6c19, 0xf4d38671, 0x7d968c86, 0xcd5672c4, 0xcd301b40, 0x7f40c07f, 0x01e000db
.word 0x4bf40e6e, 0x5be28786, 0x00f36e4c, 0x3e11444f, 0x671d1c8a, 0xc8eeb440, 0xcc96091b, 0x401d5b8f
.word 0x7e0ef657, 0xa5347410, 0x44c1dc15, 0x8dae3448, 0xcf0e50db, 0x2bf25f53, 0x8ef75fd9, 0xeb3c42cd
.word 0xe5f95f9f, 0x46e670f4, 0x471e5e2f, 0x5aea6a4e, 0x98fbecbf, 0x62694632, 0x29e0991a, 0x86bbe38c
.word 0xe4afa3a7, 0xa9379b13, 0x30be56c3, 0xc387ac1b, 0x5fbf3d92, 0xd2727a73, 0x8ad4dd48, 0x59115772
.word 0xce6787d2, 0x80d433bd, 0xa3f82a08, 0xa364de77, 0x3af6e3cb, 0xfa3b7f8d, 0x0f832e88, 0x801f4c06
.word 0x57b72ba5, 0x91e07e65, 0x2b5b7c35, 0x8c2393dc, 0x02f804e3, 0xe2878ca9, 0x35531a91, 0x4b83763b
.word 0x1c1118ef, 0x9f95a932, 0x8d7e67a3, 0x27d8586e, 0x12d0c1d1, 0xcab50565, 0x954d4919, 0x6fe45ed3
.word 0x46adf8e5, 0x9f5bc244, 0xc2a5de55, 0xd0d5c9a0, 0x0978bdee, 0x4ad70c7e, 0xde35fad7, 0x4066dc5b
.word 0x21f1331d, 0x566f98d9, 0x79d945dd, 0xd4ebf739, 0x8ad120b1, 0x1cf7c77e, 0x646b904b, 0x01907007
.word 0x8c188fd6, 0x1bc71b12, 0x9d163e6d, 0xe31563cd, 0x154a65ec, 0x5b1b70bf, 0x73823d7c, 0xd8580672
.word 0x70462e41, 0x7ad30215, 0x33d4122c, 0xc3107f8c, 0xde4712eb, 0xe9e6ca53, 0xf5af0194, 0x817d4ed5
.word 0x45be7cca, 0x6d9c4e81, 0x036cca83, 0xafd5266e, 0xd65f17b3, 0x5bb1d888, 0x4892715c, 0x98e30366
.word 0xbc97e926, 0x73b395a0, 0x2b956a93, 0x0a479bbb, 0x675e0fba, 0x90560677, 0x87e2adb6, 0x8e099512
.word 0xdc1ed162, 0xd6d693ce, 0xc9fad554, 0xc0fe48ed, 0x54977874, 0xc96df08e, 0xa26fa053, 0xfdc945e8
.word 0x054c74a6, 0x7a621c8e, 0x12cd8603, 0xe3ed4786, 0xebd427fd, 0x491ac7d5, 0xd3425be9, 0x4aeee0d6
.word 0x3beab987, 0x5376bfb5, 0xeeb463bf, 0x4fd55222, 0x84bac58a, 0x1ddcebca, 0xaeea7743, 0xdd34a199
.word 0x825f8b68, 0xaee4bf04, 0xf4fd2e16, 0xb4c4c19d, 0xc4496d3d, 0x6b02e475, 0x61a19038, 0x23a405b5
.word 0xf67fb68d, 0x574825a6, 0x43428d8c, 0xaeba526d, 0xf8828c9b, 0x67b72827, 0x76d6ae82, 0xf99c28cd
.word 0xaea0f874, 0x80877e49, 0xd1727267, 0x071020fa, 0xd25ade1a, 0x66a3ad54, 0x162f8e6c, 0x8016a389
.word 0x856e7b95, 0x7229af1b, 0x570c3561, 0xe23fdf1e, 0x89ec3bd2, 0x844ae5da, 0x634a0743, 0xb0e16312
.word 0x610c2c4a, 0xa5cedebe, 0xf98d9d90, 0xdcd912ef, 0xd9f4d8c9, 0x924a5c4e, 0x5cd8de36, 0xc4cc9819
.word 0x7b879914, 0x06276014, 0x29b78b0e, 0x50b57182, 0xd87d6956, 0x7f0b5676, 0x1f2cfd32, 0xab17b33b
.word 0x9d383881, 0xdbbb52e5, 0x180e748d, 0xd77aa1b5, 0xfc5b8ed2, 0xe46f7d0f, 0x5a10d87c, 0xed9d4199
.word 0x5d2bccd0, 0x75b3a0cf, 0x3b5c1b6c, 0x1b50dd34, 0x7164e181, 0x97a807de, 0x3dcec28d, 0x25d2e77c
.word 0x048fe2b4, 0x01f39ccc, 0xf95c06b5, 0xa7e1f096, 0x2f2f5447, 0x359044a6, 0x026ed338, 0x2bbb0d37
.word 0x98a4123b, 0x9e3e4aa8, 0x1325d176, 0x507439af, 0x6d1126d2, 0x0d972844, 0xa491f1f0, 0xd7cc78eb
.word 0xe94b4820, 0x803ad76f, 0xbd362d28, 0x8d78a234, 0xc5a8f031, 0x4e99023c, 0xd6052d68, 0x876ebc06
.word 0xb076a0ed, 0x795c5e62, 0x1f21722d, 0x00444eb6, 0xe99fbf62, 0xbfe95ce6, 0xc0b75477, 0x5aa4c7d5
.word 0x74314f9e, 0x0e71b7e6, 0xbf946388, 0x8db786da, 0x798baf6e, 0x8aa94544, 0x60b454e2, 0x1ebbf17e
.word 0x1e8afec3, 0x4d2bf036, 0x9a768fca, 0x39cb2a63, 0x6d917ac4, 0x1c6f9673, 0x1ed105a9, 0x58407a91
.word 0x81623084, 0x54edbb88, 0x801339f4, 0x7e639b6a, 0x08e00729, 0xad464d5d, 0x7cda4517, 0x72f7aac8
.word 0xf2d6a020, 0x821c9798, 0x0dd8da44, 0xa50d8b39, 0x4203999d, 0x301a1532, 0xa76e498a, 0x34512b1f
.word 0x09abfb96, 0xbd610df2, 0x96e38854, 0x82db9050, 0x10a3a385, 0xfb5bced1, 0xfae310a6, 0xbc70af54
.word 0x61677328, 0x4ceba0ae, 0x2749d0fc, 0x2eb996d3, 0xde148515, 0x04cc4384, 0x78b4121f, 0xbffb6358
.word 0xe2135070, 0xfebacad2, 0x0724215e, 0x99b940b9, 0x29322882, 0xa154b13d, 0x6e0c78b5, 0xe8b9e85c
.word 0x50431d38, 0xd2bba5a3, 0x583d0273, 0xc9955555, 0xe933e006, 0xe32d2f49, 0x13380137, 0x30c27d9b
.word 0x22188772, 0x456b1641, 0x7824ce1a, 0x8f19cb6f, 0xe101c392, 0xeb233534, 0xb43bc4c9, 0x4a967641
.word 0x7b8ac38a, 0xc65760bb, 0x488b9be4, 0x788bdeee, 0x0529fd32, 0x03510028, 0xd01ff9d8, 0x44c1e729
.word 0x808bc2cc, 0x42938b90, 0xe0f785da, 0x68248d63, 0xfc143dd5, 0x10088ba2, 0xedee1454, 0x1fec2707
.word 0x30929cb9, 0x6ae78043, 0x6ebbf3d9, 0x5f4c110e, 0x02259e6f, 0xf2914419, 0x7070bc66, 0x8379a4a0
.word 0xef54ccbe, 0xdd703464, 0xbee68280, 0x846889bd, 0xe02d22cd, 0xbaf102ab, 0xf3a4754f, 0xd2768142
.word 0xb13171c2, 0x0a56d509, 0x6adfc08f, 0x82bcf5bc, 0x648dbe4b, 0xf1377f74, 0x3ec1a863, 0xed549104
.word 0xdb5fdfc8, 0xa61895a0, 0x3039cd44, 0xfdd9ce9e, 0xdd06147f, 0xed746350, 0x0d812fad, 0x87a5519f
.word 0x146e80b0, 0x3aa28006, 0x26edc6fc, 0x857fd916, 0x44a66e0d, 0xacc00f55, 0xfeecf2ac, 0xb319fd73
.word 0x5a55de21, 0x2607b9e9, 0x1ec8d9d2, 0xe338c04f, 0xc2fb5231, 0x53f33569, 0xde17fd63, 0x8a63af23
.word 0x2d851b7d, 0xb4a47d7a, 0x4c6467ee, 0x6783e06e, 0xfa1052f0, 0x03e4072e, 0x89f825ac, 0xd7d25874
.word 0x092afa9d, 0x2aded470, 0xec5cc6d1, 0xdf3f46b9, 0x09836627, 0x2ce9f881, 0x24f78817, 0xc29fb719
.word 0x748bb1ab, 0x8988089c, 0x5520f4a5, 0x0eef3a61, 0xeb8aa740, 0x61e2930a, 0x9d350e3a, 0xb47dc64d
.word 0x457387cc, 0x279f9262, 0x1c1ec8ed, 0xb199a78c, 0xe14bcd3e, 0x9ea0a6fd, 0x04047f59, 0x24ef1285
.word 0x8eba24e1, 0xbf60b39b, 0xe0b2004d, 0x7746b8b8, 0x08ccb7d4, 0xc6ee3812, 0x3658498e, 0xfeed5c5f
.word 0x409ac3b5, 0xe4c0e69e, 0xe218817c, 0xcedbd6e6, 0xbcd7e4b3, 0xe79906ec, 0x94807a0e, 0x7715ca69
.word 0xe9509ebc, 0x89346c98, 0x22439461, 0x00cf3b28, 0xcae3fda8, 0xafc542db, 0xfd2f8826, 0x25d616db
.word 0x96659632, 0x5a2e9873, 0x834cdac9, 0x61de6199, 0xabe910ca, 0x5c6cb8fa, 0x83074358, 0x25e02a6a
.word 0x2d102ac4, 0x71e44188, 0xe2b47d01, 0xbc278371, 0x678566c2, 0x2e5cd3f8, 0xa6b2b5fc, 0xa31a65e2
.word 0x283af57b, 0x76b2aed3, 0xac2f70f4, 0x9c0792cd, 0x519984c5, 0x554a2b6d, 0x2f8ea353, 0xe2705acf
.word 0x070a8223, 0x28afbcbf, 0xbb4097b7, 0x69484b5d, 0xeeb34374, 0xd46695b1, 0x521eb4e3, 0x1b349323
.word 0x6429caec, 0x60e009d4, 0x27b317ec, 0x4d532fb9, 0xdef0262d, 0x35441abf, 0xd3fafd2f, 0x96eb426f
.word 0x883c2aab, 0xc08235f0, 0xe38612ae, 0xd8daf4b6, 0xee75c671, 0xdf9e4f66, 0xcad5a4dd, 0x85f16ad4
.word 0xb001e82e, 0x2c805c0d, 0x3a65bc51, 0xab48a423, 0x03bddf2e, 0x10382098, 0x2f8ca1f9, 0x3d583ca3
.word 0x3d5c4e99, 0x2efba495, 0x66cf3695, 0x2d5ea9ae, 0xc228ef53, 0x23454cce, 0xa6bc6279, 0x1cfea477
.word 0x67e0fe40, 0xa15ea771, 0x24a8c162, 0x097d4e0b, 0x836c9437, 0xbcdeaf25, 0x637e48c7, 0xb32d177e
.word 0x35f0b958, 0xdb765bc5, 0xdce0ec26, 0x7adc0715, 0x1d3fc686, 0x8381fafb, 0x20e832f9, 0x9764cf8f
.word 0x421dcf23, 0xe4c35d11, 0x5ffccdee, 0xf62a2350, 0xf104c284, 0xc813d729, 0x2625c7b3, 0xf56eb43a
.word 0xefd7a022, 0xbd44b1e5, 0x2333ad12, 0x37c67c2b, 0xc6c82b07, 0x823bbc23, 0xbb9f07af, 0x4cd99c6f
.word 0x6b6d7e84, 0xb84afaf1, 0x341ad828, 0x74f1f027, 0xc6cb86e6, 0xe83376b1, 0xd9a71e7e, 0xe4524d79
.section .s_region_1,"aw",@progbits;
s_region_1:
.word 0xa1a6dd53, 0x3dcdc852, 0xa1ab4f61, 0x2184ee6a, 0xa8874ee0, 0x09a6335c, 0x2afe191d, 0x46e65aea
.word 0xd9dfa45f, 0x083e2080, 0x5993a069, 0x5b920dd1, 0x9ca32c3c, 0x03fc8bad, 0x4bdbefef, 0x8fd94d26
.word 0xe6cd01b7, 0xdb194203, 0x9b02047e, 0x94d63af7, 0x8abed4db, 0x06dc8490, 0x5f5f008d, 0x99654a55
.word 0xc7af4ec2, 0x8a4b3e3d, 0x8569ed15, 0x85c55078, 0x4591b3ce, 0x2d7d0f12, 0xea049195, 0xab956423
.word 0x6da16abd, 0x07aac74f, 0x5474d0f2, 0x53f6d654, 0x0e0b78b7, 0xa51bc7c1, 0x2d19e46f, 0x17cd394b
.word 0xd97a0bc7, 0x1dd15158, 0x27dd0339, 0x6af6e59d, 0x5dfe3fa9, 0x1aa89599, 0x0752ad3c, 0x4c008d31
.word 0x9b833d6a, 0x79b376ec, 0xa7d96853, 0xe2994f88, 0xe38d549d, 0xc1b6e59b, 0x4a8cc669, 0x136ec429
.word 0xf0051b8b, 0x7184dc3b, 0xf69c3fc2, 0xa15eef03, 0xaed91405, 0x02b72724, 0x83849fae, 0x46ab9d93
.word 0x55403f7b, 0xcfac6174, 0xd0cbe84d, 0x5984b753, 0x94df47a6, 0x070ff69f, 0x2b91f8ae, 0xcdf9c4bb
.word 0xa81e65ae, 0x6211020f, 0x5a082b49, 0x7d51f473, 0xbefd0e76, 0x2bd810c8, 0xfa8f62fe, 0x826f5a2c
.word 0xe1dd3e29, 0x7a3ae684, 0xd6583d93, 0xa11ef38e, 0xcb93e39a, 0x94bdc9a4, 0x22d5e1de, 0x4ac12dbe
.word 0x858408cf, 0x49aca4ba, 0xf8b9e7ef, 0x725c515f, 0xebc0f1f0, 0x85beebbe, 0x7febedf1, 0x30085ddb
.word 0xde4b9b97, 0x0b43a03f, 0x5c269646, 0xf587b0a7, 0x4805c0d9, 0xbcae5928, 0x09f0698d, 0x4bfa6e82
.word 0x227bee79, 0xe0508081, 0xfacee633, 0xae5535e0, 0xbb206c7e, 0xda8a7be0, 0x8e9db386, 0xd6d22197
.word 0xac2568fc, 0x35b50855, 0x3b98a379, 0x61d56dc6, 0xd5cc3ab2, 0x2ca08f7e, 0x2378abcc, 0x5b404892
.word 0x62836f38, 0xda280ee8, 0x96ac2acf, 0xf3156936, 0xb7b06d11, 0x319a1ab9, 0xa6b3d101, 0x123a3f15
.word 0xf07e8e80, 0x4b5297f5, 0x3f0d2f63, 0xa431e9c1, 0x38dd8147, 0xf554edfe, 0xb4d63884, 0xee87c5a3
.word 0x983e751e, 0xbcafeb23, 0x1a5f13c5, 0xa530fea8, 0xfb42501e, 0xdae284ae, 0xc42e62f5, 0x7ae326d0
.word 0x159f3180, 0x00ec0302, 0x18000dcb, 0xf7b30b2c, 0x6061eddd, 0xb1867067, 0x863c0929, 0x23828453
.word 0x3d4eb01f, 0x38e8488e, 0xef8c0bcd, 0x46c36a3f, 0xad2a40a5, 0xb37b8f20, 0xfcca0c11, 0x8c05e409
.word 0xc443b411, 0x626486e7, 0x3fcab4dc, 0x743669eb, 0x1f11f659, 0x814d2d4b, 0x9d8d9b5e, 0x8d7c4ec4
.word 0x1e5ec839, 0x107d99f1, 0xde8eed8d, 0xc89f6ae5, 0xcffcf4c4, 0x65058fb7, 0xd6d2c0d1, 0xc377e7f9
.word 0x696d5955, 0x3c18cde5, 0xc80a7a92, 0x36036c9d, 0xb9641560, 0x996051e5, 0xa3d96889, 0x599e7efe
.word 0x3b554bbf, 0xdf6a57f1, 0x6bc07df5, 0xb13edde1, 0xdafe7b5f, 0xea165b6b, 0x9b01bef5, 0xeb8a22ce
.word 0x0694315f, 0xdc085121, 0x9b5c1af6, 0xdbfa6ef5, 0x1c7ce857, 0x9d0bd9c7, 0x3fa2cf5b, 0x89253d6b
.word 0x72c6d227, 0x5c768854, 0x1653065e, 0x5e46a37c, 0xd17cab4e, 0xf46e6154, 0x479088c9, 0x1ef9cb62
.word 0xc9f5071a, 0xb1830db7, 0x0537307a, 0x3e2481b2, 0x4bd60d33, 0x5ed77053, 0xb751cb89, 0xf55bd722
.word 0xe2c579b1, 0x9327e047, 0xbfdfcf13, 0xd2a6f79f, 0x991cecbd, 0x3d2541f7, 0xe3482cbb, 0x68510fce
.word 0x0652884f, 0xc1a11536, 0x010b247d, 0xbfe2b86d, 0x8ff41e4f, 0xa424ac57, 0x66e25da8, 0x029980c6
.word 0x91cce18c, 0xb66931ab, 0xc8e1285f, 0xf11aa86c, 0x1b6ca6c4, 0xae94af67, 0xcc158692, 0xdab1514b
.word 0x734f16b6, 0xbf895099, 0x126d59f7, 0xa75b7d34, 0x62744f4a, 0xb53d3a49, 0xb6d5b3e1, 0x90312e38
.word 0x5d79011a, 0x28b7ab82, 0x2757f907, 0x485bf280, 0x1248108b, 0xc0ea5d1f, 0xde7ce640, 0xdce14f0d
.word 0xc3a381f1, 0x12c8cbef, 0xde75d6d6, 0x4a16b42a, 0xe0ecdf24, 0x409a2154, 0x315836e0, 0xccf0ead5
.word 0x7f33fbee, 0x23e1269c, 0x0c96bbbd, 0x09453a93, 0x739b3d93, 0x5d72af98, 0x553a2606, 0xadb98dac
.word 0x6efb4481, 0x3cc725fe, 0x2504dd8e, 0xb0e83a93, 0xc899d81f, 0x117cb6dc, 0x25f2f126, 0xef641bbe
.word 0x6e56f86e, 0xb84de332, 0x5f0c074d, 0xdf983e2f, 0x907f4468, 0x178a0a93, 0xd443b17a, 0x825b57e3
.word 0xda815fad, 0xf6400bfc, 0x697bfe83, 0x8c53d2fb, 0xadbc1da3, 0x9e2133b0, 0xfd428817, 0x78077df7
.word 0x98c204f2, 0xd197f7cb, 0x7851a4f8, 0xd2808e75, 0x57d0f772, 0xe3e5864b, 0x45cee3b6, 0x48018871
.word 0x878b847b, 0x180321df, 0xd65aaa73, 0xbed26a23, 0x04726bec, 0x124e9281, 0xbec63400, 0xefdd3838
.word 0xe18c56e4, 0x8886a902, 0x9ad8071e, 0xd3921365, 0x0ab622c6, 0xecc3143f, 0x70fac893, 0x7093b38b
.word 0xf2ad6981, 0x08511539, 0xb2ddf706, 0xb9a6ca12, 0x64669801, 0xb56912f4, 0x62c75dcb, 0x518bb42d
.word 0x76285d8e, 0x440c7979, 0xce5d1197, 0x11ea13c9, 0xf2581269, 0x590e8ded, 0x52efd0a7, 0xb876c1f7
.word 0xc4ef66b7, 0x760822a4, 0x96d7b938, 0x3d672aa4, 0xdbe4e6fd, 0xa7679e3a, 0xf57b7ac2, 0x311c2642
.word 0xb3166a71, 0xf2b9cbc1, 0x4d0e73ea, 0xd6dd8cd6, 0xeb8c51d9, 0x3083b12f, 0xfc13eacf, 0x0c5864ce
.word 0x8a3d5874, 0x8f5c0687, 0xf2eba9b4, 0x68f6b2f0, 0x57fc9db8, 0x9ae6e3da, 0xb2e73f60, 0x46c30282
.word 0x4fe4ca37, 0x028004a7, 0x589a2031, 0xf3eed400, 0xa537a524, 0xdc4dc9f8, 0x7df4509b, 0x80f75a74
.word 0x72bf2cc9, 0x6177241a, 0xfd0465b2, 0x19ca6f16, 0x00d8c304, 0xab5a27cc, 0xa0d9ac36, 0x19bc101b
.word 0x8cc8ac6d, 0x566b8170, 0x4457f414, 0x9011dd26, 0x0042383f, 0xc68ddc00, 0xfd0fc2ec, 0x915cf638
.word 0xf1bf7639, 0x2564882b, 0x57e10723, 0x9a21405e, 0x8e6ce54c, 0xb202ac9e, 0x2aea09fb, 0xe91e15da
.word 0x6134cf20, 0xd8bcba37, 0xaad5282f, 0xa9b32abf, 0x82f23464, 0x31470fb2, 0x4423af70, 0x101e178d
.word 0xc9f84bea, 0x52946a73, 0xc050299d, 0xb1e43eee, 0x8f15569f, 0xb253c955, 0xad277db9, 0xaf8cded8
.word 0x4a2371bb, 0x0ad18a50, 0xd4781e56, 0x7cbf974c, 0x493a5540, 0xd43d1f6c, 0x71aeccbf, 0xcaaa1a21
.word 0x6be0cb79, 0xa425fe6f, 0x91a5b421, 0x7020ba87, 0xfacd58ef, 0x3956e17c, 0x13e30a8b, 0x3a74db9d
.word 0x8963538c, 0x3b05eba1, 0xbb97a88f, 0x8959f3a1, 0x0b2308ed, 0xca9e2e32, 0x08c3a901, 0xe9038d7f
.word 0xa084a85a, 0x6a738693, 0xf2429f91, 0x77f7e3a3, 0xebc12956, 0xd8767905, 0x46c46f79, 0x93452533
.word 0x4259b333, 0x5c05382c, 0x3e32a6ad, 0x729d89ae, 0x2778fa16, 0xd12bd692, 0x561a194c, 0xf9ae15cb
.word 0xe575c602, 0x1215e974, 0x3bb6248d, 0x3d40d618, 0xcb947351, 0x0c452fc9, 0xb9b5e28e, 0xca601df9
.word 0xd50af785, 0x5c4645f3, 0x4b069e6b, 0x81b7feab, 0xdc821f65, 0x02510b1c, 0x3d178457, 0xdeaa243b
.word 0xe0191c5c, 0xfc665d72, 0x4afd1357, 0xb0760135, 0xf05130c8, 0x9047dbf4, 0x100e656a, 0x5cf9d9f6
.word 0xa3034ba4, 0x3e614565, 0x625ffe32, 0xeba259a8, 0x6dd2edcd, 0xb5906d30, 0x21334b59, 0x28110ed1
.word 0xa7d7dad3, 0x2524dd2f, 0xa1494389, 0x32e37c8f, 0x37094b3a, 0xab1f1e57, 0x0a5e314f, 0xebdbdb67
.word 0xb6f8713c, 0x22fb2950, 0xca171aba, 0x3eef48c2, 0xb109e4e6, 0xc456f1eb, 0x51a6ed8a, 0x9dd5819b
.word 0xc247bc69, 0x7e88e8d2, 0x5239df99, 0x1803a343, 0x337b40c4, 0xf965f19c, 0xd366904e, 0x8c263881
.word 0x48ecf33e, 0xa82c8999, 0xb5d5d922, 0x469cc8d6, 0xfbe2d631, 0x71385059, 0x29eb15fd, 0x8dd402d4
.word 0x9933378b, 0x28d609c5, 0x9ccf72b1, 0x5206f53b, 0x254845c9, 0x9617af96, 0x794e24f6, 0xe43a9377
.word 0x650bbb0f, 0x38226774, 0x38d67222, 0xf356837c, 0x9b5aba35, 0xab2277f7, 0x41167bf4, 0x13c329b6
.word 0x4ef1d882, 0x9087d6d9, 0x5cf13d00, 0xb74a8eb1, 0xf4e7b01c, 0x3bb3bc16, 0x730d2cbe, 0x23c94934
.word 0xd600797c, 0x1e1bf0fb, 0xbafb52ea, 0xca6c73a9, 0xf1baf779, 0x8cc18d6f, 0x08e040ed, 0xc02d6947
.word 0xd061f4d1, 0x7dee9808, 0x6c61dda4, 0x81dea63f, 0x959e6b11, 0x234ecb50, 0xa9331c37, 0x3e9e71dc
.word 0x250c6c11, 0x6955ae53, 0xbc6671f4, 0xb12971b7, 0x1e9d239d, 0x93633bb9, 0x4801aaa4, 0xedc9473d
.word 0x62c11e14, 0xcd99ed12, 0x41b6a3ef, 0x889a88b2, 0xf4accee5, 0xc4ca42a0, 0xa43313d9, 0x90966311
.word 0xf09b005f, 0x7449dbf1, 0xd2574de7, 0x9c47cf35, 0x493a8a72, 0xc9dff993, 0x5505c495, 0x00246324
.word 0xc9a0665a, 0x33dab386, 0x8d424231, 0xe546a8f4, 0xcc57cebb, 0x59f35092, 0x0a3ba65c, 0x589c254e
.word 0xf1dd7615, 0xa5e56018, 0x0e79e4f1, 0xb79df3df, 0x630aa372, 0xfd980599, 0xcabbb9f6, 0xd70ad18a
.word 0x846bc3b4, 0xbac3a770, 0x0be22698, 0x87d1e845, 0xcd1a61ab, 0x9ec1b7b7, 0x4c521e46, 0x1dd9b189
.word 0x21ea2fe1, 0x44bb4555, 0xe760c1d3, 0x8b635950, 0x12b7565c, 0x37ae9472, 0xc146aabc, 0x193f417f
.word 0xcac11954, 0xab9ffd74, 0xa348ab88, 0x1bde3f63, 0xea266dac, 0xe92b9a19, 0x739da8d1, 0x55d037b7
.word 0xe889870c, 0xf26bfcc4, 0x69c644fd, 0x4abd4205, 0x4de9a35f, 0xa75b89d8, 0xa2c8d5f3, 0xd40232a0
.word 0x7d66f399, 0xea7f4361, 0x21fc8238, 0x7b6800fb, 0xfc0f8dc7, 0x8c2c8d6e, 0x7dc917f6, 0x52bbaf28
.word 0x463c1a5f, 0x47f763ab, 0xb3b2fe6e, 0x3ac915c3, 0x01a08615, 0xa1bef4a2, 0x4a30a3a4, 0x2a04d9bb
.word 0x8ee23b79, 0xdf759f2b, 0x9a2a883b, 0xbc93c7d2, 0x1a78a234, 0xfe38790e, 0x73c6c12e, 0x7d1f804e
.word 0xa44957df, 0x4d4a5ad1, 0xb7d771d0, 0xb8dfae73, 0x35d0a4d7, 0xcaa6f647, 0x77ab0a84, 0xce840908
.word 0xc1363d73, 0x4425b53a, 0x9556e10f, 0x14ddd675, 0x7015da47, 0x516e3f00, 0x06fe9791, 0x427695d1
.word 0x13a57472, 0x07ca8860, 0x7f3daf01, 0x586487bc, 0xd1834dc4, 0x8bc57911, 0x27511e1e, 0xfe9c9825
.word 0xbf65da6a, 0x6b51ca30, 0xfdfe0906, 0x12c7b21c, 0x48f3cfef, 0x9293eb06, 0x6854d7dd, 0xa35bdea7
.word 0x6a6a5931, 0xf91838bc, 0x2ad004b2, 0xfd64de01, 0x36713da3, 0x6ab68b76, 0x463dee93, 0x7177af8b
.word 0x9225e9c6, 0xb85943d4, 0x76faeaae, 0x6483e80d, 0xf6a746cd, 0x422cd937, 0x2d46fa29, 0xd0de6277
.word 0xe1f9bd18, 0xb72bfc67, 0x4488ec6e, 0xb06c7c2d, 0x004e3bd1, 0x1428283d, 0xb40d2818, 0xdd69977f
.word 0x4c97c51d, 0x7a5aa2a8, 0x955cbe61, 0x24fa0ac9, 0x8f6f50b5, 0xca5e4fcc, 0xb53f83ee, 0x01c3474d
.word 0x4d2cb412, 0x1a4f6c7f, 0xfe97ed18, 0xc403e7df, 0x97e78037, 0xad18ae37, 0x12397f03, 0x1539dab7
.word 0x1f7590ec, 0x98e22f7c, 0x33af9168, 0x32c5cc71, 0x2dacd4b4, 0x156dd251, 0x9fdf021c, 0x80580d0a
.word 0x19639b7a, 0xf6780145, 0x98768756, 0xbfe8551b, 0xea810dc3, 0x03409214, 0x71752663, 0xa46bf2ae
.word 0x7a62d24f, 0x9a1202e8, 0xb6876f6c, 0x27bd8c19, 0x97471c75, 0x63db7595, 0x6c1dae8f, 0xec4d7094
.word 0xb8d1c4e5, 0xea6267f4, 0x9db64ea1, 0x1f06e0ed, 0xa7c04d95, 0x8409bc53, 0xcadb6ea1, 0xc5c38a76
.word 0xf1ad22bc, 0x3216dc58, 0x6c0f0e70, 0xdbb56539, 0xe59f87d8, 0xe783f220, 0xd208a930, 0x730beb36
.word 0xdc4ef3bb, 0xefda9070, 0xb62bb749, 0x835920fb, 0x7cde37cb, 0x68e12d2c, 0x85dfcfa3, 0x91070297
.word 0xb5dd164f, 0x8aa6a03c, 0x2bf95aef, 0xfdeb0fa3, 0xa5aca627, 0xef9fcb87, 0x40dfc4fd, 0x1f2f2ff7
.word 0x6f9e2196, 0xd39f692f, 0x4f8669d9, 0xb661c62b, 0x0c4ac4e6, 0x7d44bac6, 0xd91046b5, 0x9b0e0c95
.word 0xf35b82f7, 0x1e114663, 0x02304e6d, 0xa178b5dc, 0x5f8a8d88, 0x6622fc73, 0x46108b00, 0x8c3825e4
.word 0x099bca9f, 0x051b2ce4, 0x9af3cf57, 0x2e783bb0, 0x823cb343, 0x8059d34f, 0x2031b056, 0x45c5a62a
.word 0x2c1f1492, 0x496329f7, 0x9bfcfedf, 0x2c425ebf, 0xb6295e43, 0xea5c452c, 0xb4fdb689, 0xa6c3a8c6
.word 0xf1b0008d, 0xfa833f72, 0x2bf8569d, 0x997a4fbd, 0x0d06654c, 0x5e2f9146, 0x3f644164, 0xe0a3a585
.word 0x67c93de5, 0x6038b627, 0x4d7bcfcf, 0x7e3d0e70, 0xad4a6310, 0x16760480, 0x95f6c901, 0x5377a34f
.word 0x348bc05f, 0x58d1f82c, 0x11739238, 0x1aac7e57, 0xcf096e4e, 0x81c41dec, 0x11034dca, 0x320f2b8d
.word 0x74f681ec, 0xbb1c0ae7, 0x956a6a63, 0xe6287da8, 0x03f90cb0, 0x7aaa3c45, 0x6a885a5c, 0x8670d886
.word 0xa43bed9e, 0x22e20e5c, 0x5c2a44fa, 0xd422b851, 0x0486edee, 0xa7ae4409, 0xf87dcc0a, 0xf69c3b4b
.word 0x67b21545, 0x5d3f8cb6, 0x2070266f, 0x9cde6faa, 0x0bf8b5d1, 0xfec303a4, 0x13db6f62, 0xf4d32ec6
.word 0x353a99b6, 0x809c8b2f, 0xd4368d86, 0x09eef451, 0x5dace28d, 0xbfabbc1d, 0x83b30914, 0x5dda2310
.word 0x5d8342ec, 0x2243b67b, 0x5423c05c, 0xa9acf49e, 0x4cfcdded, 0x294cfe1c, 0x744043ae, 0x1abe7b4d
.word 0x032b9012, 0x0cc7805f, 0x6158dabe, 0x65819af8, 0x8767c480, 0xac80a069, 0x45d11b5a, 0xace79a88
.word 0x233c9e44, 0x29e32a32, 0xa4d776c4, 0x761bd028, 0x3972be79, 0xb6f279f7, 0xb77dd6e0, 0x286123de
.word 0x980ebc36, 0x7569a007, 0x2331f18e, 0x9faa14c3, 0x82b4d1f9, 0x1a277ce8, 0x62570e82, 0x095adaf7
.word 0xc7aa7169, 0x644de253, 0x906e26a8, 0xed0a1214, 0x09568f0b, 0xb11ec48c, 0x5e8086d0, 0x85b3068b
.word 0xdc9f4e40, 0xbb7fe861, 0x26d3f01f, 0x1dac56bc, 0x0461588d, 0xf8a8bd9d, 0x80e2e8a1, 0x63ef13fb
.word 0xb9fe4b12, 0xd34e7c0f, 0xd34ada0a, 0xa7b6f72b, 0xa161eb23, 0x68d10941, 0x8bb66112, 0x8d99b641
.word 0xd05d9177, 0x0a13a195, 0xbbf4e83f, 0x012313d3, 0xf082a7fb, 0x96162ae5, 0xf905b5d0, 0x14628129
.word 0xb5d5f4f8, 0x3afe4f61, 0x1cbafc4d, 0xaa224c62, 0x545fa603, 0x59b71a16, 0xeaeb23b6, 0x5e828ce6
.word 0xdf9eefab, 0x386166f4, 0x0a27cfcc, 0x5c43a5c0, 0xd14ada62, 0xb3b1500c, 0x1f44187b, 0xb9cadb0e
.word 0x054e50d0, 0x9b50ed73, 0x7a4a9fa9, 0xa61c6b1a, 0x1d461b0f, 0x9c46913e, 0x62a39c54, 0x69be114e
.word 0x409558f0, 0x28a4dd62, 0x2bc6d125, 0x9542358e, 0x4b3414d9, 0xce446f9d, 0x3c0c5aa6, 0x921ff327
.word 0x06096f79, 0x3e4865a5, 0x728b2a4c, 0xddeb31ec, 0xd89c8d17, 0x0fcba4bf, 0xb7ce93b1, 0x3edc1ddf
.word 0x47d554c0, 0xa3050294, 0x1807483e, 0x8f89a4a1, 0xb2091bb3, 0x89eefe65, 0xa0a873e2, 0x675b390b
.word 0xf68b6859, 0x11746962, 0x631b0f84, 0x4d0f0010, 0x2690dc5f, 0x83871a95, 0x75dc44b2, 0x614181c9
.word 0xb83ff05b, 0x0d7561a7, 0x3f292fa3, 0x15edcc28, 0xbf3710ad, 0x7f87d1b0, 0x69fd34b9, 0xbf8cfb1f
.word 0xeb774c3b, 0xad0c5b39, 0xe978dc37, 0x6f45d84a, 0x9af770a9, 0x430cf9ea, 0x4672d3c9, 0x1f5172b8
.word 0x2c75c96c, 0xc4a3d4bb, 0x9fba3691, 0x76df5eec, 0x29d56e2b, 0x4a12a6c9, 0x5c1cdd9f, 0x3b005dd1
.word 0x01261a18, 0x1b80315c, 0xd4d3991b, 0x4d14cd3a, 0x01f1dce6, 0x98639e24, 0x4f3a5254, 0x884caa5d
.word 0xbc38cd10, 0x1995501b, 0x9e83baf2, 0x5afb3b57, 0x140b3ad8, 0xfacd46ca, 0xd0dbacb7, 0x807d73d6
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
