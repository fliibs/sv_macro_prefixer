// MACRO REPLACE TEST

// define test
`define DEFINE_A
`define DEFINE_B B
`define DEFINE_P_MACRO(m) E_DEFINE_P_MACRO(m)

`define DEFINE_C (`DEFINE_A + `DEFINE_D)
`define DEFINE_D (`P_MARCO(C) + `DEFINE_E + `DEFINE_B)
`define DEFINE_G (`DEFINE_P_MACRO(1) + 1)

// ifdef test
`ifdef IFDEF_A
    `define IFDEF_DEINFE_A ifdef_define_a
`else
    `define IFDEF_ELSE_DEF_A ifdef_else_def_a
`endif

`define IFDEF_B

`ifdef IFDEF_B  
    `define IFDEF_DEINFE_B ifdef_define_b
`elsif IFDEF_A
    `define IFDEF_ELIF_DEF_B ifdef_elif_def_b
`else
    `define IFDEF_ELSE_DEF_B ifdef_else_def_b
`endif


// ifndef test
`ifndef IFNDEF_A
    `define IFNDEF_DEFINE_A ifndef_define_a
`else 
    `define IFNDEF_ELSE_DEF_A ifndef_else_def_a
`endif

`define IFNDEF_B

`ifndef IFNDEF_B  
    `define IFNDEF_DEINFE_B ifndef_define_b
`else
    `define IFNDEF_ELSE_DEF_B ifndef_else_def_b
`endif


// normal code test
some_code
SOME_CODE

`define SOME_MACRO_IN_CODE_UNDEF

some_code_`SOME_MACRO_IN_CODE_DEF
some_code_`SOME_MACRO_IN_CODE_UNDEF


// normal macro test
`define SOME_MACRO_DEF

`SOME_MACRO_DEF
`SOME_MACRO_UNDEF

// param macro test
`define PARAM_MACRO_A(A) `A + 1

something_`PARAM_MACRO_A(0)
`PARAM_MACRO_A(A)
`PARAM_MACRO_B(B)

// prefix test
`define _PREFIX_(name) name
`_PREFIX_(a)
module `_PREFIX_(qwer)

`undef _PREFIX_

`_PREFIX_(b)

`__PREFIX_(qwer)


// expand macro test
    `ifdef EXPAND_MACRO_IFDEF_A
    `endif

    `ifndef EXPAND_MACRO_IFNDEF_A
    `endif

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


