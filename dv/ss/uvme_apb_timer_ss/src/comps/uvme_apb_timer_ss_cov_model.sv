// Copyright 2024 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_APB_TIMER_SS_COV_MODEL_SV__
`define __UVME_APB_TIMER_SS_COV_MODEL_SV__


/**
 * Component encapsulating APB simple timer unit Sub-System's functional coverage model.
 * @ingroup uvme_apb_timer_ss_comps
 */
class uvme_apb_timer_ss_cov_model_c extends uvmx_ss_env_cov_model_c #(
   .T_CFG  (uvme_apb_timer_ss_cfg_c  ),
   .T_CNTXT(uvme_apb_timer_ss_cntxt_c)
);

   /// @name Objects
   /// @{
   /// @}

   /// @name TLM
   /// @{
   /// @}


   `uvm_component_utils(uvme_apb_timer_ss_cov_model_c)


   /**
    * Coverage for #cfg
    */
   covergroup apb_timer_ss_cfg_cg;
      // TODO Implement apb_timer_ss_cfg_cg
      //      Ex: abc_cp : coverpoint cfg.abc;
   endgroup : apb_timer_ss_cfg_cg

   /**
    * Coverage for #cntxt
    */
   covergroup apb_timer_ss_cntxt_cg;
      // TODO Implement apb_timer_ss_cntxt_cg
      //      Ex: abc_cp : coverpoint cntxt.abc;
   endgroup : apb_timer_ss_cntxt_cg

   /**
    * Creates covergroups.
    */
   function new(string name="uvme_apb_timer_ss_cov_model", uvm_component parent=null);
      super.new(name, parent);
      apb_timer_ss_cfg_cg   = new();
      apb_timer_ss_cntxt_cg = new();
   endfunction

   /**
    * Creates TLM FIFOs.
    */
   virtual function void create_fifos();
   endfunction

   /// @name Sampling functions
   /// @{
   virtual function void sample_cfg();
      apb_timer_ss_cfg_cg.sample();
   endfunction

   virtual function void sample_cntxt();
      apb_timer_ss_cntxt_cg.sample();
   endfunction

   virtual task sample_tlm();
      fork
      join
   endtask
   /// @}

endclass


`endif // __UVME_APB_TIMER_SS_COV_MODEL_SV__