// Copyright 2024 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMT_APB_TIMER_SS_REG_ACCESS_TEST_SV__
`define __UVMT_APB_TIMER_SS_REG_ACCESS_TEST_SV__


/**
 * Test verifying the accessibility of all registers in the APB simple timer unit Sub-System DUT
 * by writing through its default address map then reading it via the backdoor, then reversing the process, making sure
 * that the resulting value matches the mirrored value.
 * @ingroup uvmt_apb_timer_ss_tests
 */
class uvmt_apb_timer_ss_reg_access_test_c extends uvmt_apb_timer_ss_base_test_c;

   `uvm_component_utils(uvmt_apb_timer_ss_reg_access_test_c)
   `uvmx_test_reg(UVM_DO_REG_ACCESS)


   /**
    * Disables all agents not register-related.
    */
   constraint disable_agents_cons {
      env_cfg.irq_events_agent_cfg.enabled == 0;
   }

   /**
    * Disables all blocks.
    */
   constraint disable_blocks_cons {
      env_cfg.counter_lo_b_env_cfg.enabled == 0;
      env_cfg.counter_hi_b_env_cfg.enabled == 0;
      env_cfg.prescaler_lo_b_env_cfg.enabled == 0;
      env_cfg.prescaler_hi_b_env_cfg.enabled == 0;
   }


   /**
    * Default constructor.
    */
   function new(string name="uvmt_apb_timer_ss_reg_access_test", uvm_component parent=null);
      super.new(name, parent);
   endfunction

endclass


`endif // __UVMT_APB_TIMER_SS_REG_ACCESS_TEST_SV__