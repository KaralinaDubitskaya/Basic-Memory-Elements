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
static const char *ng0 = "E:/xilinx/projects/lab3-4/signature_analizer.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_1873684876_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1312U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3928);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t5 = t1;
    memset(t5, (unsigned char)2, 9U);
    t6 = (t0 + 4040);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 9U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 4040);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 9U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

}

static void work_a_1873684876_3212880686_p_1(char *t0)
{
    int t1;
    int t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    int t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    unsigned char t37;
    char *t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    xsi_set_current_line(58, ng0);
    if (0 > 9)
        goto LAB6;

LAB7:    if (1 == -1)
        goto LAB11;

LAB12:    t1 = 9;

LAB8:    t2 = (t1 - 1);
    t3 = (t0 + 6203);
    *((int *)t3) = t2;
    t4 = (t0 + 6207);
    *((int *)t4) = 1;
    t5 = t2;
    t6 = 1;

LAB2:    if (t5 >= t6)
        goto LAB3;

LAB5:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t16 = *((unsigned char *)t4);
    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    if (0 > 9)
        goto LAB24;

LAB25:    if (1 == -1)
        goto LAB29;

LAB30:    t1 = 9;

LAB26:    t2 = (t1 - 1);
    t5 = (t2 - 0);
    t12 = (t5 * 1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t3 = (t7 + t14);
    t17 = *((unsigned char *)t3);
    t27 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t16, t17);
    t8 = (t0 + 4104);
    t9 = (t8 + 56U);
    t15 = *((char **)t9);
    t18 = (t15 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t27;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);
    t3 = (t0 + 3944);
    *((int *)t3) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(59, ng0);
    t7 = (t0 + 6211);
    t9 = (t0 + 6203);
    t10 = *((int *)t9);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 9, 1, *((int *)t9));
    t13 = (1U * t12);
    t14 = (0 + t13);
    t15 = (t7 + t14);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 6203);
    t1 = *((int *)t3);
    t2 = (t1 - 1);
    t10 = (t2 - 0);
    t12 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, t2);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t7 = (t4 + t14);
    t16 = *((unsigned char *)t7);
    t8 = (t0 + 6203);
    t11 = *((int *)t8);
    t20 = (t11 - 0);
    t23 = (t20 * 1);
    t24 = (1 * t23);
    t25 = (0U + t24);
    t9 = (t0 + 4104);
    t15 = (t9 + 56U);
    t18 = *((char **)t15);
    t19 = (t18 + 56U);
    t26 = *((char **)t19);
    *((unsigned char *)t26) = t16;
    xsi_driver_first_trans_delta(t9, t25, 1, 0LL);

LAB14:
LAB4:    t3 = (t0 + 6203);
    t5 = *((int *)t3);
    t4 = (t0 + 6207);
    t6 = *((int *)t4);
    if (t5 == t6)
        goto LAB5;

LAB23:    t1 = (t5 + -1);
    t5 = t1;
    t7 = (t0 + 6203);
    *((int *)t7) = t5;
    goto LAB2;

LAB6:    if (1 == 1)
        goto LAB9;

LAB10:    t1 = 0;
    goto LAB8;

LAB9:    t1 = 9;
    goto LAB8;

LAB11:    t1 = 0;
    goto LAB8;

LAB13:    xsi_set_current_line(60, ng0);
    t18 = (t0 + 1832U);
    t19 = *((char **)t18);
    t18 = (t0 + 6203);
    t20 = *((int *)t18);
    t21 = (t20 - 1);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, t21);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t26 = (t19 + t25);
    t27 = *((unsigned char *)t26);
    t28 = (t0 + 1832U);
    t29 = *((char **)t28);
    if (0 > 9)
        goto LAB16;

LAB17:    if (1 == -1)
        goto LAB21;

LAB22:    t30 = 9;

LAB18:    t31 = (t30 - 1);
    t32 = (t31 - 0);
    t33 = (t32 * 1);
    t34 = (1U * t33);
    t35 = (0 + t34);
    t28 = (t29 + t35);
    t36 = *((unsigned char *)t28);
    t37 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t27, t36);
    t38 = (t0 + 6203);
    t39 = *((int *)t38);
    t40 = (t39 - 0);
    t41 = (t40 * 1);
    t42 = (1 * t41);
    t43 = (0U + t42);
    t44 = (t0 + 4104);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    *((unsigned char *)t48) = t37;
    xsi_driver_first_trans_delta(t44, t43, 1, 0LL);
    goto LAB14;

LAB16:    if (1 == 1)
        goto LAB19;

LAB20:    t30 = 0;
    goto LAB18;

LAB19:    t30 = 9;
    goto LAB18;

LAB21:    t30 = 0;
    goto LAB18;

LAB24:    if (1 == 1)
        goto LAB27;

LAB28:    t1 = 0;
    goto LAB26;

LAB27:    t1 = 9;
    goto LAB26;

LAB29:    t1 = 0;
    goto LAB26;

}

static void work_a_1873684876_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4168);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 9U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3960);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1873684876_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1873684876_3212880686_p_0,(void *)work_a_1873684876_3212880686_p_1,(void *)work_a_1873684876_3212880686_p_2};
	xsi_register_didat("work_a_1873684876_3212880686", "isim/signature_analizer_TB_isim_beh.exe.sim/work/a_1873684876_3212880686.didat");
	xsi_register_executes(pe);
}
