// Copyright 2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMA_CVMCU_DBG_MON_SV__
`define __UVMA_CVMCU_DBG_MON_SV__


/**
 * Component sampling Monitor Transactions from  Interface (uvma_cvmcu_dbg_if).
 * @ingroup uvma_cvmcu_dbg_comps
 */
class uvma_cvmcu_dbg_mon_c extends uvmx_mon_c #(
   .T_CFG  (uvma_cvmcu_dbg_cfg_c  ),
   .T_CNTXT(uvma_cvmcu_dbg_cntxt_c)
);

   /// @name Components
   /// @{
   uvma_cvmcu_dbg_phy_mon_c  phy_monitor; ///<
   /// @}


   `uvm_component_utils(uvma_cvmcu_dbg_mon_c)
   `uvmx_mon_reset(reset_n)


   /**
    * Default constructor.
    */
   function new(string name="uvma_cvmcu_dbg_mon", uvm_component parent=null);
      super.new(name, parent);
   endfunction

   /**
    * Creates sub-monitor components.
    */
   virtual function void create_monitors();
      phy_monitor = uvma_cvmcu_dbg_phy_mon_c::type_id::create("phy_monitor", this);
   endfunction

endclass


`endif // __UVMA_CVMCU_DBG_MON_SV__