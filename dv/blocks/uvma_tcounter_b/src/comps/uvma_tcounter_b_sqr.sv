// Copyright 2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMA_TCOUNTER_B_SQR_SV__
`define __UVMA_TCOUNTER_B_SQR_SV__


/**
 * Control Plane Sequencer.
 * @ingroup uvma_tcounter_b_comps
 */
typedef uvmx_sqr_c #(
   .T_CFG     (uvma_tcounter_b_cfg_c        ),
   .T_CNTXT   (uvma_tcounter_b_cntxt_c      ),
   .T_SEQ_ITEM(uvma_tcounter_b_cp_seq_item_c)
) uvma_tcounter_b_cp_sqr_c;

/**
 * Data Plane Input Sequencer.
 * @ingroup uvma_tcounter_b_comps
 */
typedef uvmx_sqr_c #(
   .T_CFG     (uvma_tcounter_b_cfg_c         ),
   .T_CNTXT   (uvma_tcounter_b_cntxt_c       ),
   .T_SEQ_ITEM(uvma_tcounter_b_dpi_seq_item_c)
) uvma_tcounter_b_dpi_sqr_c;

/**
 * Data Plane Output Sequencer.
 * @ingroup uvma_tcounter_b_comps
 */
typedef uvmx_sqr_c #(
   .T_CFG     (uvma_tcounter_b_cfg_c         ),
   .T_CNTXT   (uvma_tcounter_b_cntxt_c       ),
   .T_SEQ_ITEM(uvma_tcounter_b_dpo_seq_item_c)
) uvma_tcounter_b_dpo_sqr_c;


/**
 * Sequencer running Timer unit counter Agent Sequences extending uvma_tcounter_b_base_seq_c.
 * @ingroup uvma_tcounter_b_comps
 */
class uvma_tcounter_b_sqr_c extends uvmx_agent_sqr_c #(
   .T_CFG     (uvma_tcounter_b_cfg_c     ),
   .T_CNTXT   (uvma_tcounter_b_cntxt_c   ),
   .T_SEQ_ITEM(uvma_tcounter_b_seq_item_c)
);

   /// @name Components
   /// @{
   uvma_tcounter_b_cp_sqr_c   cp_sequencer ; ///< Control Plane Sequencer connected to uvma_tcounter_b_cp_drv_c.
   uvma_tcounter_b_dpi_sqr_c  dpi_sequencer; ///< Data Plane Input Sequencer connected to uvma_tcounter_b_dpi_drv_c.
   uvma_tcounter_b_dpo_sqr_c  dpo_sequencer; ///< Data Plane Output Sequencer connected to uvma_tcounter_b_dpo_drv_c.
   /// @}

   /// @name FIFOs
   /// @{
   uvm_tlm_analysis_fifo #(uvma_tcounter_b_mon_trn_c    )  in_mon_trn_fifo ; ///< Output for Input Monitor Transactions.
   uvm_tlm_analysis_fifo #(uvma_tcounter_b_mon_trn_c    )  out_mon_trn_fifo; ///< Output for Output Monitor Transactions.
   uvm_tlm_analysis_fifo #(uvma_tcounter_b_cp_mon_trn_c )  cp_mon_trn_fifo ; ///< Input for Monitor Transactions from uvma_tcounter_b_cp_mon_c.
   uvm_tlm_analysis_fifo #(uvma_tcounter_b_dpi_mon_trn_c)  dpi_mon_trn_fifo; ///< Input for Monitor Transactions from uvma_tcounter_b_dpi_mon_c.
   uvm_tlm_analysis_fifo #(uvma_tcounter_b_dpo_mon_trn_c)  dpo_mon_trn_fifo; ///< Input for Monitor Transactions from uvma_tcounter_b_dpo_mon_c.
   /// @}


   `uvm_component_utils(uvma_tcounter_b_sqr_c)


   /**
    * Default constructor.
    */
   function new(string name="uvma_tcounter_b_sqr", uvm_component parent=null);
      super.new(name, parent);
   endfunction

   /**
    * Creates Sequencer components.
    */
   virtual function void create_sequencers();
      cp_sequencer  = uvma_tcounter_b_cp_sqr_c ::type_id::create("cp_sequencer" , this);
      dpi_sequencer = uvma_tcounter_b_dpi_sqr_c::type_id::create("dpi_sequencer", this);
      dpo_sequencer = uvma_tcounter_b_dpo_sqr_c::type_id::create("dpo_sequencer", this);
   endfunction

   /**
    * Creates TLM FIFOs.
    */
   virtual function void create_fifos();
      in_mon_trn_fifo  = new("in_mon_trn_fifo", this);
      out_mon_trn_fifo = new("out_mon_trn_fifo", this);
      cp_mon_trn_fifo  = new("cp_mon_trn_fifo" , this);
      dpi_mon_trn_fifo = new("dpi_mon_trn_fifo", this);
      dpo_mon_trn_fifo = new("dpo_mon_trn_fifo", this);
   endfunction

endclass


`endif // __UVMA_TCOUNTER_B_SQR_SV__