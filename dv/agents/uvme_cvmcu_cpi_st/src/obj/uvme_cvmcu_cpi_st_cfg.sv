// Copyright 2023 Acme Enterprises
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_CVMCU_CPI_ST_CFG_SV__
`define __UVME_CVMCU_CPI_ST_CFG_SV__


/**
 * Object encapsulating all parameters for creating, connecting and running CORE-V-MCU Camera Parallel Interface UVM Agent Self-Testing Environment (uvme_cvmcu_cpi_st_env_c).
 * @ingroup uvme_cvmcu_cpi_st_obj
 */
class uvme_cvmcu_cpi_st_cfg_c extends uvmx_agent_env_cfg_c;

   /// @name Bus Widths
   /// @{
   rand int unsigned  data_width; ///< Data
   /// @}

   /// @name Integrals
   /// @{
   rand bit  drv_idle_random; ///< Specifies the type of data to send during idle cycles
   /// @}

   /// @name Objects
   /// @{
   rand uvma_cvmcu_cpi_cfg_c  tx_cfg; ///< TX Agent configuration.
   rand uvma_cvmcu_cpi_cfg_c  rx_cfg; ///< RX Agent configuration.
   rand uvma_cvmcu_cpi_cfg_c  passive_cfg; ///< Passive Agent configuration.
   rand uvml_sb_simplex_cfg_c  sb_agent_cfg; ///< Agent Scoreboard configuration.
   rand uvml_sb_simplex_cfg_c  sb_e2e_cfg  ; ///<  End-to-end Scoreboard configuration.
   /// @}


   `uvm_object_utils_begin(uvme_cvmcu_cpi_st_cfg_c)
      `uvm_field_int (                         enabled              , UVM_DEFAULT          )
      `uvm_field_enum(uvm_active_passive_enum, is_active            , UVM_DEFAULT          )
      `uvm_field_int (                         data_width, UVM_DEFAULT + UVM_DEC)
      `uvm_field_int (                         drv_idle_random      , UVM_DEFAULT          )
      `uvm_field_enum(uvmx_reset_type_enum   , reset_type           , UVM_DEFAULT          )
      `uvm_field_int (                         scoreboarding_enabled, UVM_DEFAULT          )
      `uvm_field_int (                         cov_model_enabled    , UVM_DEFAULT          )
      `uvm_field_int (                         trn_log_enabled      , UVM_DEFAULT          )
      `uvm_field_int (                         cov_model_enabled    , UVM_DEFAULT          )
      `uvm_field_object(tx_cfg, UVM_DEFAULT)
      `uvm_field_object(rx_cfg, UVM_DEFAULT)
      `uvm_field_object(passive_cfg, UVM_DEFAULT)
      `uvm_field_object(sb_agent_cfg, UVM_DEFAULT)
      `uvm_field_object(sb_e2e_cfg, UVM_DEFAULT)
   `uvm_object_utils_end


   /**
    * Sets variable bit width fields for agent configurations.
    */
   constraint bw_cons {
      tx_cfg.data_width == data_width;
      rx_cfg.data_width == data_width;
      passive_cfg.data_width == data_width;
   }

   /**
    * Sets all configuration fields for agent configurations.
    */
   constraint agents_cfg_cons {
      tx_cfg.bypass_mode == 0;
      rx_cfg.bypass_mode == 0;
      passive_cfg.bypass_mode == 0;
      tx_cfg.drv_mode == UVMA_CVMCU_CPI_DRV_MODE_TX;
      rx_cfg.drv_mode == UVMA_CVMCU_CPI_DRV_MODE_RX;
      tx_cfg.drv_idle_random == drv_idle_random;
      rx_cfg.drv_idle_random == drv_idle_random;
      tx_cfg.reset_type == reset_type;
      rx_cfg.reset_type == reset_type;
      passive_cfg.reset_type == reset_type;
      tx_cfg.enabled == enabled;
      rx_cfg.enabled == enabled;
      passive_cfg.enabled == enabled;
      passive_cfg.is_active == UVM_PASSIVE;
      tx_cfg.is_active == is_active;
      rx_cfg.is_active == is_active;
      tx_cfg.cov_model_enabled == cov_model_enabled;
      rx_cfg.cov_model_enabled == cov_model_enabled;
      passive_cfg.cov_model_enabled == cov_model_enabled;
      tx_cfg.trn_log_enabled == trn_log_enabled;
      rx_cfg.trn_log_enabled == trn_log_enabled;
      passive_cfg.trn_log_enabled == trn_log_enabled;
   }

   /**
    * Sets all configuration fields for Scoreboard configurations.
    */
   constraint sb_e2e_cfg_cons {
      sb_agent_cfg.mode == UVML_SB_MODE_IN_ORDER;
      sb_e2e_cfg.mode == UVML_SB_MODE_IN_ORDER;
      sb_agent_cfg.enabled == scoreboarding_enabled;
      sb_e2e_cfg.enabled == scoreboarding_enabled;
   }


   /**
    * Default constructor.
    */
   function new(string name="uvme_cvmcu_cpi_st_cfg");
      super.new(name);
   endfunction

   /**
    * Creates objects.
    */
   virtual function void create_objects();
      tx_cfg = uvma_cvmcu_cpi_cfg_c::type_id::create("tx_cfg");
      rx_cfg = uvma_cvmcu_cpi_cfg_c::type_id::create("rx_cfg");
      passive_cfg = uvma_cvmcu_cpi_cfg_c::type_id::create("passive_cfg");
      sb_agent_cfg = uvml_sb_simplex_cfg_c::type_id::create("sb_agent_cfg");
      sb_e2e_cfg   = uvml_sb_simplex_cfg_c::type_id::create("sb_e2e_cfg"  );
   endfunction

   /**
    * Adds fields to Scoreboard logs.
    */
   function void post_randomize();
      sb_agent_cfg.reset_log();
      sb_e2e_cfg  .reset_log();
      sb_agent_cfg.add_to_log("size");
      sb_e2e_cfg  .add_to_log("size");
      sb_agent_cfg.add_to_log("data");
      sb_e2e_cfg  .add_to_log("data");
   endfunction

endclass : uvme_cvmcu_cpi_st_cfg_c


`endif // __UVME_CVMCU_CPI_ST_CFG_SV__