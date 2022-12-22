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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "IN1 = %d, IN2 = %d, CIN = %b, sum = %d, carry = %b";
static const char *ng1 = "/home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/negative_tb.v";
static unsigned int ng2[] = {6U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {9U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {24U, 0U};
static unsigned int ng7[] = {11U, 0U};

void Monitor_59_1(char *);
void Monitor_59_1(char *);


static void Monitor_59_1_Func(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 1608);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t0 + 1768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1928);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t0 + 1048U);
    t11 = *((char **)t10);
    t10 = (t0 + 1208U);
    t12 = *((char **)t10);
    xsi_vlogfile_write(1, 0, 3, ng0, 6, t0, (char)118, t3, 8, (char)118, t6, 8, (char)118, t9, 1, (char)118, t11, 8, (char)118, t12, 1);

LAB1:    return;
}

static void Initial_54_0(char *t0)
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
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 2840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng1);

LAB4:    xsi_set_current_line(56, ng1);
    t2 = (t0 + 1768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    *((unsigned int *)t3) = t9;
    *((unsigned int *)t6) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB6;

LAB5:    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t16 = (t0 + 1768);
    xsi_vlogvar_assign_value(t16, t3, 0, 0, 8);
    xsi_set_current_line(59, ng1);
    Monitor_59_1(t0);
    xsi_set_current_line(63, ng1);
    t2 = (t0 + 2648);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB6:    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t7);
    *((unsigned int *)t3) = (t10 | t11);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t12 | t13);
    goto LAB5;

LAB7:    xsi_set_current_line(63, ng1);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(63, ng1);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 8);
    xsi_set_current_line(64, ng1);
    t2 = (t0 + 1768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    *((unsigned int *)t3) = t9;
    *((unsigned int *)t6) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB9;

LAB8:    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t16 = (t0 + 1768);
    xsi_vlogvar_assign_value(t16, t3, 0, 0, 8);
    xsi_set_current_line(65, ng1);
    t2 = (t0 + 2648);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB9:    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t7);
    *((unsigned int *)t3) = (t10 | t11);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t12 | t13);
    goto LAB8;

LAB10:    xsi_set_current_line(65, ng1);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(65, ng1);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 8);
    xsi_set_current_line(66, ng1);
    t2 = (t0 + 1768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    *((unsigned int *)t3) = t9;
    *((unsigned int *)t6) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB12;

LAB11:    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t16 = (t0 + 1768);
    xsi_vlogvar_assign_value(t16, t3, 0, 0, 8);
    xsi_set_current_line(67, ng1);
    t2 = (t0 + 2648);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB12:    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t7);
    *((unsigned int *)t3) = (t10 | t11);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t12 | t13);
    goto LAB11;

LAB13:    xsi_set_current_line(67, ng1);
    t4 = ((char*)((ng6)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(67, ng1);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 8);
    xsi_set_current_line(68, ng1);
    t2 = (t0 + 1768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    *((unsigned int *)t3) = t9;
    *((unsigned int *)t6) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB15;

LAB14:    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t16 = (t0 + 1768);
    xsi_vlogvar_assign_value(t16, t3, 0, 0, 8);
    xsi_set_current_line(69, ng1);
    t2 = (t0 + 2648);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB15:    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t7);
    *((unsigned int *)t3) = (t10 | t11);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t12 | t13);
    goto LAB14;

LAB16:    xsi_set_current_line(69, ng1);
    xsi_vlog_finish(1);
    goto LAB1;

}

void Monitor_59_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2896);
    t2 = (t0 + 3408);
    xsi_vlogfile_monitor((void *)Monitor_59_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_10362373820083753400_4038579449_init()
{
	static char *pe[] = {(void *)Initial_54_0,(void *)Monitor_59_1};
	xsi_register_didat("work_m_10362373820083753400_4038579449", "isim/negative_tb_isim_beh.exe.sim/work/m_10362373820083753400_4038579449.didat");
	xsi_register_executes(pe);
}
