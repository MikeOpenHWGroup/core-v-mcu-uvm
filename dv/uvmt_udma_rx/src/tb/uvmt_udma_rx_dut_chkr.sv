// Copyright 2022 Datum Technology Corporation
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMT_UDMA_RX_DUT_CHKR_SV__
`define __UVMT_UDMA_RX_DUT_CHKR_SV__


/**
 * Module encapsulating assertions for uDMA Rx Channels Block DUT wrapper.  All ports are SV interfaces.
 * This module must be bound to the design in a test bench.
 * @ingroup uvmt_udma_rx_tb
 */
module uvmt_udma_rx_dut_chkr (
   uvma_udma_rx_cp_if      cp_if    , ///< Control plane interface
   uvma_udma_rx_dp_in_if   dp_in_if , ///< Data plane input interface
   uvma_udma_rx_dp_out_if  dp_out_if, ///< Data plane output interface
   uvmt_udma_rx_probe_if   probe_if   ///< Misc. signals
);

   // TODO Add assertions to uvmt_udma_rx_dut_chkr

endmodule : uvmt_udma_rx_dut_chkr


`endif // __UVMT_UDMA_RX_DUT_CHKR_SV__