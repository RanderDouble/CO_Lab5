// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jan  2 17:41:31 2026
// Host        : Rander-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Lab/CO/OExp05/prj/xilinx/template.gen/sources_1/ip/RAM_B/RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module RAM_B
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM_B.mem" *) 
  (* C_INIT_FILE_NAME = "RAM_B.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  RAM_B_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27568)
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
