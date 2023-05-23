// Copyright 2023 Acme Enterprises
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_ADV_TIMER_B_PKG_SV__
`define __UVME_ADV_TIMER_B_PKG_SV__


/**
 * @defgroup uvme_adv_timer_b_pkg  Block UVM Environment
 * @{
 * @defgroup uvme_adv_timer_b_comps Components
 * @defgroup uvme_adv_timer_b_misc  Miscellaneous
 * @defgroup uvme_adv_timer_b_obj   Objects
 * @defgroup uvme_adv_timer_b_seq   Sequences & Sequence Items
 * @}
 */


// Pre-processor macros
`include "uvm_macros.svh"
`include "uvmx_macros.svh"
`include "uvml_sb_macros.svh"
`include "uvma_adv_timer_b_macros.svh"
`include "uvme_adv_timer_b_macros.svh"

// Interface(s)


 /**
 * Encapsulates all the types of the  Block UVM environment.
 * @ingroup uvme_adv_timer_b_st_pkg
 */
package uvme_adv_timer_b_pkg;

   import uvm_pkg    ::*;
   import uvmx_pkg   ::*;
   import uvml_sb_pkg::*;
   import uvma_adv_timer_b_pkg::*;

   // Constants / Structs / Enums
   `include "uvme_adv_timer_b_tdefs.sv"
   `include "uvme_adv_timer_b_constants.sv"

   // Objects
   `include "uvme_adv_timer_b_cfg.sv"
   `include "uvme_adv_timer_b_cntxt.sv"

   // Components
   `include "uvme_adv_timer_b_vsqr.sv"
   `include "uvme_adv_timer_b_prd.sv"
   `include "uvme_adv_timer_b_cov_model.sv"
   `include "uvme_adv_timer_b_env.sv"

   // Sequences
   `include "uvme_adv_timer_b_vseq_lib.sv"

endpackage : uvme_adv_timer_b_pkg


// Module(s) / Checker(s)


`endif // __UVME_ADV_TIMER_B_PKG_SV__