.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800E0818
/* 079CC8 800E0818 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 079CCC 800E081C AFB10014 */  sw    $s1, 0x14($sp)
/* 079CD0 800E0820 3C118011 */  lui   $s1, 0x8011
/* 079CD4 800E0824 2631EFC8 */  addiu $s1, $s1, -0x1038
/* 079CD8 800E0828 AFBF0020 */  sw    $ra, 0x20($sp)
/* 079CDC 800E082C AFB3001C */  sw    $s3, 0x1c($sp)
/* 079CE0 800E0830 AFB20018 */  sw    $s2, 0x18($sp)
/* 079CE4 800E0834 AFB00010 */  sw    $s0, 0x10($sp)
/* 079CE8 800E0838 8E220004 */  lw    $v0, 4($s1)
/* 079CEC 800E083C 8E2500C8 */  lw    $a1, 0xc8($s1)
/* 079CF0 800E0840 30420100 */  andi  $v0, $v0, 0x100
/* 079CF4 800E0844 1440009B */  bnez  $v0, .L800E0AB4
/* 079CF8 800E0848 00000000 */   nop   
/* 079CFC 800E084C 3C028011 */  lui   $v0, 0x8011
/* 079D00 800E0850 8C42C940 */  lw    $v0, -0x36c0($v0)
/* 079D04 800E0854 14400097 */  bnez  $v0, .L800E0AB4
/* 079D08 800E0858 00000000 */   nop   
/* 079D0C 800E085C 3C028011 */  lui   $v0, 0x8011
/* 079D10 800E0860 8C42C920 */  lw    $v0, -0x36e0($v0)
/* 079D14 800E0864 14400093 */  bnez  $v0, .L800E0AB4
/* 079D18 800E0868 00000000 */   nop   
/* 079D1C 800E086C 3C028011 */  lui   $v0, 0x8011
/* 079D20 800E0870 8C42C958 */  lw    $v0, -0x36a8($v0)
/* 079D24 800E0874 14400073 */  bnez  $v0, .L800E0A44
/* 079D28 800E0878 00000000 */   nop   
/* 079D2C 800E087C 3C038016 */  lui   $v1, 0x8016
/* 079D30 800E0880 2463A550 */  addiu $v1, $v1, -0x5ab0
/* 079D34 800E0884 82220015 */  lb    $v0, 0x15($s1)
/* 079D38 800E0888 10400006 */  beqz  $v0, .L800E08A4
/* 079D3C 800E088C 84700012 */   lh    $s0, 0x12($v1)
/* 079D40 800E0890 862200C6 */  lh    $v0, 0xc6($s1)
/* 079D44 800E0894 54500087 */  bnel  $v0, $s0, .L800E0AB4
/* 079D48 800E0898 A63000C6 */   sh    $s0, 0xc6($s1)
/* 079D4C 800E089C 080382AD */  j     .L800E0AB4
/* 079D50 800E08A0 00000000 */   nop   

.L800E08A4:
/* 079D54 800E08A4 862200C0 */  lh    $v0, 0xc0($s1)
/* 079D58 800E08A8 14400082 */  bnez  $v0, .L800E0AB4
/* 079D5C 800E08AC 2413FFFF */   addiu $s3, $zero, -1
/* 079D60 800E08B0 1613002E */  bne   $s0, $s3, .L800E096C
/* 079D64 800E08B4 32024000 */   andi  $v0, $s0, 0x4000
/* 079D68 800E08B8 84640002 */  lh    $a0, 2($v1)
/* 079D6C 800E08BC 04800010 */  bltz  $a0, .L800E0900
/* 079D70 800E08C0 30824000 */   andi  $v0, $a0, 0x4000
/* 079D74 800E08C4 1040000E */  beqz  $v0, .L800E0900
/* 079D78 800E08C8 24120001 */   addiu $s2, $zero, 1
/* 079D7C 800E08CC 0C0441A9 */  jal   func_801106A4
/* 079D80 800E08D0 0080802D */   daddu $s0, $a0, $zero
/* 079D84 800E08D4 2443FFFD */  addiu $v1, $v0, -3
/* 079D88 800E08D8 2C620031 */  sltiu $v0, $v1, 0x31
/* 079D8C 800E08DC 10400038 */  beqz  $v0, .L800E09C0
/* 079D90 800E08E0 00031080 */   sll   $v0, $v1, 2
/* 079D94 800E08E4 3C018011 */  lui   $at, 0x8011
/* 079D98 800E08E8 00220821 */  addu  $at, $at, $v0
/* 079D9C 800E08EC 8C22BC60 */  lw    $v0, -0x43a0($at)
/* 079DA0 800E08F0 00400008 */  jr    $v0
/* 079DA4 800E08F4 00000000 */   nop   
/* 079DA8 800E08F8 08038270 */  j     .L800E09C0
/* 079DAC 800E08FC 2410FFFF */   addiu $s0, $zero, -1

.L800E0900:
/* 079DB0 800E0900 3C020200 */  lui   $v0, 0x200
/* 079DB4 800E0904 8E230000 */  lw    $v1, ($s1)
/* 079DB8 800E0908 34422000 */  ori   $v0, $v0, 0x2000
/* 079DBC 800E090C 00621824 */  and   $v1, $v1, $v0
/* 079DC0 800E0910 3C020200 */  lui   $v0, 0x200
/* 079DC4 800E0914 1462000E */  bne   $v1, $v0, .L800E0950
/* 079DC8 800E0918 3C02F7FF */   lui   $v0, 0xf7ff
/* 079DCC 800E091C 10A0000C */  beqz  $a1, .L800E0950
/* 079DD0 800E0920 3C031000 */   lui   $v1, 0x1000
/* 079DD4 800E0924 8CA20000 */  lw    $v0, ($a1)
/* 079DD8 800E0928 00431024 */  and   $v0, $v0, $v1
/* 079DDC 800E092C 10400008 */  beqz  $v0, .L800E0950
/* 079DE0 800E0930 3C02F7FF */   lui   $v0, 0xf7ff
/* 079DE4 800E0934 80A200A4 */  lb    $v0, 0xa4($a1)
/* 079DE8 800E0938 862300C6 */  lh    $v1, 0xc6($s1)
/* 079DEC 800E093C 34502000 */  ori   $s0, $v0, 0x2000
/* 079DF0 800E0940 1070005C */  beq   $v1, $s0, .L800E0AB4
/* 079DF4 800E0944 0000902D */   daddu $s2, $zero, $zero
/* 079DF8 800E0948 08038270 */  j     .L800E09C0
/* 079DFC 800E094C 00000000 */   nop   

.L800E0950:
/* 079E00 800E0950 3442FFFF */  ori   $v0, $v0, 0xffff
/* 079E04 800E0954 8E230000 */  lw    $v1, ($s1)
/* 079E08 800E0958 2404FFFF */  addiu $a0, $zero, -1
/* 079E0C 800E095C A62400C6 */  sh    $a0, 0xc6($s1)
/* 079E10 800E0960 00621824 */  and   $v1, $v1, $v0
/* 079E14 800E0964 080382AD */  j     .L800E0AB4
/* 079E18 800E0968 AE230000 */   sw    $v1, ($s1)

.L800E096C:
/* 079E1C 800E096C 14400009 */  bnez  $v0, .L800E0994
/* 079E20 800E0970 32022000 */   andi  $v0, $s0, 0x2000
/* 079E24 800E0974 14400012 */  bnez  $v0, .L800E09C0
/* 079E28 800E0978 0000902D */   daddu $s2, $zero, $zero
/* 079E2C 800E097C 0C05173A */  jal   func_80145CE8
/* 079E30 800E0980 0200202D */   daddu $a0, $s0, $zero
/* 079E34 800E0984 1440000E */  bnez  $v0, .L800E09C0
/* 079E38 800E0988 3C03F7FF */   lui   $v1, 0xf7ff
/* 079E3C 800E098C 0803826A */  j     .L800E09A8
/* 079E40 800E0990 00000000 */   nop   

.L800E0994:
/* 079E44 800E0994 0C0394BE */  jal   func_800E52F8
/* 079E48 800E0998 00000000 */   nop   
/* 079E4C 800E099C 14400008 */  bnez  $v0, .L800E09C0
/* 079E50 800E09A0 24120001 */   addiu $s2, $zero, 1
/* 079E54 800E09A4 3C03F7FF */  lui   $v1, 0xf7ff
.L800E09A8:
/* 079E58 800E09A8 8E220000 */  lw    $v0, ($s1)
/* 079E5C 800E09AC 3463FFFF */  ori   $v1, $v1, 0xffff
/* 079E60 800E09B0 A63300C6 */  sh    $s3, 0xc6($s1)
/* 079E64 800E09B4 00431024 */  and   $v0, $v0, $v1
/* 079E68 800E09B8 080382AD */  j     .L800E0AB4
/* 079E6C 800E09BC AE220000 */   sw    $v0, ($s1)

.L800E09C0:
/* 079E70 800E09C0 862200C6 */  lh    $v0, 0xc6($s1)
/* 079E74 800E09C4 14500008 */  bne   $v0, $s0, .L800E09E8
/* 079E78 800E09C8 3C03F7FF */   lui   $v1, 0xf7ff
/* 079E7C 800E09CC 8E220000 */  lw    $v0, ($s1)
/* 079E80 800E09D0 3C030800 */  lui   $v1, 0x800
/* 079E84 800E09D4 00431024 */  and   $v0, $v0, $v1
/* 079E88 800E09D8 14400036 */  bnez  $v0, .L800E0AB4
/* 079E8C 800E09DC 00000000 */   nop   
/* 079E90 800E09E0 0803827F */  j     .L800E09FC
/* 079E94 800E09E4 A63000C6 */   sh    $s0, 0xc6($s1)

.L800E09E8:
/* 079E98 800E09E8 8E220000 */  lw    $v0, ($s1)
/* 079E9C 800E09EC 3463FFFF */  ori   $v1, $v1, 0xffff
/* 079EA0 800E09F0 00431024 */  and   $v0, $v0, $v1
/* 079EA4 800E09F4 AE220000 */  sw    $v0, ($s1)
/* 079EA8 800E09F8 A63000C6 */  sh    $s0, 0xc6($s1)
.L800E09FC:
/* 079EAC 800E09FC 12400009 */  beqz  $s2, .L800E0A24
/* 079EB0 800E0A00 00000000 */   nop   
/* 079EB4 800E0A04 0600000F */  bltz  $s0, .L800E0A44
/* 079EB8 800E0A08 00000000 */   nop   
/* 079EBC 800E0A0C 0C04417A */  jal   get_entity_by_index
/* 079EC0 800E0A10 0200202D */   daddu $a0, $s0, $zero
/* 079EC4 800E0A14 8C420000 */  lw    $v0, ($v0)
/* 079EC8 800E0A18 30421000 */  andi  $v0, $v0, 0x1000
/* 079ECC 800E0A1C 10400009 */  beqz  $v0, .L800E0A44
/* 079ED0 800E0A20 00000000 */   nop   
.L800E0A24:
/* 079ED4 800E0A24 922200B4 */  lbu   $v0, 0xb4($s1)
/* 079ED8 800E0A28 2C420003 */  sltiu $v0, $v0, 3
/* 079EDC 800E0A2C 10400005 */  beqz  $v0, .L800E0A44
/* 079EE0 800E0A30 24040002 */   addiu $a0, $zero, 2
/* 079EE4 800E0A34 8E220004 */  lw    $v0, 4($s1)
/* 079EE8 800E0A38 34420010 */  ori   $v0, $v0, 0x10
/* 079EEC 800E0A3C 0C03BCF5 */  jal   func_800EF3D4
/* 079EF0 800E0A40 AE220004 */   sw    $v0, 4($s1)
.L800E0A44:
/* 079EF4 800E0A44 8E220004 */  lw    $v0, 4($s1)
/* 079EF8 800E0A48 30420010 */  andi  $v0, $v0, 0x10
/* 079EFC 800E0A4C 14400007 */  bnez  $v0, .L800E0A6C
/* 079F00 800E0A50 00000000 */   nop   
/* 079F04 800E0A54 0C03BCF5 */  jal   func_800EF3D4
/* 079F08 800E0A58 0000202D */   daddu $a0, $zero, $zero
/* 079F0C 800E0A5C 0C03BCE9 */  jal   func_800EF3A4
/* 079F10 800E0A60 00000000 */   nop   
/* 079F14 800E0A64 080382AD */  j     .L800E0AB4
/* 079F18 800E0A68 00000000 */   nop   

.L800E0A6C:
/* 079F1C 800E0A6C 3C108011 */  lui   $s0, 0x8011
/* 079F20 800E0A70 2610C958 */  addiu $s0, $s0, -0x36a8
/* 079F24 800E0A74 8E020000 */  lw    $v0, ($s0)
/* 079F28 800E0A78 1440000C */  bnez  $v0, .L800E0AAC
/* 079F2C 800E0A7C 3C06802B */   lui   $a2, 0x802b
/* 079F30 800E0A80 3C0400E2 */  lui   $a0, 0xe2
/* 079F34 800E0A84 24840110 */  addiu $a0, $a0, 0x110
/* 079F38 800E0A88 3C0500E2 */  lui   $a1, 0xe2
/* 079F3C 800E0A8C 24A50EB0 */  addiu $a1, $a1, 0xeb0
/* 079F40 800E0A90 0C00A5CF */  jal   dma_copy
/* 079F44 800E0A94 34C67000 */   ori   $a2, $a2, 0x7000
/* 079F48 800E0A98 3C02802B */  lui   $v0, 0x802b
/* 079F4C 800E0A9C 244270B4 */  addiu $v0, $v0, 0x70b4
/* 079F50 800E0AA0 10400004 */  beqz  $v0, .L800E0AB4
/* 079F54 800E0AA4 AE020000 */   sw    $v0, ($s0)
/* 079F58 800E0AA8 8E020000 */  lw    $v0, ($s0)
.L800E0AAC:
/* 079F5C 800E0AAC 0040F809 */  jalr  $v0
/* 079F60 800E0AB0 00000000 */  nop   
.L800E0AB4:
/* 079F64 800E0AB4 8FBF0020 */  lw    $ra, 0x20($sp)
/* 079F68 800E0AB8 8FB3001C */  lw    $s3, 0x1c($sp)
/* 079F6C 800E0ABC 8FB20018 */  lw    $s2, 0x18($sp)
/* 079F70 800E0AC0 8FB10014 */  lw    $s1, 0x14($sp)
/* 079F74 800E0AC4 8FB00010 */  lw    $s0, 0x10($sp)
/* 079F78 800E0AC8 03E00008 */  jr    $ra
/* 079F7C 800E0ACC 27BD0028 */   addiu $sp, $sp, 0x28

