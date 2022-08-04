// Copyright 2022 Datum Technology Corporation
// Copyright 2022 Low Power Futures
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_APB_ADV_TIMER_REG_HW_RESET_VSEQ_SV__
`define __UVME_APB_ADV_TIMER_REG_HW_RESET_VSEQ_SV__


/**
 * Virtual sequence checking that the hardware reset values in a register block match the CORE-V MCU APB Advanced Timer Sub-System DUT.
 * @ingroup uvme_apb_adv_timer_seq
 */
class uvme_apb_adv_timer_reg_hw_reset_vseq_c extends uvme_apb_adv_timer_reg_base_vseq_c;

   `include "uvme_apb_adv_timer_reg_hw_reset_vseq_ignore_list.sv"

   rand uvm_reg_hw_reset_seq  hw_reset_seq; ///< Sequence to be run


   `uvm_object_utils_begin(uvme_apb_adv_timer_reg_hw_reset_vseq_c)
      `uvm_field_object(hw_reset_seq, UVM_DEFAULT)
   `uvm_object_utils_end


   /**
    * Creates hw_reset_seq.
    */
   extern function new(string name="uvme_apb_adv_timer_reg_hw_reset_vseq");

   /**
    * TODO Describe uvme_apb_adv_timer_reg_hw_reset_vseq_c::add_to_ignore_list()
    */
   extern virtual function void add_to_ignore_list();

   /**
    * Runs #hw_reset_seq against #single_block.
    */
   extern virtual task run_single_block();

   /**
    * Runs #hw_reset_seq against uvme_apb_adv_timer_reg_block_c.
    */
   extern virtual task run_all_blocks();

endclass : uvme_apb_adv_timer_reg_hw_reset_vseq_c


function uvme_apb_adv_timer_reg_hw_reset_vseq_c::new(string name="uvme_apb_adv_timer_reg_hw_reset_vseq");

   super.new(name);
   hw_reset_seq = uvm_reg_hw_reset_seq::type_id::create("hw_reset_seq");

endfunction : new


function void uvme_apb_adv_timer_reg_hw_reset_vseq_c::add_to_ignore_list();

   foreach (reset_ignore_list[ii]) begin
      ignore_list.push_back(reset_ignore_list[ii]);
   end

endfunction : add_to_ignore_list


task uvme_apb_adv_timer_reg_hw_reset_vseq_c::run_single_block();

   hw_reset_seq.model = single_block;
   `uvm_send(hw_reset_seq)

endtask : run_single_block


task uvme_apb_adv_timer_reg_hw_reset_vseq_c::run_all_blocks();

   hw_reset_seq.model = cfg.apb_adv_timer_reg_block;
   `uvm_send(hw_reset_seq)

endtask : run_all_blocks


`endif // __UVME_APB_ADV_TIMER_REG_HW_RESET_VSEQ_SV__
