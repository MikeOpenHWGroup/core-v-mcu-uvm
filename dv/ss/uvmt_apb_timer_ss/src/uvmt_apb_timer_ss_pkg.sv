// Copyright 2024 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMT_APB_TIMER_SS_PKG_SV__
`define __UVMT_APB_TIMER_SS_PKG_SV__


/**
 * @defgroup uvmt_apb_timer_ss_pkg APB simple timer unit Sub-System UVM Test Bench
 * @{
 * @defgroup uvmt_apb_timer_ss_misc   Miscellaneous
 * @defgroup uvmt_apb_timer_ss_tb     Test Bench
 * @defgroup uvmt_apb_timer_ss_tests  Tests
 * @}
 */


// Pre-processor macros
`include "uvm_macros.svh"
`include "uvmx_macros.svh"
`include "uvma_clk_macros.svh"
`include "uvma_reset_macros.svh"
`include "uvme_apb_timer_ss_macros.svh"
`include "uvmt_apb_timer_ss_macros.svh"


/**
 * Encapsulates all the types of the APB simple timer unit Sub-System UVM Test Bench.
 * @ingroup uvmt_apb_timer_ss_pkg
 */
package uvmt_apb_timer_ss_pkg;

   import uvm_pkg       ::*;
   import uvmx_pkg      ::*;
   import uvma_clk_pkg  ::*;
   import uvma_reset_pkg::*;
   import uvme_apb_timer_ss_pkg::*;

   // Constants / Structs / Enums
   `include "uvmt_apb_timer_ss_ftdecs.sv"
   `include "uvmt_apb_timer_ss_tdefs.sv"
   `include "uvmt_apb_timer_ss_constants.sv"

   // Tests
   `include "uvmt_apb_timer_ss_test_cfg.sv"
   `include "uvmt_apb_timer_ss_base_test.sv"
   `include "uvmt_apb_timer_ss_reg_hw_reset_test.sv"
   `include "uvmt_apb_timer_ss_reg_bit_bash_test.sv"
   `include "uvmt_apb_timer_ss_reg_access_test.sv"
   `include "uvmt_apb_timer_ss_shared_access_test.sv"

endpackage


// Module(s) / Checker(s)
`include "uvmt_apb_timer_ss_dut_wrap.sv"
`include "uvmt_apb_timer_ss_tb.sv"


`endif // __UVMT_APB_TIMER_SS_PKG_SV__