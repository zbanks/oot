glabel func_80A0C7EC
/* 0112C 80A0C7EC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01130 80A0C7F0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01134 80A0C7F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01138 80A0C7F8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0113C 80A0C7FC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01140 80A0C800 8E0604C8 */  lw      $a2, 0x04C8($s0)           ## 000004C8
/* 01144 80A0C804 0C282FDB */  jal     func_80A0BF6C              
/* 01148 80A0C808 260704BA */  addiu   $a3, $s0, 0x04BA           ## $a3 = 000004BA
/* 0114C 80A0C80C 10400014 */  beq     $v0, $zero, .L80A0C860     
/* 01150 80A0C810 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 01154 80A0C814 860E04C2 */  lh      $t6, 0x04C2($s0)           ## 000004C2
/* 01158 80A0C818 3C0580A1 */  lui     $a1, %hi(D_80A0DFEC)       ## $a1 = 80A10000
/* 0115C 80A0C81C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01160 80A0C820 15C0000F */  bne     $t6, $zero, .L80A0C860     
/* 01164 80A0C824 24A5DFEC */  addiu   $a1, $a1, %lo(D_80A0DFEC)  ## $a1 = 80A0DFEC
/* 01168 80A0C828 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 0116C 80A0C82C 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 01170 80A0C830 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01174 80A0C834 39F88000 */  xori    $t8, $t7, 0x8000           ## $t8 = FFFF8000
/* 01178 80A0C838 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 0117C 80A0C83C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01180 80A0C840 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01184 80A0C844 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 01188 80A0C848 0C00D3B0 */  jal     func_80034EC0              
/* 0118C 80A0C84C E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 01190 80A0C850 3C1980A1 */  lui     $t9, %hi(func_80A0C474)    ## $t9 = 80A10000
/* 01194 80A0C854 2739C474 */  addiu   $t9, $t9, %lo(func_80A0C474) ## $t9 = 80A0C474
/* 01198 80A0C858 10000075 */  beq     $zero, $zero, .L80A0CA30   
/* 0119C 80A0C85C AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
.L80A0C860:
/* 011A0 80A0C860 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 011A4 80A0C864 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 011A8 80A0C868 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 011AC 80A0C86C 860804B6 */  lh      $t0, 0x04B6($s0)           ## 000004B6
/* 011B0 80A0C870 860904BA */  lh      $t1, 0x04BA($s0)           ## 000004BA
/* 011B4 80A0C874 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011B8 80A0C878 00481823 */  subu    $v1, $v0, $t0              
/* 011BC 80A0C87C 00031C00 */  sll     $v1, $v1, 16               
/* 011C0 80A0C880 1920000A */  blez    $t1, .L80A0C8AC            
/* 011C4 80A0C884 00031C03 */  sra     $v1, $v1, 16               
/* 011C8 80A0C888 960B04B8 */  lhu     $t3, 0x04B8($s0)           ## 000004B8
/* 011CC 80A0C88C 306AFFFF */  andi    $t2, $v1, 0xFFFF           ## $t2 = 00000000
/* 011D0 80A0C890 014B082A */  slt     $at, $t2, $t3              
/* 011D4 80A0C894 5020000E */  beql    $at, $zero, .L80A0C8D0     
/* 011D8 80A0C898 860804C0 */  lh      $t0, 0x04C0($s0)           ## 000004C0
/* 011DC 80A0C89C 860C04C0 */  lh      $t4, 0x04C0($s0)           ## 000004C0
/* 011E0 80A0C8A0 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 011E4 80A0C8A4 10000009 */  beq     $zero, $zero, .L80A0C8CC   
/* 011E8 80A0C8A8 A60D04C0 */  sh      $t5, 0x04C0($s0)           ## 000004C0
.L80A0C8AC:
/* 011EC 80A0C8AC 960E04B8 */  lhu     $t6, 0x04B8($s0)           ## 000004B8
/* 011F0 80A0C8B0 306FFFFF */  andi    $t7, $v1, 0xFFFF           ## $t7 = 00000000
/* 011F4 80A0C8B4 01CF082A */  slt     $at, $t6, $t7              
/* 011F8 80A0C8B8 50200005 */  beql    $at, $zero, .L80A0C8D0     
/* 011FC 80A0C8BC 860804C0 */  lh      $t0, 0x04C0($s0)           ## 000004C0
/* 01200 80A0C8C0 861804C0 */  lh      $t8, 0x04C0($s0)           ## 000004C0
/* 01204 80A0C8C4 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 01208 80A0C8C8 A61904C0 */  sh      $t9, 0x04C0($s0)           ## 000004C0
.L80A0C8CC:
/* 0120C 80A0C8CC 860804C0 */  lh      $t0, 0x04C0($s0)           ## 000004C0
.L80A0C8D0:
/* 01210 80A0C8D0 05030003 */  bgezl   $t0, .L80A0C8E0            
/* 01214 80A0C8D4 A60304B8 */  sh      $v1, 0x04B8($s0)           ## 000004B8
/* 01218 80A0C8D8 A60004C0 */  sh      $zero, 0x04C0($s0)         ## 000004C0
/* 0121C 80A0C8DC A60304B8 */  sh      $v1, 0x04B8($s0)           ## 000004B8
.L80A0C8E0:
/* 01220 80A0C8E0 0C282F8D */  jal     func_80A0BE34              
/* 01224 80A0C8E4 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 01228 80A0C8E8 10400009 */  beq     $v0, $zero, .L80A0C910     
/* 0122C 80A0C8EC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01230 80A0C8F0 860904C2 */  lh      $t1, 0x04C2($s0)           ## 000004C2
/* 01234 80A0C8F4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01238 80A0C8F8 55200006 */  bnel    $t1, $zero, .L80A0C914     
/* 0123C 80A0C8FC 44811000 */  mtc1    $at, $f2                   ## $f2 = 200.00
/* 01240 80A0C900 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 01244 80A0C904 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 01248 80A0C908 10000003 */  beq     $zero, $zero, .L80A0C918   
/* 0124C 80A0C90C 46000086 */  mov.s   $f2, $f0                   
.L80A0C910:
/* 01250 80A0C910 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.00
.L80A0C914:
/* 01254 80A0C914 00000000 */  nop
.L80A0C918:
/* 01258 80A0C918 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0125C 80A0C91C 44051000 */  mfc1    $a1, $f2                   
/* 01260 80A0C920 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 01264 80A0C924 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 01268 80A0C928 260404C8 */  addiu   $a0, $s0, 0x04C8           ## $a0 = 000004C8
/* 0126C 80A0C92C 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 01270 80A0C930 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01274 80A0C934 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01278 80A0C938 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 0127C 80A0C93C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01280 80A0C940 8E0604C8 */  lw      $a2, 0x04C8($s0)           ## 000004C8
/* 01284 80A0C944 0C282FA8 */  jal     func_80A0BEA0              
/* 01288 80A0C948 860704BA */  lh      $a3, 0x04BA($s0)           ## 000004BA
/* 0128C 80A0C94C C7AC0030 */  lwc1    $f12, 0x0030($sp)          
/* 01290 80A0C950 0C03F494 */  jal     Math_atan2f              
/* 01294 80A0C954 C7AE0038 */  lwc1    $f14, 0x0038($sp)          
/* 01298 80A0C958 3C0180A1 */  lui     $at, %hi(D_80A0E1C4)       ## $at = 80A10000
/* 0129C 80A0C95C C42AE1C4 */  lwc1    $f10, %lo(D_80A0E1C4)($at) 
/* 012A0 80A0C960 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 012A4 80A0C964 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 012A8 80A0C968 460A0402 */  mul.s   $f16, $f0, $f10            
/* 012AC 80A0C96C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 012B0 80A0C970 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 012B4 80A0C974 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 012B8 80A0C978 4600848D */  trunc.w.s $f18, $f16                 
/* 012BC 80A0C97C 44059000 */  mfc1    $a1, $f18                  
/* 012C0 80A0C980 00000000 */  nop
/* 012C4 80A0C984 00052C00 */  sll     $a1, $a1, 16               
/* 012C8 80A0C988 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 012CC 80A0C98C 00052C03 */  sra     $a1, $a1, 16               
/* 012D0 80A0C990 8A0D00B4 */  lwl     $t5, 0x00B4($s0)           ## 000000B4
/* 012D4 80A0C994 9A0D00B7 */  lwr     $t5, 0x00B7($s0)           ## 000000B7
/* 012D8 80A0C998 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012DC 80A0C99C 2405317D */  addiu   $a1, $zero, 0x317D         ## $a1 = 0000317D
/* 012E0 80A0C9A0 AA0D0030 */  swl     $t5, 0x0030($s0)           ## 00000030
/* 012E4 80A0C9A4 BA0D0033 */  swr     $t5, 0x0033($s0)           ## 00000033
/* 012E8 80A0C9A8 960D00B8 */  lhu     $t5, 0x00B8($s0)           ## 000000B8
/* 012EC 80A0C9AC 0C00BE5D */  jal     func_8002F974              
/* 012F0 80A0C9B0 A60D0034 */  sh      $t5, 0x0034($s0)           ## 00000034
/* 012F4 80A0C9B4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 012F8 80A0C9B8 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 012FC 80A0C9BC C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 01300 80A0C9C0 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 01304 80A0C9C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01308 80A0C9C8 46002032 */  c.eq.s  $f4, $f0                   
/* 0130C 80A0C9CC 00000000 */  nop
/* 01310 80A0C9D0 4501000D */  bc1t    .L80A0CA08                 
/* 01314 80A0C9D4 00000000 */  nop
/* 01318 80A0C9D8 44813000 */  mtc1    $at, $f6                   ## $f6 = 13.00
/* 0131C 80A0C9DC 3C0141E0 */  lui     $at, 0x41E0                ## $at = 41E00000
/* 01320 80A0C9E0 46003032 */  c.eq.s  $f6, $f0                   
/* 01324 80A0C9E4 00000000 */  nop
/* 01328 80A0C9E8 45010007 */  bc1t    .L80A0CA08                 
/* 0132C 80A0C9EC 00000000 */  nop
/* 01330 80A0C9F0 44814000 */  mtc1    $at, $f8                   ## $f8 = 28.00
/* 01334 80A0C9F4 00000000 */  nop
/* 01338 80A0C9F8 46004032 */  c.eq.s  $f8, $f0                   
/* 0133C 80A0C9FC 00000000 */  nop
/* 01340 80A0CA00 45020004 */  bc1fl   .L80A0CA14                 
/* 01344 80A0CA04 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80A0CA08:
/* 01348 80A0CA08 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0134C 80A0CA0C 2405397C */  addiu   $a1, $zero, 0x397C         ## $a1 = 0000397C
/* 01350 80A0CA10 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80A0CA14:
/* 01354 80A0CA14 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01358 80A0CA18 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 0135C 80A0CA1C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01360 80A0CA20 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 01364 80A0CA24 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 01368 80A0CA28 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0136C 80A0CA2C E7AA0010 */  swc1    $f10, 0x0010($sp)          
.L80A0CA30:
/* 01370 80A0CA30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01374 80A0CA34 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01378 80A0CA38 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0137C 80A0CA3C 03E00008 */  jr      $ra                        
/* 01380 80A0CA40 00000000 */  nop


