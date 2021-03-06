.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_801274C0
/* 0BDBC0 801274C0 3C0A800A */  lui   $t2, 0x800a
/* 0BDBC4 801274C4 254AA66C */  addiu $t2, $t2, -0x5994
/* 0BDBC8 801274C8 3C028015 */  lui   $v0, 0x8015
/* 0BDBCC 801274CC 2442C340 */  addiu $v0, $v0, -0x3cc0
/* 0BDBD0 801274D0 00054880 */  sll   $t1, $a1, 2
/* 0BDBD4 801274D4 01254821 */  addu  $t1, $t1, $a1
/* 0BDBD8 801274D8 00094880 */  sll   $t1, $t1, 2
/* 0BDBDC 801274DC 01224821 */  addu  $t1, $t1, $v0
/* 0BDBE0 801274E0 8D480000 */  lw    $t0, ($t2)
/* 0BDBE4 801274E4 3C050700 */  lui   $a1, 0x700
/* 0BDBE8 801274E8 0100582D */  daddu $t3, $t0, $zero
/* 0BDBEC 801274EC 25080008 */  addiu $t0, $t0, 8
/* 0BDBF0 801274F0 AD480000 */  sw    $t0, ($t2)
/* 0BDBF4 801274F4 91220005 */  lbu   $v0, 5($t1)
/* 0BDBF8 801274F8 25030008 */  addiu $v1, $t0, 8
/* 0BDBFC 801274FC AD640004 */  sw    $a0, 4($t3)
/* 0BDC00 80127500 AD430000 */  sw    $v1, ($t2)
/* 0BDC04 80127504 3C03FD48 */  lui   $v1, 0xfd48
/* 0BDC08 80127508 00021042 */  srl   $v0, $v0, 1
/* 0BDC0C 8012750C 2442FFFF */  addiu $v0, $v0, -1
/* 0BDC10 80127510 30420FFF */  andi  $v0, $v0, 0xfff
/* 0BDC14 80127514 00431025 */  or    $v0, $v0, $v1
/* 0BDC18 80127518 AD620000 */  sw    $v0, ($t3)
/* 0BDC1C 8012751C 91220005 */  lbu   $v0, 5($t1)
/* 0BDC20 80127520 25030010 */  addiu $v1, $t0, 0x10
/* 0BDC24 80127524 AD050004 */  sw    $a1, 4($t0)
/* 0BDC28 80127528 AD430000 */  sw    $v1, ($t2)
/* 0BDC2C 8012752C 3C03E600 */  lui   $v1, 0xe600
/* 0BDC30 80127530 AD030008 */  sw    $v1, 8($t0)
/* 0BDC34 80127534 25030018 */  addiu $v1, $t0, 0x18
/* 0BDC38 80127538 AD00000C */  sw    $zero, 0xc($t0)
/* 0BDC3C 8012753C AD430000 */  sw    $v1, ($t2)
/* 0BDC40 80127540 3C03F400 */  lui   $v1, 0xf400
/* 0BDC44 80127544 AD030010 */  sw    $v1, 0x10($t0)
/* 0BDC48 80127548 3C03F548 */  lui   $v1, 0xf548
/* 0BDC4C 8012754C 00021042 */  srl   $v0, $v0, 1
/* 0BDC50 80127550 24420007 */  addiu $v0, $v0, 7
/* 0BDC54 80127554 000210C2 */  srl   $v0, $v0, 3
/* 0BDC58 80127558 00021240 */  sll   $v0, $v0, 9
/* 0BDC5C 8012755C 00431025 */  or    $v0, $v0, $v1
/* 0BDC60 80127560 AD020000 */  sw    $v0, ($t0)
/* 0BDC64 80127564 91220005 */  lbu   $v0, 5($t1)
/* 0BDC68 80127568 91240006 */  lbu   $a0, 6($t1)
/* 0BDC6C 8012756C 25030020 */  addiu $v1, $t0, 0x20
/* 0BDC70 80127570 AD430000 */  sw    $v1, ($t2)
/* 0BDC74 80127574 3C03E700 */  lui   $v1, 0xe700
/* 0BDC78 80127578 AD030018 */  sw    $v1, 0x18($t0)
/* 0BDC7C 8012757C 25030028 */  addiu $v1, $t0, 0x28
/* 0BDC80 80127580 AD00001C */  sw    $zero, 0x1c($t0)
/* 0BDC84 80127584 AD430000 */  sw    $v1, ($t2)
/* 0BDC88 80127588 25030030 */  addiu $v1, $t0, 0x30
/* 0BDC8C 8012758C 2442FFFF */  addiu $v0, $v0, -1
/* 0BDC90 80127590 00021040 */  sll   $v0, $v0, 1
/* 0BDC94 80127594 30420FFF */  andi  $v0, $v0, 0xfff
/* 0BDC98 80127598 00021300 */  sll   $v0, $v0, 0xc
/* 0BDC9C 8012759C 2484FFFF */  addiu $a0, $a0, -1
/* 0BDCA0 801275A0 00042080 */  sll   $a0, $a0, 2
/* 0BDCA4 801275A4 30840FFF */  andi  $a0, $a0, 0xfff
/* 0BDCA8 801275A8 00852025 */  or    $a0, $a0, $a1
/* 0BDCAC 801275AC 00441025 */  or    $v0, $v0, $a0
/* 0BDCB0 801275B0 AD020014 */  sw    $v0, 0x14($t0)
/* 0BDCB4 801275B4 91220005 */  lbu   $v0, 5($t1)
/* 0BDCB8 801275B8 3C050400 */  lui   $a1, 0x400
/* 0BDCBC 801275BC AD000024 */  sw    $zero, 0x24($t0)
/* 0BDCC0 801275C0 AD430000 */  sw    $v1, ($t2)
/* 0BDCC4 801275C4 3C03F200 */  lui   $v1, 0xf200
/* 0BDCC8 801275C8 AD030028 */  sw    $v1, 0x28($t0)
/* 0BDCCC 801275CC 3C03F540 */  lui   $v1, 0xf540
/* 0BDCD0 801275D0 25040038 */  addiu $a0, $t0, 0x38
/* 0BDCD4 801275D4 00021042 */  srl   $v0, $v0, 1
/* 0BDCD8 801275D8 24420007 */  addiu $v0, $v0, 7
/* 0BDCDC 801275DC 000210C2 */  srl   $v0, $v0, 3
/* 0BDCE0 801275E0 00021240 */  sll   $v0, $v0, 9
/* 0BDCE4 801275E4 00431025 */  or    $v0, $v0, $v1
/* 0BDCE8 801275E8 AD020020 */  sw    $v0, 0x20($t0)
/* 0BDCEC 801275EC 91220005 */  lbu   $v0, 5($t1)
/* 0BDCF0 801275F0 91230006 */  lbu   $v1, 6($t1)
/* 0BDCF4 801275F4 34A50400 */  ori   $a1, $a1, 0x400
/* 0BDCF8 801275F8 AD440000 */  sw    $a0, ($t2)
/* 0BDCFC 801275FC 3C04E400 */  lui   $a0, 0xe400
/* 0BDD00 80127600 2442FFFF */  addiu $v0, $v0, -1
/* 0BDD04 80127604 00021080 */  sll   $v0, $v0, 2
/* 0BDD08 80127608 30420FFF */  andi  $v0, $v0, 0xfff
/* 0BDD0C 8012760C 00021300 */  sll   $v0, $v0, 0xc
/* 0BDD10 80127610 2463FFFF */  addiu $v1, $v1, -1
/* 0BDD14 80127614 00031880 */  sll   $v1, $v1, 2
/* 0BDD18 80127618 30630FFF */  andi  $v1, $v1, 0xfff
/* 0BDD1C 8012761C 00431025 */  or    $v0, $v0, $v1
/* 0BDD20 80127620 AD02002C */  sw    $v0, 0x2c($t0)
/* 0BDD24 80127624 91230005 */  lbu   $v1, 5($t1)
/* 0BDD28 80127628 91220006 */  lbu   $v0, 6($t1)
/* 0BDD2C 8012762C 00C31821 */  addu  $v1, $a2, $v1
/* 0BDD30 80127630 00031880 */  sll   $v1, $v1, 2
/* 0BDD34 80127634 30630FFF */  andi  $v1, $v1, 0xfff
/* 0BDD38 80127638 00031B00 */  sll   $v1, $v1, 0xc
/* 0BDD3C 8012763C 00E21021 */  addu  $v0, $a3, $v0
/* 0BDD40 80127640 00021080 */  sll   $v0, $v0, 2
/* 0BDD44 80127644 30420FFF */  andi  $v0, $v0, 0xfff
/* 0BDD48 80127648 00441025 */  or    $v0, $v0, $a0
/* 0BDD4C 8012764C 00621825 */  or    $v1, $v1, $v0
/* 0BDD50 80127650 00063080 */  sll   $a2, $a2, 2
/* 0BDD54 80127654 30C60FFF */  andi  $a2, $a2, 0xfff
/* 0BDD58 80127658 00063300 */  sll   $a2, $a2, 0xc
/* 0BDD5C 8012765C 00073880 */  sll   $a3, $a3, 2
/* 0BDD60 80127660 30E70FFF */  andi  $a3, $a3, 0xfff
/* 0BDD64 80127664 00C73025 */  or    $a2, $a2, $a3
/* 0BDD68 80127668 25020040 */  addiu $v0, $t0, 0x40
/* 0BDD6C 8012766C AD030030 */  sw    $v1, 0x30($t0)
/* 0BDD70 80127670 AD060034 */  sw    $a2, 0x34($t0)
/* 0BDD74 80127674 AD420000 */  sw    $v0, ($t2)
/* 0BDD78 80127678 3C02E100 */  lui   $v0, 0xe100
/* 0BDD7C 8012767C AD020038 */  sw    $v0, 0x38($t0)
/* 0BDD80 80127680 25020048 */  addiu $v0, $t0, 0x48
/* 0BDD84 80127684 AD00003C */  sw    $zero, 0x3c($t0)
/* 0BDD88 80127688 AD420000 */  sw    $v0, ($t2)
/* 0BDD8C 8012768C 3C02F100 */  lui   $v0, 0xf100
/* 0BDD90 80127690 AD020040 */  sw    $v0, 0x40($t0)
/* 0BDD94 80127694 03E00008 */  jr    $ra
/* 0BDD98 80127698 AD050044 */   sw    $a1, 0x44($t0)

