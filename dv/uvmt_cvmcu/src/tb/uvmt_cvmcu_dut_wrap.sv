// Copyright 2022-2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMT_CVMCU_DUT_WRAP_SV__
`define __UVMT_CVMCU_DUT_WRAP_SV__


/**
 * Module wrapper for CORE-V MCU DUT.  All ports are SV interfaces.
 * @ingroup uvmt_cvmcu_tb
 */
module uvmt_cvmcu_dut_wrap (
   uvma_clk_if          sys_clk_if  , ///< Clock generating interface
   uvma_reset_if        sys_reset_if, ///< Reset assertion interface
   uvma_obi_if          obi_instr_if, ///< Register access interface
   uvma_obi_if          obi_data_if , ///< Register access interface
   uvme_cvmcu_probe_if  probe_if      ///< Misc. signals
);

   reg  jtag_tck_i  = 0;
   reg  jtag_tdi_i  = 0;
   reg  jtag_tdo_o     ;
   reg  jtag_tms_i  = 0;
   reg  jtag_trst_i = 0;
   reg  bootsel_i   = 1;
   reg  stm_i       = 0;
   reg  [ 47:0]  io_in_i     = 0;
   reg  [ 47:0]  io_out_o       ;
   reg  [287:0]  pad_cfg_o      ;
   reg  [ 47:0]  io_oe_o        ;

   core_v_mcu #(.USE_CORES(0)) dut (
     .jtag_tck_i (jtag_tck_i),
     .jtag_tdi_i (jtag_tdi_i),
     .jtag_tdo_o (jtag_tdo_o),
     .jtag_tms_i (jtag_tms_i),
     .jtag_trst_i(jtag_trst_i),
     .ref_clk_i(sys_clk_if.clk    ),
     .rstn_i   (sys_reset_if.reset_n),
     .bootsel_i(bootsel_i),
     .stm_i    (stm_i    ),
     .io_in_i  (io_in_i  ),
     .io_out_o (io_out_o ),
     .pad_cfg_o(pad_cfg_o),
     .io_oe_o  (io_oe_o  )
   );

   // Instruction OBI Interface
   assign dut.i_soc_domain.fc_subsystem_i.core_instr_addr = obi_instr_if.addr;
   assign dut.i_soc_domain.fc_subsystem_i.core_instr_req  = obi_instr_if.req ;
   assign obi_instr_if.rdata  = dut.i_soc_domain.fc_subsystem_i.core_instr_rdata ;
   assign obi_instr_if.gnt    = dut.i_soc_domain.fc_subsystem_i.core_instr_gnt   ;
   assign obi_instr_if.rvalid = dut.i_soc_domain.fc_subsystem_i.core_instr_rvalid;

   // Data OBI Interface
   assign dut.i_soc_domain.fc_subsystem_i.core_data_addr  = obi_data_if.addr ;
   assign dut.i_soc_domain.fc_subsystem_i.core_data_req   = obi_data_if.req  ;
   assign dut.i_soc_domain.fc_subsystem_i.core_data_be    = obi_data_if.be   ;
   assign dut.i_soc_domain.fc_subsystem_i.core_data_we    = obi_data_if.we   ;
   assign dut.i_soc_domain.fc_subsystem_i.core_data_wdata = obi_data_if.wdata;
   assign obi_data_if.rdata  = dut.i_soc_domain.fc_subsystem_i.core_data_rdata  ;
   assign obi_data_if.gnt    = dut.i_soc_domain.fc_subsystem_i.core_data_gnt    ;
   assign obi_data_if.rvalid = dut.i_soc_domain.fc_subsystem_i.core_data_rvalid ;

endmodule : uvmt_cvmcu_dut_wrap


`endif // __UVMT_CVMCU_DUT_WRAP_SV__
