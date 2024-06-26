// Copyright 2024 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// THE FOLLOWING IS GENERATED CODE: ANY CHANGES MADE WILL BE ERASED UPON THE NEXT ITERATION


`ifndef __UVME_APB_ADV_TIMER_SS_REG_BLOCK_SV__
`define __UVME_APB_ADV_TIMER_SS_REG_BLOCK_SV__


`include "uvme_apb_adv_timer_ss_t0_cmd_reg.sv"
`include "uvme_apb_adv_timer_ss_t0_config_reg.sv"
`include "uvme_apb_adv_timer_ss_t0_threshold_reg.sv"
`include "uvme_apb_adv_timer_ss_t0_th_channel0_reg.sv"
`include "uvme_apb_adv_timer_ss_t0_th_channel1_reg.sv"
`include "uvme_apb_adv_timer_ss_t0_th_channel2_reg.sv"
`include "uvme_apb_adv_timer_ss_t0_th_channel3_reg.sv"
`include "uvme_apb_adv_timer_ss_t0_counter_reg.sv"
`include "uvme_apb_adv_timer_ss_t1_cmd_reg.sv"
`include "uvme_apb_adv_timer_ss_t1_config_reg.sv"
`include "uvme_apb_adv_timer_ss_t1_threshold_reg.sv"
`include "uvme_apb_adv_timer_ss_t1_th_channel0_reg.sv"
`include "uvme_apb_adv_timer_ss_t1_th_channel1_reg.sv"
`include "uvme_apb_adv_timer_ss_t1_th_channel2_reg.sv"
`include "uvme_apb_adv_timer_ss_t1_th_channel3_reg.sv"
`include "uvme_apb_adv_timer_ss_t1_counter_reg.sv"
`include "uvme_apb_adv_timer_ss_t2_cmd_reg.sv"
`include "uvme_apb_adv_timer_ss_t2_config_reg.sv"
`include "uvme_apb_adv_timer_ss_t2_threshold_reg.sv"
`include "uvme_apb_adv_timer_ss_t2_th_channel0_reg.sv"
`include "uvme_apb_adv_timer_ss_t2_th_channel1_reg.sv"
`include "uvme_apb_adv_timer_ss_t2_th_channel2_reg.sv"
`include "uvme_apb_adv_timer_ss_t2_th_channel3_reg.sv"
`include "uvme_apb_adv_timer_ss_t2_counter_reg.sv"
`include "uvme_apb_adv_timer_ss_t3_cmd_reg.sv"
`include "uvme_apb_adv_timer_ss_t3_config_reg.sv"
`include "uvme_apb_adv_timer_ss_t3_threshold_reg.sv"
`include "uvme_apb_adv_timer_ss_t3_th_channel0_reg.sv"
`include "uvme_apb_adv_timer_ss_t3_th_channel1_reg.sv"
`include "uvme_apb_adv_timer_ss_t3_th_channel2_reg.sv"
`include "uvme_apb_adv_timer_ss_t3_th_channel3_reg.sv"
`include "uvme_apb_adv_timer_ss_t3_counter_reg.sv"
`include "uvme_apb_adv_timer_ss_event_cfg_reg.sv"
`include "uvme_apb_adv_timer_ss_cg_reg.sv"


/**
 * Top-Level Register Block for uvme_apb_adv_timer_ss.
 * @ingroup uvme_apb_adv_timer_ss_reg
 */
class uvme_apb_adv_timer_ss_reg_block_c extends uvmx_reg_block_c;

   /// @name Registers
   /// @{
   rand uvme_apb_adv_timer_ss_t0_cmd_reg_c  t0_cmd; ///< ADV_TIMER0 start command bitfield.
   rand uvme_apb_adv_timer_ss_t0_config_reg_c  t0_config; ///< ADV_TIMER0 input source configuration bitfield:
   rand uvme_apb_adv_timer_ss_t0_threshold_reg_c  t0_threshold; ///< ADV_TIMER0 threshold low part configuration bitfield. It defines start counter value.
   rand uvme_apb_adv_timer_ss_t0_th_channel0_reg_c  t0_th_channel0; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t0_th_channel1_reg_c  t0_th_channel1; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t0_th_channel2_reg_c  t0_th_channel2; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t0_th_channel3_reg_c  t0_th_channel3; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t0_counter_reg_c  t0_counter; ///< ADV_TIMER0 counter value.
   rand uvme_apb_adv_timer_ss_t1_cmd_reg_c  t1_cmd; ///< ADV_TIMER0 start command bitfield.
   rand uvme_apb_adv_timer_ss_t1_config_reg_c  t1_config; ///< ADV_TIMER0 input source configuration bitfield:
   rand uvme_apb_adv_timer_ss_t1_threshold_reg_c  t1_threshold; ///< ADV_TIMER0 threshold low part configuration bitfield. It defines start counter value.
   rand uvme_apb_adv_timer_ss_t1_th_channel0_reg_c  t1_th_channel0; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t1_th_channel1_reg_c  t1_th_channel1; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t1_th_channel2_reg_c  t1_th_channel2; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t1_th_channel3_reg_c  t1_th_channel3; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t1_counter_reg_c  t1_counter; ///< ADV_TIMER0 counter value.
   rand uvme_apb_adv_timer_ss_t2_cmd_reg_c  t2_cmd; ///< ADV_TIMER0 start command bitfield.
   rand uvme_apb_adv_timer_ss_t2_config_reg_c  t2_config; ///< ADV_TIMER0 input source configuration bitfield:
   rand uvme_apb_adv_timer_ss_t2_threshold_reg_c  t2_threshold; ///< ADV_TIMER0 threshold low part configuration bitfield. It defines start counter value.
   rand uvme_apb_adv_timer_ss_t2_th_channel0_reg_c  t2_th_channel0; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t2_th_channel1_reg_c  t2_th_channel1; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t2_th_channel2_reg_c  t2_th_channel2; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t2_th_channel3_reg_c  t2_th_channel3; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t2_counter_reg_c  t2_counter; ///< ADV_TIMER0 counter value.
   rand uvme_apb_adv_timer_ss_t3_cmd_reg_c  t3_cmd; ///< ADV_TIMER0 start command bitfield.
   rand uvme_apb_adv_timer_ss_t3_config_reg_c  t3_config; ///< ADV_TIMER0 input source configuration bitfield:
   rand uvme_apb_adv_timer_ss_t3_threshold_reg_c  t3_threshold; ///< ADV_TIMER0 threshold low part configuration bitfield. It defines start counter value.
   rand uvme_apb_adv_timer_ss_t3_th_channel0_reg_c  t3_th_channel0; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t3_th_channel1_reg_c  t3_th_channel1; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t3_th_channel2_reg_c  t3_th_channel2; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t3_th_channel3_reg_c  t3_th_channel3; ///< ADV_TIMER0 channel 0 threshold configuration bitfield.
   rand uvme_apb_adv_timer_ss_t3_counter_reg_c  t3_counter; ///< ADV_TIMER0 counter value.
   rand uvme_apb_adv_timer_ss_event_cfg_reg_c  event_cfg; ///< ADV_TIMER output event 0 source configuration bitfiled:
   rand uvme_apb_adv_timer_ss_cg_reg_c  cg; ///< ADV_TIMER clock gating configuration bitfield.
   /// @}


   `uvm_object_utils_begin(uvme_apb_adv_timer_ss_reg_block_c)
      `uvm_field_object(t0_cmd, UVM_DEFAULT)
      `uvm_field_object(t0_config, UVM_DEFAULT)
      `uvm_field_object(t0_threshold, UVM_DEFAULT)
      `uvm_field_object(t0_th_channel0, UVM_DEFAULT)
      `uvm_field_object(t0_th_channel1, UVM_DEFAULT)
      `uvm_field_object(t0_th_channel2, UVM_DEFAULT)
      `uvm_field_object(t0_th_channel3, UVM_DEFAULT)
      `uvm_field_object(t0_counter, UVM_DEFAULT)
      `uvm_field_object(t1_cmd, UVM_DEFAULT)
      `uvm_field_object(t1_config, UVM_DEFAULT)
      `uvm_field_object(t1_threshold, UVM_DEFAULT)
      `uvm_field_object(t1_th_channel0, UVM_DEFAULT)
      `uvm_field_object(t1_th_channel1, UVM_DEFAULT)
      `uvm_field_object(t1_th_channel2, UVM_DEFAULT)
      `uvm_field_object(t1_th_channel3, UVM_DEFAULT)
      `uvm_field_object(t1_counter, UVM_DEFAULT)
      `uvm_field_object(t2_cmd, UVM_DEFAULT)
      `uvm_field_object(t2_config, UVM_DEFAULT)
      `uvm_field_object(t2_threshold, UVM_DEFAULT)
      `uvm_field_object(t2_th_channel0, UVM_DEFAULT)
      `uvm_field_object(t2_th_channel1, UVM_DEFAULT)
      `uvm_field_object(t2_th_channel2, UVM_DEFAULT)
      `uvm_field_object(t2_th_channel3, UVM_DEFAULT)
      `uvm_field_object(t2_counter, UVM_DEFAULT)
      `uvm_field_object(t3_cmd, UVM_DEFAULT)
      `uvm_field_object(t3_config, UVM_DEFAULT)
      `uvm_field_object(t3_threshold, UVM_DEFAULT)
      `uvm_field_object(t3_th_channel0, UVM_DEFAULT)
      `uvm_field_object(t3_th_channel1, UVM_DEFAULT)
      `uvm_field_object(t3_th_channel2, UVM_DEFAULT)
      `uvm_field_object(t3_th_channel3, UVM_DEFAULT)
      `uvm_field_object(t3_counter, UVM_DEFAULT)
      `uvm_field_object(event_cfg, UVM_DEFAULT)
      `uvm_field_object(cg, UVM_DEFAULT)
   `uvm_object_utils_end


   /**
    * Default constructor.
    */
   function new(string name="uvme_apb_adv_timer_ss_reg_block", int has_coverage=UVM_NO_COVERAGE);
      super.new(name, has_coverage);
   endfunction

   /**
    * Creates register(s).
    */
   virtual function void create_regs();
      t0_cmd = uvme_apb_adv_timer_ss_t0_cmd_reg_c::type_id::create("t0_cmd");
      t0_cmd.configure(this);
      t0_cmd.build();
      t0_config = uvme_apb_adv_timer_ss_t0_config_reg_c::type_id::create("t0_config");
      t0_config.configure(this);
      t0_config.build();
      t0_threshold = uvme_apb_adv_timer_ss_t0_threshold_reg_c::type_id::create("t0_threshold");
      t0_threshold.configure(this);
      t0_threshold.build();
      t0_th_channel0 = uvme_apb_adv_timer_ss_t0_th_channel0_reg_c::type_id::create("t0_th_channel0");
      t0_th_channel0.configure(this);
      t0_th_channel0.build();
      t0_th_channel1 = uvme_apb_adv_timer_ss_t0_th_channel1_reg_c::type_id::create("t0_th_channel1");
      t0_th_channel1.configure(this);
      t0_th_channel1.build();
      t0_th_channel2 = uvme_apb_adv_timer_ss_t0_th_channel2_reg_c::type_id::create("t0_th_channel2");
      t0_th_channel2.configure(this);
      t0_th_channel2.build();
      t0_th_channel3 = uvme_apb_adv_timer_ss_t0_th_channel3_reg_c::type_id::create("t0_th_channel3");
      t0_th_channel3.configure(this);
      t0_th_channel3.build();
      t0_counter = uvme_apb_adv_timer_ss_t0_counter_reg_c::type_id::create("t0_counter");
      t0_counter.configure(this);
      t0_counter.build();
      t1_cmd = uvme_apb_adv_timer_ss_t1_cmd_reg_c::type_id::create("t1_cmd");
      t1_cmd.configure(this);
      t1_cmd.build();
      t1_config = uvme_apb_adv_timer_ss_t1_config_reg_c::type_id::create("t1_config");
      t1_config.configure(this);
      t1_config.build();
      t1_threshold = uvme_apb_adv_timer_ss_t1_threshold_reg_c::type_id::create("t1_threshold");
      t1_threshold.configure(this);
      t1_threshold.build();
      t1_th_channel0 = uvme_apb_adv_timer_ss_t1_th_channel0_reg_c::type_id::create("t1_th_channel0");
      t1_th_channel0.configure(this);
      t1_th_channel0.build();
      t1_th_channel1 = uvme_apb_adv_timer_ss_t1_th_channel1_reg_c::type_id::create("t1_th_channel1");
      t1_th_channel1.configure(this);
      t1_th_channel1.build();
      t1_th_channel2 = uvme_apb_adv_timer_ss_t1_th_channel2_reg_c::type_id::create("t1_th_channel2");
      t1_th_channel2.configure(this);
      t1_th_channel2.build();
      t1_th_channel3 = uvme_apb_adv_timer_ss_t1_th_channel3_reg_c::type_id::create("t1_th_channel3");
      t1_th_channel3.configure(this);
      t1_th_channel3.build();
      t1_counter = uvme_apb_adv_timer_ss_t1_counter_reg_c::type_id::create("t1_counter");
      t1_counter.configure(this);
      t1_counter.build();
      t2_cmd = uvme_apb_adv_timer_ss_t2_cmd_reg_c::type_id::create("t2_cmd");
      t2_cmd.configure(this);
      t2_cmd.build();
      t2_config = uvme_apb_adv_timer_ss_t2_config_reg_c::type_id::create("t2_config");
      t2_config.configure(this);
      t2_config.build();
      t2_threshold = uvme_apb_adv_timer_ss_t2_threshold_reg_c::type_id::create("t2_threshold");
      t2_threshold.configure(this);
      t2_threshold.build();
      t2_th_channel0 = uvme_apb_adv_timer_ss_t2_th_channel0_reg_c::type_id::create("t2_th_channel0");
      t2_th_channel0.configure(this);
      t2_th_channel0.build();
      t2_th_channel1 = uvme_apb_adv_timer_ss_t2_th_channel1_reg_c::type_id::create("t2_th_channel1");
      t2_th_channel1.configure(this);
      t2_th_channel1.build();
      t2_th_channel2 = uvme_apb_adv_timer_ss_t2_th_channel2_reg_c::type_id::create("t2_th_channel2");
      t2_th_channel2.configure(this);
      t2_th_channel2.build();
      t2_th_channel3 = uvme_apb_adv_timer_ss_t2_th_channel3_reg_c::type_id::create("t2_th_channel3");
      t2_th_channel3.configure(this);
      t2_th_channel3.build();
      t2_counter = uvme_apb_adv_timer_ss_t2_counter_reg_c::type_id::create("t2_counter");
      t2_counter.configure(this);
      t2_counter.build();
      t3_cmd = uvme_apb_adv_timer_ss_t3_cmd_reg_c::type_id::create("t3_cmd");
      t3_cmd.configure(this);
      t3_cmd.build();
      t3_config = uvme_apb_adv_timer_ss_t3_config_reg_c::type_id::create("t3_config");
      t3_config.configure(this);
      t3_config.build();
      t3_threshold = uvme_apb_adv_timer_ss_t3_threshold_reg_c::type_id::create("t3_threshold");
      t3_threshold.configure(this);
      t3_threshold.build();
      t3_th_channel0 = uvme_apb_adv_timer_ss_t3_th_channel0_reg_c::type_id::create("t3_th_channel0");
      t3_th_channel0.configure(this);
      t3_th_channel0.build();
      t3_th_channel1 = uvme_apb_adv_timer_ss_t3_th_channel1_reg_c::type_id::create("t3_th_channel1");
      t3_th_channel1.configure(this);
      t3_th_channel1.build();
      t3_th_channel2 = uvme_apb_adv_timer_ss_t3_th_channel2_reg_c::type_id::create("t3_th_channel2");
      t3_th_channel2.configure(this);
      t3_th_channel2.build();
      t3_th_channel3 = uvme_apb_adv_timer_ss_t3_th_channel3_reg_c::type_id::create("t3_th_channel3");
      t3_th_channel3.configure(this);
      t3_th_channel3.build();
      t3_counter = uvme_apb_adv_timer_ss_t3_counter_reg_c::type_id::create("t3_counter");
      t3_counter.configure(this);
      t3_counter.build();
      event_cfg = uvme_apb_adv_timer_ss_event_cfg_reg_c::type_id::create("event_cfg");
      event_cfg.configure(this);
      event_cfg.build();
      cg = uvme_apb_adv_timer_ss_cg_reg_c::type_id::create("cg");
      cg.configure(this);
      cg.build();
   endfunction

   /**
    * Creates address maps.
    */
   virtual function void create_maps();
      // Create default register map (default_map)
      default_map = create_map(
         .name     ("default_map"),
         .base_addr(`UVM_REG_ADDR_WIDTH'h0),
         .n_bytes  (4),
         .endian   (UVM_LITTLE_ENDIAN)
      );
   endfunction

   /**
    * Adds registers to address maps.
    */
   virtual function void add_regs_to_map();
      default_map.add_reg(
         .rg    (t0_cmd),
         .offset(`UVM_REG_ADDR_WIDTH'h0),
         .rights("WO")
      );
      default_map.add_reg(
         .rg    (t0_config),
         .offset(`UVM_REG_ADDR_WIDTH'h4),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t0_threshold),
         .offset(`UVM_REG_ADDR_WIDTH'h8),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t0_th_channel0),
         .offset(`UVM_REG_ADDR_WIDTH'hc),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t0_th_channel1),
         .offset(`UVM_REG_ADDR_WIDTH'h10),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t0_th_channel2),
         .offset(`UVM_REG_ADDR_WIDTH'h14),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t0_th_channel3),
         .offset(`UVM_REG_ADDR_WIDTH'h18),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t0_counter),
         .offset(`UVM_REG_ADDR_WIDTH'h2c),
         .rights("WO")
      );
      default_map.add_reg(
         .rg    (t1_cmd),
         .offset(`UVM_REG_ADDR_WIDTH'h40),
         .rights("WO")
      );
      default_map.add_reg(
         .rg    (t1_config),
         .offset(`UVM_REG_ADDR_WIDTH'h44),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t1_threshold),
         .offset(`UVM_REG_ADDR_WIDTH'h48),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t1_th_channel0),
         .offset(`UVM_REG_ADDR_WIDTH'h4c),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t1_th_channel1),
         .offset(`UVM_REG_ADDR_WIDTH'h50),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t1_th_channel2),
         .offset(`UVM_REG_ADDR_WIDTH'h54),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t1_th_channel3),
         .offset(`UVM_REG_ADDR_WIDTH'h58),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t1_counter),
         .offset(`UVM_REG_ADDR_WIDTH'h6c),
         .rights("WO")
      );
      default_map.add_reg(
         .rg    (t2_cmd),
         .offset(`UVM_REG_ADDR_WIDTH'h80),
         .rights("WO")
      );
      default_map.add_reg(
         .rg    (t2_config),
         .offset(`UVM_REG_ADDR_WIDTH'h84),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t2_threshold),
         .offset(`UVM_REG_ADDR_WIDTH'h88),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t2_th_channel0),
         .offset(`UVM_REG_ADDR_WIDTH'h8c),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t2_th_channel1),
         .offset(`UVM_REG_ADDR_WIDTH'h90),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t2_th_channel2),
         .offset(`UVM_REG_ADDR_WIDTH'h94),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t2_th_channel3),
         .offset(`UVM_REG_ADDR_WIDTH'h98),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t2_counter),
         .offset(`UVM_REG_ADDR_WIDTH'hac),
         .rights("WO")
      );
      default_map.add_reg(
         .rg    (t3_cmd),
         .offset(`UVM_REG_ADDR_WIDTH'hc0),
         .rights("WO")
      );
      default_map.add_reg(
         .rg    (t3_config),
         .offset(`UVM_REG_ADDR_WIDTH'hc4),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t3_threshold),
         .offset(`UVM_REG_ADDR_WIDTH'hc8),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t3_th_channel0),
         .offset(`UVM_REG_ADDR_WIDTH'hcc),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t3_th_channel1),
         .offset(`UVM_REG_ADDR_WIDTH'hd0),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t3_th_channel2),
         .offset(`UVM_REG_ADDR_WIDTH'hd4),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t3_th_channel3),
         .offset(`UVM_REG_ADDR_WIDTH'hd8),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (t3_counter),
         .offset(`UVM_REG_ADDR_WIDTH'hec),
         .rights("WO")
      );
      default_map.add_reg(
         .rg    (event_cfg),
         .offset(`UVM_REG_ADDR_WIDTH'h100),
         .rights("RW")
      );
      default_map.add_reg(
         .rg    (cg),
         .offset(`UVM_REG_ADDR_WIDTH'h104),
         .rights("RW")
      );
   endfunction

endclass


`endif // __UVME_APB_ADV_TIMER_SS_REG_BLOCK_SV__
