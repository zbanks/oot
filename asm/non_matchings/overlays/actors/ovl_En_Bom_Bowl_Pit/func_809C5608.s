glabel func_809C5608
/* 007C8 809C5608 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007CC 809C560C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007D0 809C5610 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007D4 809C5614 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007D8 809C5618 0C042F6F */  jal     func_8010BDBC              
/* 007DC 809C561C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 007E0 809C5620 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 007E4 809C5624 54410019 */  bnel    $v0, $at, .L809C568C       
/* 007E8 809C5628 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007EC 809C562C 0C041AF2 */  jal     func_80106BC8              
/* 007F0 809C5630 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 007F4 809C5634 10400014 */  beq     $v0, $zero, .L809C5688     
/* 007F8 809C5638 3C04809C */  lui     $a0, %hi(D_809C5720)       ## $a0 = 809C0000
/* 007FC 809C563C 0C00084C */  jal     osSyncPrintf
              
/* 00800 809C5640 24845720 */  addiu   $a0, $a0, %lo(D_809C5720)  ## $a0 = 809C5720
/* 00804 809C5644 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00808 809C5648 2401003E */  addiu   $at, $zero, 0x003E         ## $at = 0000003E
/* 0080C 809C564C 3C04809C */  lui     $a0, %hi(D_809C574C)       ## $a0 = 809C0000
/* 00810 809C5650 8C4E0160 */  lw      $t6, 0x0160($v0)           ## 00000160
/* 00814 809C5654 240F0140 */  addiu   $t7, $zero, 0x0140         ## $t7 = 00000140
/* 00818 809C5658 2484574C */  addiu   $a0, $a0, %lo(D_809C574C)  ## $a0 = 809C574C
/* 0081C 809C565C 15C10004 */  bne     $t6, $at, .L809C5670       
/* 00820 809C5660 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00824 809C5664 0C00084C */  jal     osSyncPrintf
              
/* 00828 809C5668 A42FFA84 */  sh      $t7, -0x057C($at)          ## 8015FA84
/* 0082C 809C566C 8FA20018 */  lw      $v0, 0x0018($sp)           
.L809C5670:
/* 00830 809C5670 3C19809C */  lui     $t9, %hi(func_809C4E60)    ## $t9 = 809C0000
/* 00834 809C5674 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00838 809C5678 27394E60 */  addiu   $t9, $t9, %lo(func_809C4E60) ## $t9 = 809C4E60
/* 0083C 809C567C A4400156 */  sh      $zero, 0x0156($v0)         ## 00000156
/* 00840 809C5680 A0580164 */  sb      $t8, 0x0164($v0)           ## 00000164
/* 00844 809C5684 AC59014C */  sw      $t9, 0x014C($v0)           ## 0000014C
.L809C5688:
/* 00848 809C5688 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C568C:
/* 0084C 809C568C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00850 809C5690 03E00008 */  jr      $ra                        
/* 00854 809C5694 00000000 */  nop

