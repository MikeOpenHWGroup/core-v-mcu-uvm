// Copyright 2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMA_TPRESCALER_B_DPO_MON_SV__
`define __UVMA_TPRESCALER_B_DPO_MON_SV__


/**
 * Monitor sampling Data Plane Output monitor transactions (uvma_tprescaler_b_dpo_mon_trn_c) from uvma_tprescaler_b_if.
 * @ingroup uvma_tprescaler_b_comps
 */
class uvma_tprescaler_b_dpo_mon_c extends uvmx_mp_mon_c #(
   .T_MP     (virtual uvma_tprescaler_b_if.dpo_mon_mp),
   .T_CFG    (uvma_tprescaler_b_cfg_c                ),
   .T_CNTXT  (uvma_tprescaler_b_cntxt_c              ),
   .T_MON_TRN(uvma_tprescaler_b_dpo_mon_trn_c        )
);

   `uvm_component_utils(uvma_tprescaler_b_dpo_mon_c)
   `uvmx_mp_mon(dpo_mon_mp, dpo_mon_cb)


   /**
    * Default constructor.
    */
   function new(string name="uvma_tprescaler_b_dpo_mon", uvm_component parent=null);
      super.new(name, parent);
   endfunction

   /**
    * Samples #trn from the Data Plane Output monitor clocking block (dpi_mon_cb) on each clock cycle.
    */
   virtual task sample_trn(ref uvma_tprescaler_b_dpo_mon_trn_c trn);
      `uvmx_mp_mon_signal(trn, counter_value_o)
      `uvmx_mp_mon_signal(trn, target_reached_o)
   endtask


endclass


`endif // __UVMA_TPRESCALER_B_DPO_MON_SV__