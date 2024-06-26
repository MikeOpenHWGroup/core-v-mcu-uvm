// Copyright 2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_CVMCU_CPI_ST_SB_SV__
`define __UVME_CVMCU_CPI_ST_SB_SV__


/**
 * Component encapsulating scoreboarding components for CORE-V-MCU Camera Parallel Interface UVM Agent Self-Testing Environment.
 * @ingroup uvme_cvmcu_cpi_st_comps
 */
class uvme_cvmcu_cpi_st_sb_c extends uvmx_agent_sb_c #(
   .T_CFG  (uvme_cvmcu_cpi_st_cfg_c  ),
   .T_CNTXT(uvme_cvmcu_cpi_st_cntxt_c)
);

   /// @name Components
   /// @{
   uvme_cvmcu_cpi_st_sb_simplex_c  sb_agent; ///< Agent Scoreboard.
   uvme_cvmcu_cpi_st_sb_simplex_c  sb_e2e  ; ///< End-to-end Scoreboard.
   /// @}


   `uvm_component_utils(uvme_cvmcu_cpi_st_sb_c)


   /**
    * Default constructor.
    */
   function new(string name="uvme_cvmcu_cpi_st_sb", uvm_component parent=null);
      super.new(name, parent);
   endfunction

   /**
    * Assigns configuration handles to components using UVM Configuration Database.
    */
   virtual function void assign_cfg();
      uvm_config_db#(uvmx_sb_simplex_cfg_c)::set(this, "sb_agent", "cfg", cfg.sb_agent_cfg);
      uvm_config_db#(uvmx_sb_simplex_cfg_c)::set(this, "sb_e2e"  , "cfg", cfg.sb_e2e_cfg  );
      endfunction

   /**
    * Assigns context handles to components using UVM Configuration Database.
    */
   virtual function void assign_cntxt();
      uvm_config_db#(uvmx_sb_simplex_cntxt_c)::set(this, "sb_agent", "cntxt", cntxt.sb_agent_cntxt);
      uvm_config_db#(uvmx_sb_simplex_cntxt_c)::set(this, "sb_e2e"  , "cntxt", cntxt.sb_e2e_cntxt  );
   
   endfunction

   /**
    * Creates scoreboard components.
    */
   virtual function void create_components();
      sb_agent = uvme_cvmcu_cpi_st_sb_simplex_c::type_id::create("sb_agent", this);
      sb_e2e   = uvme_cvmcu_cpi_st_sb_simplex_c::type_id::create("sb_e2e"  , this);
   
   endfunction

endclass


`endif // __UVME_CVMCU_CPI_ST_SB_SV__