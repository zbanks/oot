glabel func_80984C68
/* 00088 80984C68 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0008C 80984C6C 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 00090 80984C70 AC8E0260 */  sw      $t6, 0x0260($a0)           ## 00000260
/* 00094 80984C74 AC800264 */  sw      $zero, 0x0264($a0)         ## 00000264
/* 00098 80984C78 AC80026C */  sw      $zero, 0x026C($a0)         ## 0000026C
/* 0009C 80984C7C AC800270 */  sw      $zero, 0x0270($a0)         ## 00000270
/* 000A0 80984C80 A08000C8 */  sb      $zero, 0x00C8($a0)         ## 000000C8
/* 000A4 80984C84 03E00008 */  jr      $ra                        
/* 000A8 80984C88 E4840268 */  swc1    $f4, 0x0268($a0)           ## 00000268

