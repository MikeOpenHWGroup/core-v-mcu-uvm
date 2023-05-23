// Copyright 2023 Acme Enterprises
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_TCOUNTER_B_PRD_SV__
`define __UVME_TCOUNTER_B_PRD_SV__


/**
 * Component implementing TLM prediction of  Block behavior.
 * @ingroup uvme_tcounter_b_comps
 */
class uvme_tcounter_b_prd_c extends uvmx_block_prd_c #(
   .T_CFG  (uvme_tcounter_b_cfg_c  ),
   .T_CNTXT(uvme_tcounter_b_cntxt_c)
);

   /// @name FIFOs
   /// @{
   uvm_tlm_analysis_fifo #(uvma_tcounter_b_mon_trn_c)  fifo; ///< Queue of control plane monitor transactions
   /// @}

   /// @name Ports
   /// @{
   uvm_analysis_port #(uvma_tcounter_b_mon_trn_c)  ap ; ///< Port producing predicted data plane output transactions
   /// @}


   `uvm_component_utils(uvme_tcounter_b_prd_c)


   /**
    * Default constructor.
    */
   function new(string name="uvme_tcounter_b_prd", uvm_component parent=null);
      super.new(name, parent);
   endfunction

   /**
    * Creates TLM FIFOs.
    */
   virtual function void create_fifos();
      fifo = new("fifo", this);
   endfunction

   /**
    * Creates TLM Ports.
    */
   virtual function void create_ports();
      ap = new("ap", this);
   endfunction

   /**
    * TODO Describe uvme_tcounter_b_prd_c::predict()
    */
   virtual task predict();
      uvma_tcounter_b_mon_trn_c  in_trn, out_trn;
      `uvmx_prd_get(fifo, in_trn)
      out_trn.from(in_trn);
      // TODO Implement uvme_tcounter_b_prd_c::predict()
      //      Ex: out_trn = uvma_tcounter_b_mon_trn_c::type_id::create("out_trn");
      //          out_trn.dir_in = 0;
      //          out_trn.abc = in_trn.abc*2;
      `uvmx_prd_send(ap, out_trn)
   endtask

endclass : uvme_tcounter_b_prd_c


`endif // __UVME_TCOUNTER_B_PRD_SV__