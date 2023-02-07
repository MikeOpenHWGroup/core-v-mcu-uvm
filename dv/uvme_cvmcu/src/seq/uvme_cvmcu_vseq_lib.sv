// Copyright 2022-2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_CVMCU_VSEQ_LIB_SV__
`define __UVME_CVMCU_VSEQ_LIB_SV__


`include "uvme_cvmcu_base_vseq.sv"
`include "uvme_cvmcu_reg_base_vseq.sv"
`include "uvme_cvmcu_init_vseq.sv"
`include "uvme_cvmcu_smoke_vseq.sv"


/**
 * Object cataloging the CORE-V MCU environment's virtual sequences.
 * @ingroup uvme_cvmcu_seq
 */
class uvme_cvmcu_vseq_lib_c extends uvmx_seq_lib_c #(
   .T_SEQ_ITEM(uvmx_seq_item_base_c)
);

   `uvm_object_utils          (uvme_cvmcu_vseq_lib_c)
   `uvm_sequence_library_utils(uvme_cvmcu_vseq_lib_c)

   /**
    * Default constructor.
    */
    function new(string name="uvme_cvmcu_vseq_lib");
      super.new(name);
   endfunction

   /**
    * User hook.
    */
   virtual function void add_lib_sequences();
      // TODO Add Sequences to uvme_cvmcu_vseq_lib_c
      // Ex: add_sequence(uvme_cvmcu_example_vseq_c::get_type());
   endfunction

endclass : uvme_cvmcu_vseq_lib_c


`endif // __UVME_CVMCU_VSEQ_LIB_SV__
