// Copyright 2024 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_APB_ADV_TIMER_SS_CNTXT_SV__
`define __UVME_APB_ADV_TIMER_SS_CNTXT_SV__


/**
 * Object encapsulating all state variables for APB Advanced Timer Sub-System environment (uvme_apb_adv_timer_ss_env_c) components.
 * @ingroup uvme_apb_adv_timer_ss_obj
 */
class uvme_apb_adv_timer_ss_cntxt_c extends uvmx_ss_env_cntxt_c #(
   .T_CFG      (uvme_apb_adv_timer_ss_cfg_c           ),
   .T_REG_MODEL(uvme_apb_adv_timer_ss_reg_block_c     ),
   .T_PROBE_VIF(virtual uvme_apb_adv_timer_ss_probe_if)
);

   /// @name Agents
   /// @{
   uvma_apb_cntxt_c  proc_agent_cntxt; ///< Processor access agent context
   uvma_irq_cntxt_c  irq_events_agent_cntxt; ///< Events IRQ agent context
   /// @}

   /// @name Blocks
   /// @{
   uvme_adv_timer_b_cntxt_c  adv_timer0_b_env_cntxt; ///< Advanced timer 0 block context
   uvme_adv_timer_b_cntxt_c  adv_timer1_b_env_cntxt; ///< Advanced timer 1 block context
   uvme_adv_timer_b_cntxt_c  adv_timer2_b_env_cntxt; ///< Advanced timer 2 block context
   uvme_adv_timer_b_cntxt_c  adv_timer3_b_env_cntxt; ///< Advanced timer 3 block context
   /// @}


   `uvm_object_utils_begin(uvme_apb_adv_timer_ss_cntxt_c)
      `uvm_field_enum(uvmx_reset_state_enum, reset_state, UVM_DEFAULT)
      `uvm_field_object(proc_agent_cntxt, UVM_DEFAULT)
      `uvm_field_object(irq_events_agent_cntxt, UVM_DEFAULT)
      `uvm_field_object(adv_timer0_b_env_cntxt, UVM_DEFAULT)
      `uvm_field_object(adv_timer1_b_env_cntxt, UVM_DEFAULT)
      `uvm_field_object(adv_timer2_b_env_cntxt, UVM_DEFAULT)
      `uvm_field_object(adv_timer3_b_env_cntxt, UVM_DEFAULT)
   `uvm_object_utils_end


   /**
    * Default constructor.
    */
   function new(string name="uvme_apb_adv_timer_ss_cntxt");
      super.new(name);
   endfunction

   /**
    * Creates objects.
    */
   virtual function void build(uvme_apb_adv_timer_ss_cfg_c cfg);
      proc_agent_cntxt = uvma_apb_cntxt_c::type_id::create("proc_cntxt");
      irq_events_agent_cntxt = uvma_irq_cntxt_c::type_id::create("irq_events_cntxt");
      adv_timer0_b_env_cntxt = uvme_adv_timer_b_cntxt_c::type_id::create("adv_timer0_b_env_cntxt");
      adv_timer1_b_env_cntxt = uvme_adv_timer_b_cntxt_c::type_id::create("adv_timer1_b_env_cntxt");
      adv_timer2_b_env_cntxt = uvme_adv_timer_b_cntxt_c::type_id::create("adv_timer2_b_env_cntxt");
      adv_timer3_b_env_cntxt = uvme_adv_timer_b_cntxt_c::type_id::create("adv_timer3_b_env_cntxt");
   endfunction

   /**
    * Returns all state variables to initial values.
    */
   virtual function void do_reset(uvme_apb_adv_timer_ss_cfg_c cfg);
      proc_agent_cntxt.reset();
      irq_events_agent_cntxt.reset();
      adv_timer0_b_env_cntxt.reset();
      adv_timer1_b_env_cntxt.reset();
      adv_timer2_b_env_cntxt.reset();
      adv_timer3_b_env_cntxt.reset();
   endfunction

endclass


`endif // __UVME_APB_ADV_TIMER_SS_CNTXT_SV__