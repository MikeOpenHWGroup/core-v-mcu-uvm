// Copyright 2022-2023 Datum Technology Corporation
// All rights reserved.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


`ifndef __UVME_CVMCU_REG_IGNORE_LISTS_SV__
`define __UVME_CVMCU_REG_IGNORE_LISTS_SV__


string  uvme_cvmcu_all_reg_mem_ignore_list[$] = '{
   // TODO Add registers and/or register blocks to ignore list for all automated reg tests
   //      Ex: "reg_name"     , // One register at a time
   //      Ex: "reg_name.abc*", // One register field at a time
};

string  uvme_cvmcu_reg_hw_reset_ignore_list[$] = '{
   // TODO Add registers and/or register blocks to ignore list for uvm_reg_hw_reset_seq
   //      Ex: "reg_name"     , // One register at a time
   //      Ex: "reg_name.abc*", // One register field at a time
};

string  uvme_cvmcu_reg_bit_bash_ignore_list[$] = '{
   "apb_timer.cfg_reg_hi",
   "apb_timer.cfg_reg_low",

//   "gpio.intack",
   "gpio.rdstat"//,
/*
   "uart0.tx_cfg",   // Volatile: RW behavior is dependent on state of PENDING (bit 5)
   "uart0.tx_size",  // Volatile: size of receive buffer on write; bytes left on read
   "uart0.tx_saddr", // Volatile: address of Tx buffer on write; current address on read
   "uart0.rx_cfg",   // Volatile: see tx
   "uart0.rx_size",  // Volatile: see tx
   "uart0.rx_saddr", // Volatile: see tx

   "uart1.tx_cfg",
   "uart1.tx_size",
   "uart1.tx_saddr",
   "uart1.rx_cfg",
   "uart1.rx_size",
   "uart1.rx_saddr"
*/
};

string  uvme_cvmcu_reg_access_ignore_list[$] = '{
   // TODO Add registers and/or register blocks to ignore list for uvm_reg_access_seq
   //      Ex: "reg_name"     , // One register at a time
   //      Ex: "reg_name.abc*", // One register field at a time
};

string  uvme_cvmcu_mem_access_ignore_list[$] = '{
   // TODO Add registers and/or register blocks to ignore list for uvm_mem_access_seq
   //      Ex: "reg_name"     , // One register at a time
   //      Ex: "reg_name.abc*", // One register field at a time
};

string  uvme_cvmcu_shared_access_ignore_list[$] = '{
   // TODO Add registers and/or register blocks to ignore list for uvm_reg_mem_shared_access_seq
   //      Ex: "reg_name"     , // One register at a time
   //      Ex: "reg_name.abc*", // One register field at a time
};

string  uvme_cvmcu_mem_walk_access_ignore_list[$] = '{
   // TODO Add registers and/or register blocks to ignore list for uvm_mem_walk_seq
   //      Ex: "reg_name"     , // One register at a time
   //      Ex: "reg_name.abc*", // One register field at a time
};


`endif // __UVME_CVMCU_REG_IGNORE_LISTS_SV__
