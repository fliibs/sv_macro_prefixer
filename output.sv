// MACRO REPLACE TEST

// define test
`define DW_DEFINE_A
`define DW_DEFINE_B B
`define DW_DEFINE_P_MACRO(m) E_DEFINE_P_MACRO(m)

`define DW_DEFINE_C (`DW_DEFINE_A + `DW_DEFINE_D)
`define DW_DEFINE_D (`DW_P_MARCO(C) + `DW_DEFINE_E + `DW_DEFINE_B)
`define DW_DEFINE_G (`E_DEFINE_P_MACRO(m) + 1)

// ifdef test
`ifdef DW_IFDEF_A
    `define DW_IFDEF_DEINFE_A ifdef_define_a
`else
    `define DW_IFDEF_ELSE_DEF_A ifdef_else_def_a
`endif

`define DW_IFDEF_B

`ifdef DW_IFDEF_B
    `define DW_IFDEF_DEINFE_B ifdef_define_b
`elsif DW_IFDEF_A
    `define DW_IFDEF_ELIF_DEF_B ifdef_elif_def_b
`else
    `define DW_IFDEF_ELSE_DEF_B ifdef_else_def_b
`endif


// ifndef test
`ifndef DW_IFNDEF_A
    `define DW_IFNDEF_DEFINE_A ifndef_define_a
`else
    `define DW_IFNDEF_ELSE_DEF_A ifndef_else_def_a
`endif

`define DW_IFNDEF_B

`ifndef DW_IFNDEF_B
    `define DW_IFNDEF_DEINFE_B ifndef_define_b
`else
    `define DW_IFNDEF_ELSE_DEF_B ifndef_else_def_b
`endif


// normal code test
some_code
SOME_CODE

`define DW_SOME_MACRO_IN_CODE_UNDEF

some_code_`DW_SOME_MACRO_IN_CODE_DEF
some_code_`DW_SOME_MACRO_IN_CODE_UNDEF


// normal macro test
`define DW_SOME_MACRO_DEF

`DW_SOME_MACRO_DEF
`DW_SOME_MACRO_UNDEF

// param macro test
`define DW_PARAM_MACRO_A(A) `DW_A + 1

something_``DW_A + 1
`DW_PARAM_MACRO_A(A)
`DW_PARAM_MACRO_B(B)

// prefix test
`define _PREFIX_(name) name
`_PREFIX_(DW_a)

`undef _PREFIX_

`_PREFIX_(DW_b)

`DW___PREFIX_(qwer)





// include test


// other command
`resetall
`undefineall
`timescale 1ns/1ps
`default_nettype wire
`unconnected_drive pull0
`nounconnected_drive
`celldefine
`endcelldefine
`line
`begin_keywords
`end_keywords
