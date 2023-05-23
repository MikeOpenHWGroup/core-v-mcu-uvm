// Copyright 2023 Acme Enterprises
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_APB_TIMER_SS_VSEQ_LIB_SV__
`define __UVME_APB_TIMER_SS_VSEQ_LIB_SV__


`include "uvme_apb_timer_ss_base_vseq.sv"
`include "uvme_apb_timer_ss_reg_base_vseq.sv"
`include "uvme_apb_timer_ss_init_vseq.sv"
`include "uvme_apb_timer_ss_cfg_vseq.sv"


/**
 * Object cataloging the APB simple timer unit Sub-System environment's virtual sequences.
 * @ingroup uvme_apb_timer_ss_seq
 */
class uvme_apb_timer_ss_vseq_lib_c extends uvmx_seq_lib_c #(
   .T_SEQ_ITEM(uvmx_seq_item_base_c)
);

   `uvm_object_utils          (uvme_apb_timer_ss_vseq_lib_c)
   `uvm_sequence_library_utils(uvme_apb_timer_ss_vseq_lib_c)

   /**
    * Default constructor.
    */
    function new(string name="uvme_apb_timer_ss_vseq_lib");
      super.new(name);
   endfunction

   /**
    * User hook.
    */
   virtual function void add_lib_sequences();
      // TODO Add Sequences to uvme_apb_timer_ss_vseq_lib_c
      // Ex: add_sequence(uvme_apb_timer_ss_example_vseq_c::get_type());
   endfunction

endclass : uvme_apb_timer_ss_vseq_lib_c


`endif // __UVME_APB_TIMER_SS_VSEQ_LIB_SV__