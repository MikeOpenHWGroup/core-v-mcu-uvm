// 
// Copyright 2021 Low Power Futures Inc.
// 


// WARNING: THE FOLLOWING IS AUTO-GENERATED CODE.
// ANY CHANGES MADE HERE WILL BE ERASED UPON THE NEXT RELEASE OF THIS RAL.


`ifndef __UVME_APB_ADV_TIMER_T2_CONFIG_REG_SV__
`define __UVME_APB_ADV_TIMER_T2_CONFIG_REG_SV__


class uvme_apb_adv_timer_t2_config_reg_c extends uvml_ral_reg_c;
   
   rand uvml_ral_reg_field_c  insel; ///< ADV_TIMER0 input source configuration bitfield:
   rand uvml_ral_reg_field_c  mode; ///< ADV_TIMER0 trigger mode configuration bitfield:
   rand uvml_ral_reg_field_c  clksel; ///< ADV_TIMER0 clock source configuration bitfield:
   rand uvml_ral_reg_field_c  updownsel; ///< ADV_TIMER0 center-aligned mode configuration bitfield:
   rand uvml_ral_reg_field_c  presc; ///< ADV_TIMER0 prescaler value configuration bitfield.
   
   
   `uvm_object_utils_begin(uvme_apb_adv_timer_t2_config_reg_c)
      `uvm_field_object(insel, UVM_DEFAULT)
      `uvm_field_object(mode, UVM_DEFAULT)
      `uvm_field_object(clksel, UVM_DEFAULT)
      `uvm_field_object(updownsel, UVM_DEFAULT)
      `uvm_field_object(presc, UVM_DEFAULT)
   `uvm_object_utils_end
   
   
   /**
    * Default constructor.
    */
   extern function new(string name="uvme_apb_adv_timer_t2_config_reg", int unsigned n_bits=32, int has_coverage=UVM_NO_COVERAGE);
   
   /**
    * Creates and configures register fields.
    */
   extern virtual function void build();
   
endclass : uvme_apb_adv_timer_t2_config_reg_c


function uvme_apb_adv_timer_t2_config_reg_c::new(string name="uvme_apb_adv_timer_t2_config_reg", int unsigned n_bits=32, int has_coverage=UVM_NO_COVERAGE);
   
   super.new(name, n_bits, has_coverage);
   
endfunction : new


function void uvme_apb_adv_timer_t2_config_reg_c::build();
   
   insel = uvml_ral_reg_field_c::type_id::create("insel");
   insel.configure(
      .parent                 (this),
      .size                   (   8),
      .lsb_pos                (   0),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   0)
   );
   mode = uvml_ral_reg_field_c::type_id::create("mode");
   mode.configure(
      .parent                 (this),
      .size                   (   3),
      .lsb_pos                (   8),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   0)
   );
   clksel = uvml_ral_reg_field_c::type_id::create("clksel");
   clksel.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (   11),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   0)
   );
   updownsel = uvml_ral_reg_field_c::type_id::create("updownsel");
   updownsel.configure(
      .parent                 (this),
      .size                   (   1),
      .lsb_pos                (   12),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   1),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   0)
   );
   presc = uvml_ral_reg_field_c::type_id::create("presc");
   presc.configure(
      .parent                 (this),
      .size                   (   8),
      .lsb_pos                (   16),
      .access                 ("RW"),
      .volatile               (   0),
      .reset                  (   0),
      .has_reset              (   1),
      .is_rand                (   1),
      .individually_accessible(   0)
   );
   
endfunction: build


`endif // __UVME_APB_ADV_TIMER_T2_CONFIG_REG_SV__
