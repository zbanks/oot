glabel func_809F2118
/* 00638 809F2118 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0063C 809F211C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00640 809F2120 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00644 809F2124 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00648 809F2128 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0064C 809F212C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00650 809F2130 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00654 809F2134 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00658 809F2138 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0065C 809F213C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00660 809F2140 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00664 809F2144 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00668 809F2148 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 0066C 809F214C 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 00670 809F2150 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00674 809F2154 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 00678 809F2158 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 0067C 809F215C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00680 809F2160 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00684 809F2164 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00688 809F2168 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0068C 809F216C A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 00690 809F2170 860F0242 */  lh      $t7, 0x0242($s0)           ## 00000242
/* 00694 809F2174 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00698 809F2178 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0069C 809F217C 15E00003 */  bne     $t7, $zero, .L809F218C     
/* 006A0 809F2180 2405387F */  addiu   $a1, $zero, 0x387F         ## $a1 = 0000387F
/* 006A4 809F2184 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 006A8 809F2188 A6180242 */  sh      $t8, 0x0242($s0)           ## 00000242
.L809F218C:
/* 006AC 809F218C 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 006B0 809F2190 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 006B4 809F2194 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 006B8 809F2198 30590008 */  andi    $t9, $v0, 0x0008           ## $t9 = 00000000
/* 006BC 809F219C 13200008 */  beq     $t9, $zero, .L809F21C0     
/* 006C0 809F21A0 30480001 */  andi    $t0, $v0, 0x0001           ## $t0 = 00000000
/* 006C4 809F21A4 11000006 */  beq     $t0, $zero, .L809F21C0     
/* 006C8 809F21A8 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 006CC 809F21AC 44812000 */  mtc1    $at, $f4                   ## $f4 = 9.00
/* 006D0 809F21B0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 006D4 809F21B4 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 006D8 809F21B8 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 006DC 809F21BC E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L809F21C0:
/* 006E0 809F21C0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 006E4 809F21C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 006E8 809F21C8 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 006EC 809F21CC 2418104D */  addiu   $t8, $zero, 0x104D         ## $t8 = 0000104D
/* 006F0 809F21D0 3C0C8012 */  lui     $t4, 0x8012                ## $t4 = 80120000
/* 006F4 809F21D4 460A403C */  c.lt.s  $f8, $f10                  
/* 006F8 809F21D8 3305FFFF */  andi    $a1, $t8, 0xFFFF           ## $a1 = 0000104D
/* 006FC 809F21DC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00700 809F21E0 45020018 */  bc1fl   .L809F2244                 
/* 00704 809F21E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00708 809F21E8 8D29E700 */  lw      $t1, -0x1900($t1)          ## 8015E700
/* 0070C 809F21EC 8D4A71C8 */  lw      $t2, 0x71C8($t2)           ## 801271C8
/* 00710 809F21F0 918C71FA */  lbu     $t4, 0x71FA($t4)           ## 801271FA
/* 00714 809F21F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00718 809F21F8 012A5824 */  and     $t3, $t1, $t2              
/* 0071C 809F21FC 018B6807 */  srav    $t5, $t3, $t4              
/* 00720 809F2200 15A10004 */  bne     $t5, $at, .L809F2214       
/* 00724 809F2204 240F0078 */  addiu   $t7, $zero, 0x0078         ## $t7 = 00000078
/* 00728 809F2208 240E0077 */  addiu   $t6, $zero, 0x0077         ## $t6 = 00000077
/* 0072C 809F220C 10000002 */  beq     $zero, $zero, .L809F2218   
/* 00730 809F2210 AE0E0254 */  sw      $t6, 0x0254($s0)           ## 00000254
.L809F2214:
/* 00734 809F2214 AE0F0254 */  sw      $t7, 0x0254($s0)           ## 00000254
.L809F2218:
/* 00738 809F2218 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 0073C 809F221C 0C042DA0 */  jal     func_8010B680              
/* 00740 809F2220 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00744 809F2224 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00748 809F2228 3C08809F */  lui     $t0, %hi(func_809F25E4)    ## $t0 = 809F0000
/* 0074C 809F222C 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 00750 809F2230 250825E4 */  addiu   $t0, $t0, %lo(func_809F25E4) ## $t0 = 809F25E4
/* 00754 809F2234 A6190250 */  sh      $t9, 0x0250($s0)           ## 00000250
/* 00758 809F2238 AE08022C */  sw      $t0, 0x022C($s0)           ## 0000022C
/* 0075C 809F223C E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 00760 809F2240 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F2244:
/* 00764 809F2244 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00768 809F2248 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0076C 809F224C 03E00008 */  jr      $ra                        
/* 00770 809F2250 00000000 */  nop

