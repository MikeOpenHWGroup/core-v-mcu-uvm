// Copyright 2023 Acme Enterprises
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMT_APB_ADV_TIMER_SS_REG_BIT_BASH_TEST_SV__
`define __UVMT_APB_ADV_TIMER_SS_REG_BIT_BASH_TEST_SV__


/**
 * Test checking the accessibility of every bit of every register in the APB Advanced Timer Sub-System DUT.
 * @ingroup uvmt_apb_adv_timer_ss_tests
 */
class uvmt_apb_adv_timer_ss_reg_bit_bash_test_c extends uvmt_apb_adv_timer_ss_base_test_c;

   `uvm_component_utils(uvmt_apb_adv_timer_ss_reg_bit_bash_test_c)
   `uvmx_test_reg(UVM_DO_REG_BIT_BASH)

   /**
    * Default constructor.
    */
   function new(string name="uvmt_apb_adv_timer_ss_reg_bit_bash_test", uvm_component parent=null);
      super.new(name, parent);
   endfunction

endclass : uvmt_apb_adv_timer_ss_reg_bit_bash_test_c


`endif // __UVMT_APB_ADV_TIMER_SS_REG_BIT_BASH_TEST_SV__