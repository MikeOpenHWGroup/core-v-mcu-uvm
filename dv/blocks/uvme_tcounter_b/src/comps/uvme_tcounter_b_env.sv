// Copyright 2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_TCOUNTER_B_ENV_SV__
`define __UVME_TCOUNTER_B_ENV_SV__


/**
 * Timer unit counter Block UVM Environment with TLM self-checking scoreboards and prediction.
 * @ingroup uvme_tcounter_b_comps
 */
class uvme_tcounter_b_env_c extends uvmx_block_env_c #(
   .T_CFG      (uvme_tcounter_b_cfg_c      ),
   .T_CNTXT    (uvme_tcounter_b_cntxt_c    ),
   .T_SQR      (uvme_tcounter_b_sqr_c      ),
   .T_PRD      (uvme_tcounter_b_prd_c      ),
   .T_SB       (uvme_tcounter_b_sb_c       ),
   .T_COV_MODEL(uvme_tcounter_b_cov_model_c)
);

   /// @name Agents
   /// @{
   uvma_tcounter_b_agent_c  agent; ///< Block agent
   /// @}


   `uvm_component_utils(uvme_tcounter_b_env_c)


   /**
    * Default constructor.
    */
   function new(string name="uvme_tcounter_b_env", uvm_component parent=null);
      super.new(name, parent);
   endfunction

   /**
    * Assigns configuration handles to components using UVM Configuration Database.
    */
   virtual function void assign_cfg();
      uvm_config_db#(uvma_tcounter_b_cfg_c)::set(this, "agent", "cfg", cfg.agent_cfg);
      uvm_config_db#(uvmx_sb_simplex_cfg_c)::set(this, "scoreboard", "cfg", cfg.sb_cfg);
   endfunction

   /**
    * Assigns context handles to components using UVM Configuration Database.
    */
   virtual function void assign_cntxt();
      uvm_config_db#(uvma_tcounter_b_cntxt_c)::set(this, "agent", "cntxt", cntxt.agent_cntxt);
      uvm_config_db#(uvmx_sb_simplex_cntxt_c)::set(this, "scoreboard", "cntxt", cntxt.sb_cntxt);
   endfunction

   /**
    * Creates agent components.
    */
   virtual function void create_agents();
      agent = uvma_tcounter_b_agent_c::type_id::create("agent", this);
   endfunction

   /**
    * Connects agents to predictor.
    */
   virtual function void connect_predictor();
      agent.in_mon_trn_ap.connect(predictor.fifo.analysis_export);
   endfunction

   /**
    * Connects scoreboards components to agents/predictor.
    */
   virtual function void connect_scoreboard();
      predictor.ap            .connect(scoreboard.exp_export);
      agent    .out_mon_trn_ap.connect(scoreboard.act_export);
   endfunction

   /**
    * Connects environment coverage model to agents/scoreboards/predictor.
    */
   virtual function void connect_coverage_model();
      agent.seq_item_ap    .connect(cov_model.seq_item_fifo    .analysis_export);
      agent.in_mon_trn_ap  .connect(cov_model.in_mon_trn_fifo  .analysis_export);
      agent.out_mon_trn_ap .connect(cov_model.out_mon_trn_fifo .analysis_export);
      agent.cp_seq_item_ap .connect(cov_model.cp_seq_item_fifo .analysis_export);
      agent.dpi_seq_item_ap.connect(cov_model.dpi_seq_item_fifo.analysis_export);
      agent.dpo_seq_item_ap.connect(cov_model.dpo_seq_item_fifo.analysis_export);
      agent.cp_mon_trn_ap  .connect(cov_model.cp_mon_trn_fifo  .analysis_export);
      agent.dpi_mon_trn_ap .connect(cov_model.dpi_mon_trn_fifo .analysis_export);
      agent.dpo_mon_trn_ap .connect(cov_model.dpo_mon_trn_fifo .analysis_export);
   endfunction

   /**
    * Assembles sequencer from agent sequencers.
    */
   virtual function void assemble_sequencer();
      sequencer.agent_sequencer = agent.sequencer;
   endfunction

endclass


`endif // __UVME_TCOUNTER_B_ENV_SV__