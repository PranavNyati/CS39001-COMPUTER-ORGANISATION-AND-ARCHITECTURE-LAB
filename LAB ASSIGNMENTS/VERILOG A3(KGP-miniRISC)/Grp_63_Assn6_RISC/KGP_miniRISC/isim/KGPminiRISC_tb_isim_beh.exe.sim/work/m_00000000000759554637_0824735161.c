/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "time = %0d, out = %d, reg_val = %d";
static int ng1[] = {13, 0};
static const char *ng2 = "D:/ISE Project/KGPminiRISC/KGP_miniRISC/KGP_miniRISC/KGPminiRISC_tb.v";
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static int ng5[] = {16, 0};

void Monitor_88_1(char *);
void Monitor_88_1(char *);


static void Monitor_88_1_Func(char *t0)
{
    char t1[16];
    char t8[8];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t2 = xsi_vlog_time(t1, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 5324);
    t5 = *((char **)t3);
    t6 = ((((char*)(t5))) + 56U);
    t7 = *((char **)t6);
    t9 = (t0 + 5364);
    t10 = *((char **)t9);
    t11 = ((((char*)(t10))) + 72U);
    t12 = *((char **)t11);
    t13 = (t0 + 5404);
    t14 = *((char **)t13);
    t15 = ((((char*)(t14))) + 64U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng1)));
    xsi_vlog_generic_get_array_select_value(t8, 32, t7, t12, t16, 1, 1, t17, 32, 1);
    xsi_vlogfile_write(1, 0, 3, ng0, 4, t0, (char)118, t1, 64, (char)118, t4, 16, (char)119, t8, 32);

LAB1:    return;
}

static void Initial_84_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng2);

LAB4:    xsi_set_current_line(86, ng2);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(87, ng2);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng2);
    Monitor_88_1(t0);
    xsi_set_current_line(89, ng2);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(89, ng2);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(92, ng2);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 28000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(99, ng2);
    xsi_vlog_finish(1);
    goto LAB1;

}

static void Always_103_2(char *t0)
{
    char t8[8];
    char t19[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;

LAB0:    t1 = (t0 + 2776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(103, ng2);
    t2 = (t0 + 3592);
    *((int *)t2) = 1;
    t3 = (t0 + 2808);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(103, ng2);

LAB5:    xsi_set_current_line(104, ng2);
    t4 = (t0 + 5444);
    t5 = *((char **)t4);
    t6 = ((((char*)(t5))) + 56U);
    t7 = *((char **)t6);
    t9 = (t0 + 5484);
    t10 = *((char **)t9);
    t11 = ((((char*)(t10))) + 72U);
    t12 = *((char **)t11);
    t13 = (t0 + 5524);
    t14 = *((char **)t13);
    t15 = ((((char*)(t14))) + 64U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng5)));
    xsi_vlog_generic_get_array_select_value(t8, 32, t7, t12, t16, 1, 1, t17, 32, 1);
    t18 = ((char*)((ng4)));
    memset(t19, 0, 8);
    xsi_vlog_signed_equal(t19, 32, t8, 32, t18, 32);
    t20 = (t19 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t19);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(104, ng2);

LAB9:    xsi_set_current_line(105, ng2);
    xsi_vlog_finish(1);
    goto LAB8;

}

static void Always_109_3(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 3024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(109, ng2);

LAB4:    xsi_set_current_line(110, ng2);
    t2 = (t0 + 2832);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(110, ng2);
    t4 = (t0 + 1448);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1448);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

}

void Monitor_88_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3080);
    t2 = (t0 + 3608);
    xsi_vlogfile_monitor((void *)Monitor_88_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000000759554637_0824735161_init()
{
	static char *pe[] = {(void *)Initial_84_0,(void *)Always_103_2,(void *)Always_109_3,(void *)Monitor_88_1};
	xsi_register_didat("work_m_00000000000759554637_0824735161", "isim/KGPminiRISC_tb_isim_beh.exe.sim/work/m_00000000000759554637_0824735161.didat");
	xsi_register_executes(pe);
}
