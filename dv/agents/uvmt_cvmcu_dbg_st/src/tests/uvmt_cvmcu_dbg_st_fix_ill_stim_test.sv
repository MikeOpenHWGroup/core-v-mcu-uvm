// Copyright 2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMT_CVMCU_DBG_ST_FIX_ILL_STIM_TEST_SV__
`define __UVMT_CVMCU_DBG_ST_FIX_ILL_STIM_TEST_SV__


/**
 * Checks fault handling with fixed illegal stimulus and scoreboarding.
 * @ingroup uvmt_cvmcu_dbg_st_tests_error
 */
class uvmt_cvmcu_dbg_st_fix_ill_stim_test_c extends uvmt_cvmcu_dbg_st_base_test_c;

   /// @name Sequences
   /// @{
   rand uvma_cvmcu_dbg_fix_ill_stim_seq_c  fix_ill_stim_seq; ///< Executes during 'main_phase()'
   /// @}


   `uvm_component_utils_begin(uvmt_cvmcu_dbg_st_fix_ill_stim_test_c)
      `uvm_field_object(fix_ill_stim_seq, UVM_DEFAULT)
   `uvm_component_utils_end


   /**
    * Restricts randomization space.
    */
   constraint rules_cons {
      env_cfg.scoreboarding_enabled == 1;
   }


   /**
    * Default constructor.
    */
   function new(string name="uvmt_cvmcu_dbg_st_fix_ill_stim_test", uvm_component parent=null);
      super.new(name, parent);
   endfunction

   /**
    * Creates sequence fix_ill_stim_seq.
    */
   virtual function void create_sequences();
      fix_ill_stim_seq = uvma_cvmcu_dbg_fix_ill_stim_seq_c::type_id::create("fix_ill_stim_seq");
   endfunction

   /**
    * Runs fix_ill_stim_seq.
    */
   virtual task main_phase(uvm_phase phase);
      phase.raise_objection(this);
      `uvm_info("TEST", $sformatf("Starting 'fix_ill_stim_seq':\n%s", fix_ill_stim_seq.sprint()), UVM_NONE)
      fix_ill_stim_seq.start(sequencer.core_sequencer);
      `uvm_info("TEST", $sformatf("Finished 'fix_ill_stim_seq':\n%s", fix_ill_stim_seq.sprint()), UVM_NONE)
      phase.drop_objection(this);
   endtask

   /**
    * Ensures that test goals were met.
    */
   virtual function void check_phase(uvm_phase phase);
      if (env_cntxt.sb_agent_cntxt.match_count == 0) begin
         `uvm_error("TEST", "Scoreboard 'agent' did not see any matches during simulation")
      end
      if (env_cntxt.sb_e2e_cntxt.match_count == 0) begin
         `uvm_error("TEST", "Scoreboard 'e2e' did not see any matches during simulation")
      end
   endfunction

   /**
    * Prints end-of-test goals report.
    */
   virtual function void report_phase(uvm_phase phase);
      `uvmx_test_report({
         $sformatf("Scoreboard 'agent' saw %0d matches during simulation", env_cntxt.sb_agent_cntxt.match_count),
         $sformatf("Scoreboard 'e2e' saw %0d matches during simulation", env_cntxt.sb_e2e_cntxt.match_count)
      })
   endfunction

endclass


`endif // __UVMT__ST_FIX_ILL_STIM_TEST_SV__