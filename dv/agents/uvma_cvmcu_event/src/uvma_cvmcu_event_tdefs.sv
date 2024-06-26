// Copyright 2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVMA_CVMCU_EVENT_TDEFS_SV__
`define __UVMA_CVMCU_EVENT_TDEFS_SV__


/**
 * Driving modes for uvma_cvmcu_event_agent_c when active.
 */
typedef enum {
   UVMA_CVMCU_EVENT_DRV_MODE_CORE, ///< Drives CORE
   UVMA_CVMCU_EVENT_DRV_MODE_SYS  ///< Drives SYS
} uvma_cvmcu_event_mode_enum;

/**
 * Traffic directions.
 */
typedef enum {
   UVMA_CVMCU_EVENT_DIRECTION_C2S, ///< From CORE to SYS
   UVMA_CVMCU_EVENT_DIRECTION_S2C  ///< From SYS to CORE
} uvma_cvmcu_event_direction_enum;

/// @name Logic vectors
/// @{
typedef logic [1:0]  uvma_cvmcu_event_fc_events_o_l_t; ///< Full chip event logic vector
typedef logic [7:0]  uvma_cvmcu_event_cl_event_data_o_l_t; ///< Chip-level event data logic vector
typedef logic [7:0]  uvma_cvmcu_event_pr_event_data_o_l_t; ///< Peripherals event data logic vector
typedef logic [16:0]  uvma_cvmcu_event_per_events_i_l_t; ///< Peripherals event logic vector
/// @}

/// @name Bit vectors
/// @{
typedef bit [1:0]  uvma_cvmcu_event_fc_events_o_b_t; ///< Full chip event bit vector
typedef bit [7:0]  uvma_cvmcu_event_cl_event_data_o_b_t; ///< Chip-level event data bit vector
typedef bit [7:0]  uvma_cvmcu_event_pr_event_data_o_b_t; ///< Peripherals event data bit vector
typedef bit [16:0]  uvma_cvmcu_event_per_events_i_b_t; ///< Peripherals event bit vector
/// @}


`endif // __UVMA_CVMCU_EVENT_TDEFS_SV__