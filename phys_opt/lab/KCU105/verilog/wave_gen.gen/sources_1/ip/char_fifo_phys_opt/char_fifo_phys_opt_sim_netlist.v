// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov 25 23:55:02 2022
// Host        : amd running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/amd/training/phys_opt/lab/KCU105/verilog/wave_gen.gen/sources_1/ip/char_fifo_phys_opt/char_fifo_phys_opt_sim_netlist.v
// Design      : char_fifo_phys_opt
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo_phys_opt,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module char_fifo_phys_opt
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
  char_fifo_phys_opt_fifo_generator_v13_2_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51440)
`pragma protect data_block
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
7TtrLd0AaMTZMimKmXKKhSc75mTSd5MXDnw=
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
