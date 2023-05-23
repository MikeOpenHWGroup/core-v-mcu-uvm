// Copyright 2023 Acme Enterprises
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMA_TPRESCALER_B_CP_DRV_SV__
`define __UVMA_TPRESCALER_B_CP_DRV_SV__


/**
 * Driver driving uvma_tprescaler_b_if with Control Plane Sequence Items (uvma_tprescaler_b_cp_seq_item_c).
 * @ingroup uvma_tprescaler_b_comps
 */
class uvma_tprescaler_b_cp_drv_c extends uvmx_mp_drv_c #(
   .T_MP      (virtual uvma_tprescaler_b_if.cp_drv_mp),
   .T_CFG     (uvma_tprescaler_b_cfg_c               ),
   .T_CNTXT   (uvma_tprescaler_b_cntxt_c             ),
   .T_SEQ_ITEM(uvma_tprescaler_b_cp_seq_item_c       )
);

   `uvm_component_utils(uvma_tprescaler_b_cp_drv_c)
   `uvmx_mp_drv(cp_drv_mp, cp_drv_cb)


   /**
    * Default constructor.
    */
   function new(string name="uvma_tprescaler_b_cp_drv", uvm_component parent=null);
      super.new(name, parent);
   endfunction

   /**
    * Drives Control Plane driver clocking block (cp_drv_cb) on each clock cycle.
    */
   virtual task drive_item(ref uvma_tprescaler_b_cp_seq_item_c item);
      mp.cp_drv_cb.reset_count_i <= item.reset_count_i;
      mp.cp_drv_cb.enable_count_i <= item.enable_count_i;
      mp.cp_drv_cb.compare_value_i <= item.compare_value_i;
   endtask


endclass : uvma_tprescaler_b_cp_drv_c


`endif // __UVMA_TPRESCALER_B_CP_DRV_SV__