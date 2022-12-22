////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: rca_64bit_synthesis.v
// /___/   /\     Timestamp: Fri Aug 26 03:03:41 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim rca_64bit.ngc rca_64bit_synthesis.v 
// Device	: xc7a100t-1-csg324
// Input file	: rca_64bit.ngc
// Output file	: /home/shreyas/Xilinx/14.7/ISE_DS/xilinx_progs/RCA/netgen/synthesis/rca_64bit_synthesis.v
// # of Modules	: 1
// Design Name	: rca_64bit
// Xilinx        : /home/shreyas/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module rca_64bit (
  cin, cout, in1, in2, sum
);
  input cin;
  output cout;
  input [63 : 0] in1;
  input [63 : 0] in2;
  output [63 : 0] sum;
  wire in1_31_IBUF_0;
  wire in1_30_IBUF_1;
  wire in1_29_IBUF_2;
  wire in1_28_IBUF_3;
  wire in1_27_IBUF_4;
  wire in1_26_IBUF_5;
  wire in1_25_IBUF_6;
  wire in1_24_IBUF_7;
  wire in1_23_IBUF_8;
  wire in1_22_IBUF_9;
  wire in1_21_IBUF_10;
  wire in1_20_IBUF_11;
  wire in1_19_IBUF_12;
  wire in1_18_IBUF_13;
  wire in1_17_IBUF_14;
  wire in1_16_IBUF_15;
  wire in1_15_IBUF_16;
  wire in1_14_IBUF_17;
  wire in1_13_IBUF_18;
  wire in1_12_IBUF_19;
  wire in1_11_IBUF_20;
  wire in1_10_IBUF_21;
  wire in1_9_IBUF_22;
  wire in1_8_IBUF_23;
  wire in1_7_IBUF_24;
  wire in1_6_IBUF_25;
  wire in1_5_IBUF_26;
  wire in1_4_IBUF_27;
  wire in1_3_IBUF_28;
  wire in1_2_IBUF_29;
  wire in1_1_IBUF_30;
  wire in1_0_IBUF_31;
  wire in1_63_IBUF_32;
  wire in1_62_IBUF_33;
  wire in1_61_IBUF_34;
  wire in1_60_IBUF_35;
  wire in1_59_IBUF_36;
  wire in1_58_IBUF_37;
  wire in1_57_IBUF_38;
  wire in1_56_IBUF_39;
  wire in1_55_IBUF_40;
  wire in1_54_IBUF_41;
  wire in1_53_IBUF_42;
  wire in1_52_IBUF_43;
  wire in1_51_IBUF_44;
  wire in1_50_IBUF_45;
  wire in1_49_IBUF_46;
  wire in1_48_IBUF_47;
  wire in1_47_IBUF_48;
  wire in1_46_IBUF_49;
  wire in1_45_IBUF_50;
  wire in1_44_IBUF_51;
  wire in1_43_IBUF_52;
  wire in1_42_IBUF_53;
  wire in1_41_IBUF_54;
  wire in1_40_IBUF_55;
  wire in1_39_IBUF_56;
  wire in1_38_IBUF_57;
  wire in1_37_IBUF_58;
  wire in1_36_IBUF_59;
  wire in1_35_IBUF_60;
  wire in1_34_IBUF_61;
  wire in1_33_IBUF_62;
  wire in1_32_IBUF_63;
  wire in2_31_IBUF_64;
  wire in2_30_IBUF_65;
  wire in2_29_IBUF_66;
  wire in2_28_IBUF_67;
  wire in2_27_IBUF_68;
  wire in2_26_IBUF_69;
  wire in2_25_IBUF_70;
  wire in2_24_IBUF_71;
  wire in2_23_IBUF_72;
  wire in2_22_IBUF_73;
  wire in2_21_IBUF_74;
  wire in2_20_IBUF_75;
  wire in2_19_IBUF_76;
  wire in2_18_IBUF_77;
  wire in2_17_IBUF_78;
  wire in2_16_IBUF_79;
  wire in2_15_IBUF_80;
  wire in2_14_IBUF_81;
  wire in2_13_IBUF_82;
  wire in2_12_IBUF_83;
  wire in2_11_IBUF_84;
  wire in2_10_IBUF_85;
  wire in2_9_IBUF_86;
  wire in2_8_IBUF_87;
  wire in2_7_IBUF_88;
  wire in2_6_IBUF_89;
  wire in2_5_IBUF_90;
  wire in2_4_IBUF_91;
  wire in2_3_IBUF_92;
  wire in2_2_IBUF_93;
  wire in2_1_IBUF_94;
  wire in2_0_IBUF_95;
  wire in2_63_IBUF_96;
  wire in2_62_IBUF_97;
  wire in2_61_IBUF_98;
  wire in2_60_IBUF_99;
  wire in2_59_IBUF_100;
  wire in2_58_IBUF_101;
  wire in2_57_IBUF_102;
  wire in2_56_IBUF_103;
  wire in2_55_IBUF_104;
  wire in2_54_IBUF_105;
  wire in2_53_IBUF_106;
  wire in2_52_IBUF_107;
  wire in2_51_IBUF_108;
  wire in2_50_IBUF_109;
  wire in2_49_IBUF_110;
  wire in2_48_IBUF_111;
  wire in2_47_IBUF_112;
  wire in2_46_IBUF_113;
  wire in2_45_IBUF_114;
  wire in2_44_IBUF_115;
  wire in2_43_IBUF_116;
  wire in2_42_IBUF_117;
  wire in2_41_IBUF_118;
  wire in2_40_IBUF_119;
  wire in2_39_IBUF_120;
  wire in2_38_IBUF_121;
  wire in2_37_IBUF_122;
  wire in2_36_IBUF_123;
  wire in2_35_IBUF_124;
  wire in2_34_IBUF_125;
  wire in2_33_IBUF_126;
  wire in2_32_IBUF_127;
  wire cin_IBUF_128;
  wire sum_31_OBUF_129;
  wire sum_30_OBUF_130;
  wire sum_29_OBUF_131;
  wire sum_28_OBUF_132;
  wire sum_27_OBUF_133;
  wire sum_26_OBUF_134;
  wire sum_25_OBUF_135;
  wire sum_24_OBUF_136;
  wire sum_23_OBUF_137;
  wire sum_22_OBUF_138;
  wire sum_21_OBUF_139;
  wire sum_20_OBUF_140;
  wire sum_19_OBUF_141;
  wire sum_18_OBUF_142;
  wire sum_17_OBUF_143;
  wire sum_16_OBUF_144;
  wire sum_15_OBUF_145;
  wire sum_14_OBUF_146;
  wire sum_13_OBUF_147;
  wire sum_12_OBUF_148;
  wire sum_11_OBUF_149;
  wire sum_10_OBUF_150;
  wire sum_9_OBUF_151;
  wire sum_8_OBUF_152;
  wire sum_7_OBUF_153;
  wire sum_6_OBUF_154;
  wire sum_5_OBUF_155;
  wire sum_4_OBUF_156;
  wire sum_3_OBUF_157;
  wire sum_2_OBUF_158;
  wire sum_1_OBUF_159;
  wire sum_0_OBUF_160;
  wire carry_32bit;
  wire sum_63_OBUF_162;
  wire sum_62_OBUF_163;
  wire sum_61_OBUF_164;
  wire sum_60_OBUF_165;
  wire sum_59_OBUF_166;
  wire sum_58_OBUF_167;
  wire sum_57_OBUF_168;
  wire sum_56_OBUF_169;
  wire sum_55_OBUF_170;
  wire sum_54_OBUF_171;
  wire sum_53_OBUF_172;
  wire sum_52_OBUF_173;
  wire sum_51_OBUF_174;
  wire sum_50_OBUF_175;
  wire sum_49_OBUF_176;
  wire sum_48_OBUF_177;
  wire sum_47_OBUF_178;
  wire sum_46_OBUF_179;
  wire sum_45_OBUF_180;
  wire sum_44_OBUF_181;
  wire sum_43_OBUF_182;
  wire sum_42_OBUF_183;
  wire sum_41_OBUF_184;
  wire sum_40_OBUF_185;
  wire sum_39_OBUF_186;
  wire sum_38_OBUF_187;
  wire sum_37_OBUF_188;
  wire sum_36_OBUF_189;
  wire sum_35_OBUF_190;
  wire sum_34_OBUF_191;
  wire sum_33_OBUF_192;
  wire sum_32_OBUF_193;
  wire cout_OBUF_194;
  wire \rca_32bit_2/carry_16bit ;
  wire \rca_32bit_1/carry_16bit ;
  wire \rca_32bit_1/rca_16bit_2/carry_8bit ;
  wire \rca_32bit_1/rca_16bit_1/carry_8bit ;
  wire \rca_32bit_2/rca_16bit_2/carry_8bit ;
  wire \rca_32bit_2/rca_16bit_1/carry_8bit ;
  wire \rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd2 ;
  wire \rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd6 ;
  wire \rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd10 ;
  wire \rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd2 ;
  wire \rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd6 ;
  wire \rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd10 ;
  wire \rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd2 ;
  wire \rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd6 ;
  wire \rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd10 ;
  wire \rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd2 ;
  wire \rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd6 ;
  wire \rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd10 ;
  wire \rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd2 ;
  wire \rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd6 ;
  wire \rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd10 ;
  wire \rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd2 ;
  wire \rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd6 ;
  wire \rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd10 ;
  wire \rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd2 ;
  wire \rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd6 ;
  wire \rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd10 ;
  wire \rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd2 ;
  wire \rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd6 ;
  wire \rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd10 ;
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/sum<2>1  (
    .I0(in1_42_IBUF_53),
    .I1(in2_42_IBUF_117),
    .I2(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd10 ),
    .O(sum_42_OBUF_183)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/sum<4>1  (
    .I0(in1_44_IBUF_51),
    .I1(in2_44_IBUF_115),
    .I2(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd6 ),
    .O(sum_44_OBUF_181)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/sum<6>1  (
    .I0(in1_46_IBUF_49),
    .I1(in2_46_IBUF_113),
    .I2(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd2 ),
    .O(sum_46_OBUF_179)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/cout1  (
    .I0(in2_47_IBUF_112),
    .I1(in1_46_IBUF_49),
    .I2(in2_46_IBUF_113),
    .I3(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd2 ),
    .I4(in1_47_IBUF_48),
    .O(\rca_32bit_2/carry_16bit )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/sum<7>1  (
    .I0(in1_47_IBUF_48),
    .I1(in2_47_IBUF_112),
    .I2(in1_46_IBUF_49),
    .I3(in2_46_IBUF_113),
    .I4(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd2 ),
    .O(sum_47_OBUF_178)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/cout21  (
    .I0(in2_45_IBUF_114),
    .I1(in1_44_IBUF_51),
    .I2(in2_44_IBUF_115),
    .I3(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd6 ),
    .I4(in1_45_IBUF_50),
    .O(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/sum<5>1  (
    .I0(in1_45_IBUF_50),
    .I1(in2_45_IBUF_114),
    .I2(in1_44_IBUF_51),
    .I3(in2_44_IBUF_115),
    .I4(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd6 ),
    .O(sum_45_OBUF_180)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/cout41  (
    .I0(in2_43_IBUF_116),
    .I1(in1_42_IBUF_53),
    .I2(in2_42_IBUF_117),
    .I3(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd10 ),
    .I4(in1_43_IBUF_52),
    .O(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd6 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/sum<3>1  (
    .I0(in1_43_IBUF_52),
    .I1(in2_43_IBUF_116),
    .I2(in1_42_IBUF_53),
    .I3(in2_42_IBUF_117),
    .I4(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd10 ),
    .O(sum_43_OBUF_182)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/cout61  (
    .I0(in2_41_IBUF_118),
    .I1(in1_40_IBUF_55),
    .I2(in2_40_IBUF_119),
    .I3(\rca_32bit_2/rca_16bit_1/carry_8bit ),
    .I4(in1_41_IBUF_54),
    .O(\rca_32bit_2/rca_16bit_1/rca_8bit_2/cout_bdd10 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/sum<1>1  (
    .I0(in1_41_IBUF_54),
    .I1(in2_41_IBUF_118),
    .I2(in1_40_IBUF_55),
    .I3(in2_40_IBUF_119),
    .I4(\rca_32bit_2/rca_16bit_1/carry_8bit ),
    .O(sum_41_OBUF_184)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_2/sum<0>1  (
    .I0(\rca_32bit_2/rca_16bit_1/carry_8bit ),
    .I1(in1_40_IBUF_55),
    .I2(in2_40_IBUF_119),
    .O(sum_40_OBUF_185)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/sum<2>1  (
    .I0(in1_34_IBUF_61),
    .I1(in2_34_IBUF_125),
    .I2(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd10 ),
    .O(sum_34_OBUF_191)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/sum<4>1  (
    .I0(in1_36_IBUF_59),
    .I1(in2_36_IBUF_123),
    .I2(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd6 ),
    .O(sum_36_OBUF_189)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/sum<6>1  (
    .I0(in1_38_IBUF_57),
    .I1(in2_38_IBUF_121),
    .I2(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd2 ),
    .O(sum_38_OBUF_187)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/cout1  (
    .I0(in2_39_IBUF_120),
    .I1(in1_38_IBUF_57),
    .I2(in2_38_IBUF_121),
    .I3(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd2 ),
    .I4(in1_39_IBUF_56),
    .O(\rca_32bit_2/rca_16bit_1/carry_8bit )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/sum<7>1  (
    .I0(in1_39_IBUF_56),
    .I1(in2_39_IBUF_120),
    .I2(in1_38_IBUF_57),
    .I3(in2_38_IBUF_121),
    .I4(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd2 ),
    .O(sum_39_OBUF_186)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/cout21  (
    .I0(in2_37_IBUF_122),
    .I1(in1_36_IBUF_59),
    .I2(in2_36_IBUF_123),
    .I3(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd6 ),
    .I4(in1_37_IBUF_58),
    .O(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/sum<5>1  (
    .I0(in1_37_IBUF_58),
    .I1(in2_37_IBUF_122),
    .I2(in1_36_IBUF_59),
    .I3(in2_36_IBUF_123),
    .I4(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd6 ),
    .O(sum_37_OBUF_188)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/cout41  (
    .I0(in2_35_IBUF_124),
    .I1(in1_34_IBUF_61),
    .I2(in2_34_IBUF_125),
    .I3(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd10 ),
    .I4(in1_35_IBUF_60),
    .O(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd6 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/sum<3>1  (
    .I0(in1_35_IBUF_60),
    .I1(in2_35_IBUF_124),
    .I2(in1_34_IBUF_61),
    .I3(in2_34_IBUF_125),
    .I4(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd10 ),
    .O(sum_35_OBUF_190)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/cout61  (
    .I0(in2_33_IBUF_126),
    .I1(in1_32_IBUF_63),
    .I2(in2_32_IBUF_127),
    .I3(carry_32bit),
    .I4(in1_33_IBUF_62),
    .O(\rca_32bit_2/rca_16bit_1/rca_8bit_1/cout_bdd10 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/sum<1>1  (
    .I0(in1_33_IBUF_62),
    .I1(in2_33_IBUF_126),
    .I2(in1_32_IBUF_63),
    .I3(in2_32_IBUF_127),
    .I4(carry_32bit),
    .O(sum_33_OBUF_192)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_1/rca_8bit_1/sum<0>1  (
    .I0(carry_32bit),
    .I1(in1_32_IBUF_63),
    .I2(in2_32_IBUF_127),
    .O(sum_32_OBUF_193)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/sum<2>1  (
    .I0(in1_58_IBUF_37),
    .I1(in2_58_IBUF_101),
    .I2(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd10 ),
    .O(sum_58_OBUF_167)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/sum<4>1  (
    .I0(in1_60_IBUF_35),
    .I1(in2_60_IBUF_99),
    .I2(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd6 ),
    .O(sum_60_OBUF_165)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/sum<6>1  (
    .I0(in1_62_IBUF_33),
    .I1(in2_62_IBUF_97),
    .I2(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd2 ),
    .O(sum_62_OBUF_163)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/cout1  (
    .I0(in2_63_IBUF_96),
    .I1(in1_62_IBUF_33),
    .I2(in2_62_IBUF_97),
    .I3(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd2 ),
    .I4(in1_63_IBUF_32),
    .O(cout_OBUF_194)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/sum<7>1  (
    .I0(in1_63_IBUF_32),
    .I1(in2_63_IBUF_96),
    .I2(in1_62_IBUF_33),
    .I3(in2_62_IBUF_97),
    .I4(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd2 ),
    .O(sum_63_OBUF_162)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/cout21  (
    .I0(in2_61_IBUF_98),
    .I1(in1_60_IBUF_35),
    .I2(in2_60_IBUF_99),
    .I3(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd6 ),
    .I4(in1_61_IBUF_34),
    .O(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/sum<5>1  (
    .I0(in1_61_IBUF_34),
    .I1(in2_61_IBUF_98),
    .I2(in1_60_IBUF_35),
    .I3(in2_60_IBUF_99),
    .I4(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd6 ),
    .O(sum_61_OBUF_164)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/cout41  (
    .I0(in2_59_IBUF_100),
    .I1(in1_58_IBUF_37),
    .I2(in2_58_IBUF_101),
    .I3(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd10 ),
    .I4(in1_59_IBUF_36),
    .O(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd6 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/sum<3>1  (
    .I0(in1_59_IBUF_36),
    .I1(in2_59_IBUF_100),
    .I2(in1_58_IBUF_37),
    .I3(in2_58_IBUF_101),
    .I4(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd10 ),
    .O(sum_59_OBUF_166)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/cout61  (
    .I0(in2_57_IBUF_102),
    .I1(in1_56_IBUF_39),
    .I2(in2_56_IBUF_103),
    .I3(\rca_32bit_2/rca_16bit_2/carry_8bit ),
    .I4(in1_57_IBUF_38),
    .O(\rca_32bit_2/rca_16bit_2/rca_8bit_2/cout_bdd10 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/sum<1>1  (
    .I0(in1_57_IBUF_38),
    .I1(in2_57_IBUF_102),
    .I2(in1_56_IBUF_39),
    .I3(in2_56_IBUF_103),
    .I4(\rca_32bit_2/rca_16bit_2/carry_8bit ),
    .O(sum_57_OBUF_168)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_2/sum<0>1  (
    .I0(\rca_32bit_2/rca_16bit_2/carry_8bit ),
    .I1(in1_56_IBUF_39),
    .I2(in2_56_IBUF_103),
    .O(sum_56_OBUF_169)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/sum<2>1  (
    .I0(in1_50_IBUF_45),
    .I1(in2_50_IBUF_109),
    .I2(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd10 ),
    .O(sum_50_OBUF_175)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/sum<4>1  (
    .I0(in1_52_IBUF_43),
    .I1(in2_52_IBUF_107),
    .I2(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd6 ),
    .O(sum_52_OBUF_173)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/sum<6>1  (
    .I0(in1_54_IBUF_41),
    .I1(in2_54_IBUF_105),
    .I2(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd2 ),
    .O(sum_54_OBUF_171)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/cout1  (
    .I0(in2_55_IBUF_104),
    .I1(in1_54_IBUF_41),
    .I2(in2_54_IBUF_105),
    .I3(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd2 ),
    .I4(in1_55_IBUF_40),
    .O(\rca_32bit_2/rca_16bit_2/carry_8bit )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/sum<7>1  (
    .I0(in1_55_IBUF_40),
    .I1(in2_55_IBUF_104),
    .I2(in1_54_IBUF_41),
    .I3(in2_54_IBUF_105),
    .I4(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd2 ),
    .O(sum_55_OBUF_170)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/cout21  (
    .I0(in2_53_IBUF_106),
    .I1(in1_52_IBUF_43),
    .I2(in2_52_IBUF_107),
    .I3(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd6 ),
    .I4(in1_53_IBUF_42),
    .O(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/sum<5>1  (
    .I0(in1_53_IBUF_42),
    .I1(in2_53_IBUF_106),
    .I2(in1_52_IBUF_43),
    .I3(in2_52_IBUF_107),
    .I4(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd6 ),
    .O(sum_53_OBUF_172)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/cout41  (
    .I0(in2_51_IBUF_108),
    .I1(in1_50_IBUF_45),
    .I2(in2_50_IBUF_109),
    .I3(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd10 ),
    .I4(in1_51_IBUF_44),
    .O(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd6 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/sum<3>1  (
    .I0(in1_51_IBUF_44),
    .I1(in2_51_IBUF_108),
    .I2(in1_50_IBUF_45),
    .I3(in2_50_IBUF_109),
    .I4(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd10 ),
    .O(sum_51_OBUF_174)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/cout61  (
    .I0(in2_49_IBUF_110),
    .I1(in1_48_IBUF_47),
    .I2(in2_48_IBUF_111),
    .I3(\rca_32bit_2/carry_16bit ),
    .I4(in1_49_IBUF_46),
    .O(\rca_32bit_2/rca_16bit_2/rca_8bit_1/cout_bdd10 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/sum<1>1  (
    .I0(in1_49_IBUF_46),
    .I1(in2_49_IBUF_110),
    .I2(in1_48_IBUF_47),
    .I3(in2_48_IBUF_111),
    .I4(\rca_32bit_2/carry_16bit ),
    .O(sum_49_OBUF_176)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_2/rca_16bit_2/rca_8bit_1/sum<0>1  (
    .I0(\rca_32bit_2/carry_16bit ),
    .I1(in1_48_IBUF_47),
    .I2(in2_48_IBUF_111),
    .O(sum_48_OBUF_177)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/sum<2>1  (
    .I0(in1_10_IBUF_21),
    .I1(in2_10_IBUF_85),
    .I2(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd10 ),
    .O(sum_10_OBUF_150)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/sum<4>1  (
    .I0(in1_12_IBUF_19),
    .I1(in2_12_IBUF_83),
    .I2(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd6 ),
    .O(sum_12_OBUF_148)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/sum<6>1  (
    .I0(in1_14_IBUF_17),
    .I1(in2_14_IBUF_81),
    .I2(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd2 ),
    .O(sum_14_OBUF_146)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/cout1  (
    .I0(in2_15_IBUF_80),
    .I1(in1_14_IBUF_17),
    .I2(in2_14_IBUF_81),
    .I3(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd2 ),
    .I4(in1_15_IBUF_16),
    .O(\rca_32bit_1/carry_16bit )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/sum<7>1  (
    .I0(in1_15_IBUF_16),
    .I1(in2_15_IBUF_80),
    .I2(in1_14_IBUF_17),
    .I3(in2_14_IBUF_81),
    .I4(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd2 ),
    .O(sum_15_OBUF_145)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/cout21  (
    .I0(in2_13_IBUF_82),
    .I1(in1_12_IBUF_19),
    .I2(in2_12_IBUF_83),
    .I3(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd6 ),
    .I4(in1_13_IBUF_18),
    .O(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/sum<5>1  (
    .I0(in1_13_IBUF_18),
    .I1(in2_13_IBUF_82),
    .I2(in1_12_IBUF_19),
    .I3(in2_12_IBUF_83),
    .I4(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd6 ),
    .O(sum_13_OBUF_147)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/cout41  (
    .I0(in2_11_IBUF_84),
    .I1(in1_10_IBUF_21),
    .I2(in2_10_IBUF_85),
    .I3(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd10 ),
    .I4(in1_11_IBUF_20),
    .O(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd6 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/sum<3>1  (
    .I0(in1_11_IBUF_20),
    .I1(in2_11_IBUF_84),
    .I2(in1_10_IBUF_21),
    .I3(in2_10_IBUF_85),
    .I4(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd10 ),
    .O(sum_11_OBUF_149)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/cout61  (
    .I0(in2_9_IBUF_86),
    .I1(in1_8_IBUF_23),
    .I2(in2_8_IBUF_87),
    .I3(\rca_32bit_1/rca_16bit_1/carry_8bit ),
    .I4(in1_9_IBUF_22),
    .O(\rca_32bit_1/rca_16bit_1/rca_8bit_2/cout_bdd10 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/sum<1>1  (
    .I0(in1_9_IBUF_22),
    .I1(in2_9_IBUF_86),
    .I2(in1_8_IBUF_23),
    .I3(in2_8_IBUF_87),
    .I4(\rca_32bit_1/rca_16bit_1/carry_8bit ),
    .O(sum_9_OBUF_151)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_2/sum<0>1  (
    .I0(\rca_32bit_1/rca_16bit_1/carry_8bit ),
    .I1(in1_8_IBUF_23),
    .I2(in2_8_IBUF_87),
    .O(sum_8_OBUF_152)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/sum<2>1  (
    .I0(in1_2_IBUF_29),
    .I1(in2_2_IBUF_93),
    .I2(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd10 ),
    .O(sum_2_OBUF_158)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/sum<4>1  (
    .I0(in1_4_IBUF_27),
    .I1(in2_4_IBUF_91),
    .I2(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd6 ),
    .O(sum_4_OBUF_156)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/sum<6>1  (
    .I0(in1_6_IBUF_25),
    .I1(in2_6_IBUF_89),
    .I2(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd2 ),
    .O(sum_6_OBUF_154)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/cout1  (
    .I0(in2_7_IBUF_88),
    .I1(in1_6_IBUF_25),
    .I2(in2_6_IBUF_89),
    .I3(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd2 ),
    .I4(in1_7_IBUF_24),
    .O(\rca_32bit_1/rca_16bit_1/carry_8bit )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/sum<7>1  (
    .I0(in1_7_IBUF_24),
    .I1(in2_7_IBUF_88),
    .I2(in1_6_IBUF_25),
    .I3(in2_6_IBUF_89),
    .I4(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd2 ),
    .O(sum_7_OBUF_153)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/cout21  (
    .I0(in2_5_IBUF_90),
    .I1(in1_4_IBUF_27),
    .I2(in2_4_IBUF_91),
    .I3(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd6 ),
    .I4(in1_5_IBUF_26),
    .O(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/sum<5>1  (
    .I0(in1_5_IBUF_26),
    .I1(in2_5_IBUF_90),
    .I2(in1_4_IBUF_27),
    .I3(in2_4_IBUF_91),
    .I4(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd6 ),
    .O(sum_5_OBUF_155)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/cout41  (
    .I0(in2_3_IBUF_92),
    .I1(in1_2_IBUF_29),
    .I2(in2_2_IBUF_93),
    .I3(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd10 ),
    .I4(in1_3_IBUF_28),
    .O(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd6 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/sum<3>1  (
    .I0(in1_3_IBUF_28),
    .I1(in2_3_IBUF_92),
    .I2(in1_2_IBUF_29),
    .I3(in2_2_IBUF_93),
    .I4(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd10 ),
    .O(sum_3_OBUF_157)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/cout61  (
    .I0(in2_1_IBUF_94),
    .I1(in1_0_IBUF_31),
    .I2(in2_0_IBUF_95),
    .I3(cin_IBUF_128),
    .I4(in1_1_IBUF_30),
    .O(\rca_32bit_1/rca_16bit_1/rca_8bit_1/cout_bdd10 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/sum<1>1  (
    .I0(in1_1_IBUF_30),
    .I1(in2_1_IBUF_94),
    .I2(in1_0_IBUF_31),
    .I3(in2_0_IBUF_95),
    .I4(cin_IBUF_128),
    .O(sum_1_OBUF_159)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_1/rca_8bit_1/sum<0>1  (
    .I0(cin_IBUF_128),
    .I1(in1_0_IBUF_31),
    .I2(in2_0_IBUF_95),
    .O(sum_0_OBUF_160)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/sum<2>1  (
    .I0(in1_26_IBUF_5),
    .I1(in2_26_IBUF_69),
    .I2(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd10 ),
    .O(sum_26_OBUF_134)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/sum<4>1  (
    .I0(in1_28_IBUF_3),
    .I1(in2_28_IBUF_67),
    .I2(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd6 ),
    .O(sum_28_OBUF_132)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/sum<6>1  (
    .I0(in1_30_IBUF_1),
    .I1(in2_30_IBUF_65),
    .I2(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd2 ),
    .O(sum_30_OBUF_130)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/cout1  (
    .I0(in2_31_IBUF_64),
    .I1(in1_30_IBUF_1),
    .I2(in2_30_IBUF_65),
    .I3(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd2 ),
    .I4(in1_31_IBUF_0),
    .O(carry_32bit)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/sum<7>1  (
    .I0(in1_31_IBUF_0),
    .I1(in2_31_IBUF_64),
    .I2(in1_30_IBUF_1),
    .I3(in2_30_IBUF_65),
    .I4(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd2 ),
    .O(sum_31_OBUF_129)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/cout21  (
    .I0(in2_29_IBUF_66),
    .I1(in1_28_IBUF_3),
    .I2(in2_28_IBUF_67),
    .I3(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd6 ),
    .I4(in1_29_IBUF_2),
    .O(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/sum<5>1  (
    .I0(in1_29_IBUF_2),
    .I1(in2_29_IBUF_66),
    .I2(in1_28_IBUF_3),
    .I3(in2_28_IBUF_67),
    .I4(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd6 ),
    .O(sum_29_OBUF_131)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/cout41  (
    .I0(in2_27_IBUF_68),
    .I1(in1_26_IBUF_5),
    .I2(in2_26_IBUF_69),
    .I3(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd10 ),
    .I4(in1_27_IBUF_4),
    .O(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd6 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/sum<3>1  (
    .I0(in1_27_IBUF_4),
    .I1(in2_27_IBUF_68),
    .I2(in1_26_IBUF_5),
    .I3(in2_26_IBUF_69),
    .I4(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd10 ),
    .O(sum_27_OBUF_133)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/cout61  (
    .I0(in2_25_IBUF_70),
    .I1(in1_24_IBUF_7),
    .I2(in2_24_IBUF_71),
    .I3(\rca_32bit_1/rca_16bit_2/carry_8bit ),
    .I4(in1_25_IBUF_6),
    .O(\rca_32bit_1/rca_16bit_2/rca_8bit_2/cout_bdd10 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/sum<1>1  (
    .I0(in1_25_IBUF_6),
    .I1(in2_25_IBUF_70),
    .I2(in1_24_IBUF_7),
    .I3(in2_24_IBUF_71),
    .I4(\rca_32bit_1/rca_16bit_2/carry_8bit ),
    .O(sum_25_OBUF_135)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_2/sum<0>1  (
    .I0(\rca_32bit_1/rca_16bit_2/carry_8bit ),
    .I1(in1_24_IBUF_7),
    .I2(in2_24_IBUF_71),
    .O(sum_24_OBUF_136)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/sum<2>1  (
    .I0(in1_18_IBUF_13),
    .I1(in2_18_IBUF_77),
    .I2(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd10 ),
    .O(sum_18_OBUF_142)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/sum<4>1  (
    .I0(in1_20_IBUF_11),
    .I1(in2_20_IBUF_75),
    .I2(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd6 ),
    .O(sum_20_OBUF_140)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/sum<6>1  (
    .I0(in1_22_IBUF_9),
    .I1(in2_22_IBUF_73),
    .I2(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd2 ),
    .O(sum_22_OBUF_138)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/cout1  (
    .I0(in2_23_IBUF_72),
    .I1(in1_22_IBUF_9),
    .I2(in2_22_IBUF_73),
    .I3(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd2 ),
    .I4(in1_23_IBUF_8),
    .O(\rca_32bit_1/rca_16bit_2/carry_8bit )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/sum<7>1  (
    .I0(in1_23_IBUF_8),
    .I1(in2_23_IBUF_72),
    .I2(in1_22_IBUF_9),
    .I3(in2_22_IBUF_73),
    .I4(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd2 ),
    .O(sum_23_OBUF_137)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/cout21  (
    .I0(in2_21_IBUF_74),
    .I1(in1_20_IBUF_11),
    .I2(in2_20_IBUF_75),
    .I3(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd6 ),
    .I4(in1_21_IBUF_10),
    .O(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/sum<5>1  (
    .I0(in1_21_IBUF_10),
    .I1(in2_21_IBUF_74),
    .I2(in1_20_IBUF_11),
    .I3(in2_20_IBUF_75),
    .I4(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd6 ),
    .O(sum_21_OBUF_139)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/cout41  (
    .I0(in2_19_IBUF_76),
    .I1(in1_18_IBUF_13),
    .I2(in2_18_IBUF_77),
    .I3(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd10 ),
    .I4(in1_19_IBUF_12),
    .O(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd6 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/sum<3>1  (
    .I0(in1_19_IBUF_12),
    .I1(in2_19_IBUF_76),
    .I2(in1_18_IBUF_13),
    .I3(in2_18_IBUF_77),
    .I4(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd10 ),
    .O(sum_19_OBUF_141)
  );
  LUT5 #(
    .INIT ( 32'hFEEAA880 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/cout61  (
    .I0(in2_17_IBUF_78),
    .I1(in1_16_IBUF_15),
    .I2(in2_16_IBUF_79),
    .I3(\rca_32bit_1/carry_16bit ),
    .I4(in1_17_IBUF_14),
    .O(\rca_32bit_1/rca_16bit_2/rca_8bit_1/cout_bdd10 )
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/sum<1>1  (
    .I0(in1_17_IBUF_14),
    .I1(in2_17_IBUF_78),
    .I2(in1_16_IBUF_15),
    .I3(in2_16_IBUF_79),
    .I4(\rca_32bit_1/carry_16bit ),
    .O(sum_17_OBUF_143)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \rca_32bit_1/rca_16bit_2/rca_8bit_1/sum<0>1  (
    .I0(\rca_32bit_1/carry_16bit ),
    .I1(in1_16_IBUF_15),
    .I2(in2_16_IBUF_79),
    .O(sum_16_OBUF_144)
  );
  IBUF   in1_63_IBUF (
    .I(in1[63]),
    .O(in1_63_IBUF_32)
  );
  IBUF   in1_62_IBUF (
    .I(in1[62]),
    .O(in1_62_IBUF_33)
  );
  IBUF   in1_61_IBUF (
    .I(in1[61]),
    .O(in1_61_IBUF_34)
  );
  IBUF   in1_60_IBUF (
    .I(in1[60]),
    .O(in1_60_IBUF_35)
  );
  IBUF   in1_59_IBUF (
    .I(in1[59]),
    .O(in1_59_IBUF_36)
  );
  IBUF   in1_58_IBUF (
    .I(in1[58]),
    .O(in1_58_IBUF_37)
  );
  IBUF   in1_57_IBUF (
    .I(in1[57]),
    .O(in1_57_IBUF_38)
  );
  IBUF   in1_56_IBUF (
    .I(in1[56]),
    .O(in1_56_IBUF_39)
  );
  IBUF   in1_55_IBUF (
    .I(in1[55]),
    .O(in1_55_IBUF_40)
  );
  IBUF   in1_54_IBUF (
    .I(in1[54]),
    .O(in1_54_IBUF_41)
  );
  IBUF   in1_53_IBUF (
    .I(in1[53]),
    .O(in1_53_IBUF_42)
  );
  IBUF   in1_52_IBUF (
    .I(in1[52]),
    .O(in1_52_IBUF_43)
  );
  IBUF   in1_51_IBUF (
    .I(in1[51]),
    .O(in1_51_IBUF_44)
  );
  IBUF   in1_50_IBUF (
    .I(in1[50]),
    .O(in1_50_IBUF_45)
  );
  IBUF   in1_49_IBUF (
    .I(in1[49]),
    .O(in1_49_IBUF_46)
  );
  IBUF   in1_48_IBUF (
    .I(in1[48]),
    .O(in1_48_IBUF_47)
  );
  IBUF   in1_47_IBUF (
    .I(in1[47]),
    .O(in1_47_IBUF_48)
  );
  IBUF   in1_46_IBUF (
    .I(in1[46]),
    .O(in1_46_IBUF_49)
  );
  IBUF   in1_45_IBUF (
    .I(in1[45]),
    .O(in1_45_IBUF_50)
  );
  IBUF   in1_44_IBUF (
    .I(in1[44]),
    .O(in1_44_IBUF_51)
  );
  IBUF   in1_43_IBUF (
    .I(in1[43]),
    .O(in1_43_IBUF_52)
  );
  IBUF   in1_42_IBUF (
    .I(in1[42]),
    .O(in1_42_IBUF_53)
  );
  IBUF   in1_41_IBUF (
    .I(in1[41]),
    .O(in1_41_IBUF_54)
  );
  IBUF   in1_40_IBUF (
    .I(in1[40]),
    .O(in1_40_IBUF_55)
  );
  IBUF   in1_39_IBUF (
    .I(in1[39]),
    .O(in1_39_IBUF_56)
  );
  IBUF   in1_38_IBUF (
    .I(in1[38]),
    .O(in1_38_IBUF_57)
  );
  IBUF   in1_37_IBUF (
    .I(in1[37]),
    .O(in1_37_IBUF_58)
  );
  IBUF   in1_36_IBUF (
    .I(in1[36]),
    .O(in1_36_IBUF_59)
  );
  IBUF   in1_35_IBUF (
    .I(in1[35]),
    .O(in1_35_IBUF_60)
  );
  IBUF   in1_34_IBUF (
    .I(in1[34]),
    .O(in1_34_IBUF_61)
  );
  IBUF   in1_33_IBUF (
    .I(in1[33]),
    .O(in1_33_IBUF_62)
  );
  IBUF   in1_32_IBUF (
    .I(in1[32]),
    .O(in1_32_IBUF_63)
  );
  IBUF   in1_31_IBUF (
    .I(in1[31]),
    .O(in1_31_IBUF_0)
  );
  IBUF   in1_30_IBUF (
    .I(in1[30]),
    .O(in1_30_IBUF_1)
  );
  IBUF   in1_29_IBUF (
    .I(in1[29]),
    .O(in1_29_IBUF_2)
  );
  IBUF   in1_28_IBUF (
    .I(in1[28]),
    .O(in1_28_IBUF_3)
  );
  IBUF   in1_27_IBUF (
    .I(in1[27]),
    .O(in1_27_IBUF_4)
  );
  IBUF   in1_26_IBUF (
    .I(in1[26]),
    .O(in1_26_IBUF_5)
  );
  IBUF   in1_25_IBUF (
    .I(in1[25]),
    .O(in1_25_IBUF_6)
  );
  IBUF   in1_24_IBUF (
    .I(in1[24]),
    .O(in1_24_IBUF_7)
  );
  IBUF   in1_23_IBUF (
    .I(in1[23]),
    .O(in1_23_IBUF_8)
  );
  IBUF   in1_22_IBUF (
    .I(in1[22]),
    .O(in1_22_IBUF_9)
  );
  IBUF   in1_21_IBUF (
    .I(in1[21]),
    .O(in1_21_IBUF_10)
  );
  IBUF   in1_20_IBUF (
    .I(in1[20]),
    .O(in1_20_IBUF_11)
  );
  IBUF   in1_19_IBUF (
    .I(in1[19]),
    .O(in1_19_IBUF_12)
  );
  IBUF   in1_18_IBUF (
    .I(in1[18]),
    .O(in1_18_IBUF_13)
  );
  IBUF   in1_17_IBUF (
    .I(in1[17]),
    .O(in1_17_IBUF_14)
  );
  IBUF   in1_16_IBUF (
    .I(in1[16]),
    .O(in1_16_IBUF_15)
  );
  IBUF   in1_15_IBUF (
    .I(in1[15]),
    .O(in1_15_IBUF_16)
  );
  IBUF   in1_14_IBUF (
    .I(in1[14]),
    .O(in1_14_IBUF_17)
  );
  IBUF   in1_13_IBUF (
    .I(in1[13]),
    .O(in1_13_IBUF_18)
  );
  IBUF   in1_12_IBUF (
    .I(in1[12]),
    .O(in1_12_IBUF_19)
  );
  IBUF   in1_11_IBUF (
    .I(in1[11]),
    .O(in1_11_IBUF_20)
  );
  IBUF   in1_10_IBUF (
    .I(in1[10]),
    .O(in1_10_IBUF_21)
  );
  IBUF   in1_9_IBUF (
    .I(in1[9]),
    .O(in1_9_IBUF_22)
  );
  IBUF   in1_8_IBUF (
    .I(in1[8]),
    .O(in1_8_IBUF_23)
  );
  IBUF   in1_7_IBUF (
    .I(in1[7]),
    .O(in1_7_IBUF_24)
  );
  IBUF   in1_6_IBUF (
    .I(in1[6]),
    .O(in1_6_IBUF_25)
  );
  IBUF   in1_5_IBUF (
    .I(in1[5]),
    .O(in1_5_IBUF_26)
  );
  IBUF   in1_4_IBUF (
    .I(in1[4]),
    .O(in1_4_IBUF_27)
  );
  IBUF   in1_3_IBUF (
    .I(in1[3]),
    .O(in1_3_IBUF_28)
  );
  IBUF   in1_2_IBUF (
    .I(in1[2]),
    .O(in1_2_IBUF_29)
  );
  IBUF   in1_1_IBUF (
    .I(in1[1]),
    .O(in1_1_IBUF_30)
  );
  IBUF   in1_0_IBUF (
    .I(in1[0]),
    .O(in1_0_IBUF_31)
  );
  IBUF   in2_63_IBUF (
    .I(in2[63]),
    .O(in2_63_IBUF_96)
  );
  IBUF   in2_62_IBUF (
    .I(in2[62]),
    .O(in2_62_IBUF_97)
  );
  IBUF   in2_61_IBUF (
    .I(in2[61]),
    .O(in2_61_IBUF_98)
  );
  IBUF   in2_60_IBUF (
    .I(in2[60]),
    .O(in2_60_IBUF_99)
  );
  IBUF   in2_59_IBUF (
    .I(in2[59]),
    .O(in2_59_IBUF_100)
  );
  IBUF   in2_58_IBUF (
    .I(in2[58]),
    .O(in2_58_IBUF_101)
  );
  IBUF   in2_57_IBUF (
    .I(in2[57]),
    .O(in2_57_IBUF_102)
  );
  IBUF   in2_56_IBUF (
    .I(in2[56]),
    .O(in2_56_IBUF_103)
  );
  IBUF   in2_55_IBUF (
    .I(in2[55]),
    .O(in2_55_IBUF_104)
  );
  IBUF   in2_54_IBUF (
    .I(in2[54]),
    .O(in2_54_IBUF_105)
  );
  IBUF   in2_53_IBUF (
    .I(in2[53]),
    .O(in2_53_IBUF_106)
  );
  IBUF   in2_52_IBUF (
    .I(in2[52]),
    .O(in2_52_IBUF_107)
  );
  IBUF   in2_51_IBUF (
    .I(in2[51]),
    .O(in2_51_IBUF_108)
  );
  IBUF   in2_50_IBUF (
    .I(in2[50]),
    .O(in2_50_IBUF_109)
  );
  IBUF   in2_49_IBUF (
    .I(in2[49]),
    .O(in2_49_IBUF_110)
  );
  IBUF   in2_48_IBUF (
    .I(in2[48]),
    .O(in2_48_IBUF_111)
  );
  IBUF   in2_47_IBUF (
    .I(in2[47]),
    .O(in2_47_IBUF_112)
  );
  IBUF   in2_46_IBUF (
    .I(in2[46]),
    .O(in2_46_IBUF_113)
  );
  IBUF   in2_45_IBUF (
    .I(in2[45]),
    .O(in2_45_IBUF_114)
  );
  IBUF   in2_44_IBUF (
    .I(in2[44]),
    .O(in2_44_IBUF_115)
  );
  IBUF   in2_43_IBUF (
    .I(in2[43]),
    .O(in2_43_IBUF_116)
  );
  IBUF   in2_42_IBUF (
    .I(in2[42]),
    .O(in2_42_IBUF_117)
  );
  IBUF   in2_41_IBUF (
    .I(in2[41]),
    .O(in2_41_IBUF_118)
  );
  IBUF   in2_40_IBUF (
    .I(in2[40]),
    .O(in2_40_IBUF_119)
  );
  IBUF   in2_39_IBUF (
    .I(in2[39]),
    .O(in2_39_IBUF_120)
  );
  IBUF   in2_38_IBUF (
    .I(in2[38]),
    .O(in2_38_IBUF_121)
  );
  IBUF   in2_37_IBUF (
    .I(in2[37]),
    .O(in2_37_IBUF_122)
  );
  IBUF   in2_36_IBUF (
    .I(in2[36]),
    .O(in2_36_IBUF_123)
  );
  IBUF   in2_35_IBUF (
    .I(in2[35]),
    .O(in2_35_IBUF_124)
  );
  IBUF   in2_34_IBUF (
    .I(in2[34]),
    .O(in2_34_IBUF_125)
  );
  IBUF   in2_33_IBUF (
    .I(in2[33]),
    .O(in2_33_IBUF_126)
  );
  IBUF   in2_32_IBUF (
    .I(in2[32]),
    .O(in2_32_IBUF_127)
  );
  IBUF   in2_31_IBUF (
    .I(in2[31]),
    .O(in2_31_IBUF_64)
  );
  IBUF   in2_30_IBUF (
    .I(in2[30]),
    .O(in2_30_IBUF_65)
  );
  IBUF   in2_29_IBUF (
    .I(in2[29]),
    .O(in2_29_IBUF_66)
  );
  IBUF   in2_28_IBUF (
    .I(in2[28]),
    .O(in2_28_IBUF_67)
  );
  IBUF   in2_27_IBUF (
    .I(in2[27]),
    .O(in2_27_IBUF_68)
  );
  IBUF   in2_26_IBUF (
    .I(in2[26]),
    .O(in2_26_IBUF_69)
  );
  IBUF   in2_25_IBUF (
    .I(in2[25]),
    .O(in2_25_IBUF_70)
  );
  IBUF   in2_24_IBUF (
    .I(in2[24]),
    .O(in2_24_IBUF_71)
  );
  IBUF   in2_23_IBUF (
    .I(in2[23]),
    .O(in2_23_IBUF_72)
  );
  IBUF   in2_22_IBUF (
    .I(in2[22]),
    .O(in2_22_IBUF_73)
  );
  IBUF   in2_21_IBUF (
    .I(in2[21]),
    .O(in2_21_IBUF_74)
  );
  IBUF   in2_20_IBUF (
    .I(in2[20]),
    .O(in2_20_IBUF_75)
  );
  IBUF   in2_19_IBUF (
    .I(in2[19]),
    .O(in2_19_IBUF_76)
  );
  IBUF   in2_18_IBUF (
    .I(in2[18]),
    .O(in2_18_IBUF_77)
  );
  IBUF   in2_17_IBUF (
    .I(in2[17]),
    .O(in2_17_IBUF_78)
  );
  IBUF   in2_16_IBUF (
    .I(in2[16]),
    .O(in2_16_IBUF_79)
  );
  IBUF   in2_15_IBUF (
    .I(in2[15]),
    .O(in2_15_IBUF_80)
  );
  IBUF   in2_14_IBUF (
    .I(in2[14]),
    .O(in2_14_IBUF_81)
  );
  IBUF   in2_13_IBUF (
    .I(in2[13]),
    .O(in2_13_IBUF_82)
  );
  IBUF   in2_12_IBUF (
    .I(in2[12]),
    .O(in2_12_IBUF_83)
  );
  IBUF   in2_11_IBUF (
    .I(in2[11]),
    .O(in2_11_IBUF_84)
  );
  IBUF   in2_10_IBUF (
    .I(in2[10]),
    .O(in2_10_IBUF_85)
  );
  IBUF   in2_9_IBUF (
    .I(in2[9]),
    .O(in2_9_IBUF_86)
  );
  IBUF   in2_8_IBUF (
    .I(in2[8]),
    .O(in2_8_IBUF_87)
  );
  IBUF   in2_7_IBUF (
    .I(in2[7]),
    .O(in2_7_IBUF_88)
  );
  IBUF   in2_6_IBUF (
    .I(in2[6]),
    .O(in2_6_IBUF_89)
  );
  IBUF   in2_5_IBUF (
    .I(in2[5]),
    .O(in2_5_IBUF_90)
  );
  IBUF   in2_4_IBUF (
    .I(in2[4]),
    .O(in2_4_IBUF_91)
  );
  IBUF   in2_3_IBUF (
    .I(in2[3]),
    .O(in2_3_IBUF_92)
  );
  IBUF   in2_2_IBUF (
    .I(in2[2]),
    .O(in2_2_IBUF_93)
  );
  IBUF   in2_1_IBUF (
    .I(in2[1]),
    .O(in2_1_IBUF_94)
  );
  IBUF   in2_0_IBUF (
    .I(in2[0]),
    .O(in2_0_IBUF_95)
  );
  IBUF   cin_IBUF (
    .I(cin),
    .O(cin_IBUF_128)
  );
  OBUF   sum_63_OBUF (
    .I(sum_63_OBUF_162),
    .O(sum[63])
  );
  OBUF   sum_62_OBUF (
    .I(sum_62_OBUF_163),
    .O(sum[62])
  );
  OBUF   sum_61_OBUF (
    .I(sum_61_OBUF_164),
    .O(sum[61])
  );
  OBUF   sum_60_OBUF (
    .I(sum_60_OBUF_165),
    .O(sum[60])
  );
  OBUF   sum_59_OBUF (
    .I(sum_59_OBUF_166),
    .O(sum[59])
  );
  OBUF   sum_58_OBUF (
    .I(sum_58_OBUF_167),
    .O(sum[58])
  );
  OBUF   sum_57_OBUF (
    .I(sum_57_OBUF_168),
    .O(sum[57])
  );
  OBUF   sum_56_OBUF (
    .I(sum_56_OBUF_169),
    .O(sum[56])
  );
  OBUF   sum_55_OBUF (
    .I(sum_55_OBUF_170),
    .O(sum[55])
  );
  OBUF   sum_54_OBUF (
    .I(sum_54_OBUF_171),
    .O(sum[54])
  );
  OBUF   sum_53_OBUF (
    .I(sum_53_OBUF_172),
    .O(sum[53])
  );
  OBUF   sum_52_OBUF (
    .I(sum_52_OBUF_173),
    .O(sum[52])
  );
  OBUF   sum_51_OBUF (
    .I(sum_51_OBUF_174),
    .O(sum[51])
  );
  OBUF   sum_50_OBUF (
    .I(sum_50_OBUF_175),
    .O(sum[50])
  );
  OBUF   sum_49_OBUF (
    .I(sum_49_OBUF_176),
    .O(sum[49])
  );
  OBUF   sum_48_OBUF (
    .I(sum_48_OBUF_177),
    .O(sum[48])
  );
  OBUF   sum_47_OBUF (
    .I(sum_47_OBUF_178),
    .O(sum[47])
  );
  OBUF   sum_46_OBUF (
    .I(sum_46_OBUF_179),
    .O(sum[46])
  );
  OBUF   sum_45_OBUF (
    .I(sum_45_OBUF_180),
    .O(sum[45])
  );
  OBUF   sum_44_OBUF (
    .I(sum_44_OBUF_181),
    .O(sum[44])
  );
  OBUF   sum_43_OBUF (
    .I(sum_43_OBUF_182),
    .O(sum[43])
  );
  OBUF   sum_42_OBUF (
    .I(sum_42_OBUF_183),
    .O(sum[42])
  );
  OBUF   sum_41_OBUF (
    .I(sum_41_OBUF_184),
    .O(sum[41])
  );
  OBUF   sum_40_OBUF (
    .I(sum_40_OBUF_185),
    .O(sum[40])
  );
  OBUF   sum_39_OBUF (
    .I(sum_39_OBUF_186),
    .O(sum[39])
  );
  OBUF   sum_38_OBUF (
    .I(sum_38_OBUF_187),
    .O(sum[38])
  );
  OBUF   sum_37_OBUF (
    .I(sum_37_OBUF_188),
    .O(sum[37])
  );
  OBUF   sum_36_OBUF (
    .I(sum_36_OBUF_189),
    .O(sum[36])
  );
  OBUF   sum_35_OBUF (
    .I(sum_35_OBUF_190),
    .O(sum[35])
  );
  OBUF   sum_34_OBUF (
    .I(sum_34_OBUF_191),
    .O(sum[34])
  );
  OBUF   sum_33_OBUF (
    .I(sum_33_OBUF_192),
    .O(sum[33])
  );
  OBUF   sum_32_OBUF (
    .I(sum_32_OBUF_193),
    .O(sum[32])
  );
  OBUF   sum_31_OBUF (
    .I(sum_31_OBUF_129),
    .O(sum[31])
  );
  OBUF   sum_30_OBUF (
    .I(sum_30_OBUF_130),
    .O(sum[30])
  );
  OBUF   sum_29_OBUF (
    .I(sum_29_OBUF_131),
    .O(sum[29])
  );
  OBUF   sum_28_OBUF (
    .I(sum_28_OBUF_132),
    .O(sum[28])
  );
  OBUF   sum_27_OBUF (
    .I(sum_27_OBUF_133),
    .O(sum[27])
  );
  OBUF   sum_26_OBUF (
    .I(sum_26_OBUF_134),
    .O(sum[26])
  );
  OBUF   sum_25_OBUF (
    .I(sum_25_OBUF_135),
    .O(sum[25])
  );
  OBUF   sum_24_OBUF (
    .I(sum_24_OBUF_136),
    .O(sum[24])
  );
  OBUF   sum_23_OBUF (
    .I(sum_23_OBUF_137),
    .O(sum[23])
  );
  OBUF   sum_22_OBUF (
    .I(sum_22_OBUF_138),
    .O(sum[22])
  );
  OBUF   sum_21_OBUF (
    .I(sum_21_OBUF_139),
    .O(sum[21])
  );
  OBUF   sum_20_OBUF (
    .I(sum_20_OBUF_140),
    .O(sum[20])
  );
  OBUF   sum_19_OBUF (
    .I(sum_19_OBUF_141),
    .O(sum[19])
  );
  OBUF   sum_18_OBUF (
    .I(sum_18_OBUF_142),
    .O(sum[18])
  );
  OBUF   sum_17_OBUF (
    .I(sum_17_OBUF_143),
    .O(sum[17])
  );
  OBUF   sum_16_OBUF (
    .I(sum_16_OBUF_144),
    .O(sum[16])
  );
  OBUF   sum_15_OBUF (
    .I(sum_15_OBUF_145),
    .O(sum[15])
  );
  OBUF   sum_14_OBUF (
    .I(sum_14_OBUF_146),
    .O(sum[14])
  );
  OBUF   sum_13_OBUF (
    .I(sum_13_OBUF_147),
    .O(sum[13])
  );
  OBUF   sum_12_OBUF (
    .I(sum_12_OBUF_148),
    .O(sum[12])
  );
  OBUF   sum_11_OBUF (
    .I(sum_11_OBUF_149),
    .O(sum[11])
  );
  OBUF   sum_10_OBUF (
    .I(sum_10_OBUF_150),
    .O(sum[10])
  );
  OBUF   sum_9_OBUF (
    .I(sum_9_OBUF_151),
    .O(sum[9])
  );
  OBUF   sum_8_OBUF (
    .I(sum_8_OBUF_152),
    .O(sum[8])
  );
  OBUF   sum_7_OBUF (
    .I(sum_7_OBUF_153),
    .O(sum[7])
  );
  OBUF   sum_6_OBUF (
    .I(sum_6_OBUF_154),
    .O(sum[6])
  );
  OBUF   sum_5_OBUF (
    .I(sum_5_OBUF_155),
    .O(sum[5])
  );
  OBUF   sum_4_OBUF (
    .I(sum_4_OBUF_156),
    .O(sum[4])
  );
  OBUF   sum_3_OBUF (
    .I(sum_3_OBUF_157),
    .O(sum[3])
  );
  OBUF   sum_2_OBUF (
    .I(sum_2_OBUF_158),
    .O(sum[2])
  );
  OBUF   sum_1_OBUF (
    .I(sum_1_OBUF_159),
    .O(sum[1])
  );
  OBUF   sum_0_OBUF (
    .I(sum_0_OBUF_160),
    .O(sum[0])
  );
  OBUF   cout_OBUF (
    .I(cout_OBUF_194),
    .O(cout)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

