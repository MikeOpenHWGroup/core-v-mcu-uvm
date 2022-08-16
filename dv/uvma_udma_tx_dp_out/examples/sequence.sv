// Copyright 2022 Datum Technology Corporation
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// This file contains sample code that demonstrates how to add a new sequence to the uDMA Tx Channels Block Data Plane Output UVM Agent.


`ifndef __UVMA_UDMA_TX_DP_OUT_MY_SEQ_SV__
`define __UVMA_UDMA_TX_DP_OUT_MY_SEQ_SV__


/**
 * Sample sequence that runs 5 fully random items by default.
 */
class uvma_udma_tx_dp_out_my_seq_c extends uvma_udma_tx_dp_out_base_seq_c;

   /// @defgroup Knobs
   /// @{
   rand int unsigned  num_items; ///< Number of sequence items to be generated.
   /// @}


   `uvm_object_utils_begin(uvma_udma_tx_dp_out_my_seq_c)
      `uvm_field_int(num_items, UVM_DEFAULT)
   `uvm_object_utils_end


   /**
    * Default values for random fields.
    */
   constraint defaults_cons {
      soft num_items == 5;
   }


   /**
    * Default constructor.
    */
   extern function new(string name="uvma_udma_tx_dp_out_my_seq");

   /**
    * Generates num_items of fully random reqs.
    */
   extern virtual task body();

endclass : uvma_udma_tx_dp_out_my_seq_c


function uvma_udma_tx_dp_out_my_seq_c::new(string name="uvma_udma_tx_dp_out_my_seq");

   super.new(name);

endfunction : new


task uvma_udma_tx_dp_out_my_seq_c::body();

   repeat (num_items) begin
      `uvm_do(req)
   end

endtask : body


`endif __UVMA_UDMA_TX_DP_OUT_MY_SEQ_SV__