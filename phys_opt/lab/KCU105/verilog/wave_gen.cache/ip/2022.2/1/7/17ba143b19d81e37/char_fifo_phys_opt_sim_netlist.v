// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov 25 23:55:01 2022
// Host        : amd running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_fifo_phys_opt_sim_netlist.v
// Design      : char_fifo_phys_opt
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo_phys_opt,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (srst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input srst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "2kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2047" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2046" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uS/dIpDTldS7400uyLsI6bJxO+WmZJrKXsU8qB+wpyI+d4PWZVO6Cm0qMQFNUZb63p6zCI5fvnQy
SxjaSP1nCte/oQZc55w1rQbTqy54T9kryRoH26nDjSBVZvJ8hffw7NONwiKrqeB6I7HJKX5RKw73
wIJxNNH7BCiCEtRLIxc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L7q2sHnC0pU7uHs8shPm9nAcqyU+hUFnNkd6BPHl+ureEVBUvubWhEbLRLiFFJveufcmAfAXTzae
tWbKcVVt/zKzWEtv0onUXoSEgyS4+QaTAFeCPHR2bbnlP0aCCG2SYmC1dv16cFoAk/NLitClNXAv
h+UBGzod+suWv55DaNHeHtSZ/YLZxHdn/R47atTiQM+A1TWQkpa3faF/L9ANZISSe/OR6mPfQ/Zk
4AptHNmW/pWpd3JL4e06iK9P6ZLLRqSMR9mu6AFIeWYBVz+KkxgSIWgQO7/AHBUFjlIiMFhyQR5Y
UC1fo4CPZX7fMdUPwQiC+eZ7UtxMAUzovIzwEw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KZhqqPnSEvcItoYRHrFT/Wt2IEXHe7pq5lmAOfYqAaaoY8mpIG3Kd8B/C4s9kNUbktSOX78NnnrJ
brxcu/1EAlI9itnDH8ahxble+2Nt/Lj3dQ1/wbDy3HOKlwBVuOvVDArOpgho+BAnoLUZXrpsw8EI
FSIPKmsETVzLzZDw6m0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WZbb0PsQl1vn7dY/rZzI8ZGsAP5Ad4C/d2cBXS49yTbQqKMTY7r1YHlrjBGteY6wrhKVmM92u/3/
/UJWPyNVqwcsrRAHhR/Lp3Mg87NIhYzETdNAOpnc7rWC9ieIeEiyPM734sI7QtAMVrZxXoUXnCjp
fjQhaMqv+HsuEWpFhDail+v8Ftwmr5xP1JSpqPfxLz5a6+q8/lTxRGeWZokM7vP2YFKg7L7Yoowh
gOm5w3JhR2fXZsksWxfQk7885JzsI4yZOrU8dY667YWWhkjZE/SKo2TMksiasL22T6CpyUbMwQm2
DJ+cMJbr9/8csBEifIsopc4V9zFbSU9eoxlqZA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Adid/GOKDljgmM7UpkmD6EVL+5rt6bnWK9P8RIZiI3EkLW96rM6eCs7jkLeKnEW/WPGRhlZrGw8p
C7Ni27oibJKJT5xUBJDymbO+yheaaTI0GaeDMIzks860gYA3qdvTPxTBotaOg6MIpnYd070NhTod
Qq5XNnxLuF7/s5rAZANJHyRQKwu4gVBfs5SU2FSjF546M5FvN7BX6G7B76ALW6vKqGyKxwoHkc52
Bm8/jGTxJ6zbwn2v31NEfjO6nM5m6yYwY0476QLXWI6+7/ILkSvDVTt7B9HpcaRg3n3T4AEQDMyX
8bBPgm0qFbWZue0dlr9ljYOl0dgwaO8G9uYe9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tq2b3cw7fnIOEbRUxnQIgAjXwRE3aRwj2IBVmS0S998fvCLPMUtm5MVXAqk0TwuEzKG3br/oRham
Oe5KAx6FauTTVpRhLH5RY3832M9OVTSW/bNq12/dXnJyOfYS76FQtd9HNFrSkVPMONGMD0ZQXRic
Yr0MaeflUHQmU6QUCt5OJkbG4F8qJLMWJsg03K7dNzDfkvev3QVf72bmHTm4SF6/cs94NXQl/NPr
CzQorTZ5BgCzVAui7mM0eu3mu6OPkecNQ3Ih+1zsJuGkAHWC7aFgh7ii6xEj1upD365TzJUF1ZCe
0jZj/Ub1m5OgZMbjbLYn/Fh5nqi+fAmL7jDAHQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S+EkimFGNL3D/SKyjUVYhIZzRbEoTqlnv2kHD0e4rYYCt/O4IYecNmch6HRfd2U/WSZPkAoJ+xa7
GKQSo51PL81HSvqURo2CxltObyTYiklnzGtbdWUMpOSCjDe8LpQjUNwhSksWjZjUQypyYXS4hbCR
VJy96ow8zi5m1XMzoLaVMDYoJYLtOVh7eaL7InaIL5gXJIHWkhoKYh9bR/O5HE6YTsgZl+Ofmx/3
0mQ/bL5ZKSY6gBEUD8f5+SoMIjfXrGkjMj1+fEAIv0fO/wKyJQMKnDOgWMvcUw56dOJ7FWkbNvbC
kzquuXhk5LuzZfXWmhyDSyMGBWK1wN7iyMKMUg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
LQ4hjhkD/G9XJd+gVR5WF2vSll/p8/psR+nHjJ5/DHrtiRqVWFVc7B7T9XZuJBmTqrQV4iSBYWDo
zNaVdq26mGk6TTNo11Dcici0hEwC2Bg66k9kr1if+0iZo3VtB/ZuEOj2w7euhFo3ja1OovnDXxf0
8t4WMUK68mfUiMuKgVcbOFhm3Jdnbnz4u7SggH2/rkfOS8jbon9q9n0EXlK23tz2NzDLCS8B7ERx
dYvwqwBiySKoP1/EcfSwFNIWpr6p7kbRo7iM/JbP6UwBbkDHgE8HGS+3lTXIUXsmGmsx6EDSr/gY
i7lHwZTmDuhuIEJaf6gTJgtqMSxVyDVsrnba5umKgV8z5OOWUkM3FjVWIXOG7Ef2iKFCzBPmp2Lk
8XbrXk/bb9H/jr4UR3hgdbizISTysLTJd4n5uyeDhDgkxAc+1FudacmuZyBlA/VTR1f0i9+cOgLI
kdqbo1u5hQwnMphluBKjdTA3nZ8VnpDbdq5R7hIF61tIrUfdjwQw02je

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JzhYMwmYowESMI19XNb+BEFcZw3IXZpwZO3gzrVg2CdSjbAR3tiIVbPHI5Rgu59SH7H8abU59Atd
+nrPiG37rmU6CD+cMV2mU8SHfCDLYsnrbd9YLZ1GEfqTovR0NZHQTHj+7c5dP7nqm30C/kg1adqd
DOV7F128PbmM5U45xRxOJKUgS/Waz0gvmYKKJejkiyFPOgGbN5f844mtysoOckLrAU/BzRs8SB9G
zzisK/a8hM5af8/opZ64TGhH44Npzy8kcP+gI+k+U0oF0SOqW7CjadKaJhr2oDkTScVVCbBqFEjc
2gH862vcCfZu5Cd0Sp2ALgoqVxA+91lAIHJp3Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ooNS+XjsaWLRgvcrNWVpR3ihKtIJNT1oT4D5ivD5mCfw+4/SAyx9P4cmdvOotLNPE1eqvx1Smd9Q
LDImL/GqS7Cq3KEUtEBbvQAOp+0SjiW74cC6nyOqCA8NQcn5JM+vUzGSsORPnM5qP96axGmyEvSi
p3uL9Gmx+3S3KUJuAzfuqZwJD7gdcA0Zv3hPRl+xhx8qFtkPCfT5uj7wpFVaaJ8tTl1SDd2uRUIx
rgVgV+oERCg71oEVN7PqPK1y7pFVgSW9uhP1wuvO/EsbyrLYZV6HtBn3tJDcxhTsQWrrou3F1kFQ
cFnl9tcL1wXJo/F3wvsbYM1W0UPHv69XAsEUhg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d8YRbu+fllaHlNDedyRNDRtn9CBoVbO9fZCdhKpy0yf9dL6A08sFZuWVtVGljxF/L9volGB0IRjl
KbH2N/JBQA+tZWuh75kK5pjveAAKLVACS8A+Jmt/mrxzlolPWsruJ8o1Owrjq5tGWspdqmeDGS7U
/Ww7cN0C9ExUj4cjRDcKaqDS9MGwRtx4LfcQbQbRDZBk+cyRaWCchvmhjoum4uTizvqMq2u4oSym
t2zyKFjAuMO4zC2LbPbODeumm+FhlOKAHRyEBKA+VQeLB4apkMYparuD5AFWAuVvdWEbGq/L4cJ7
pEGz+6Hqi68CfF/4tMNiyHveP1lxnyAaiW6Kjg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51408)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
