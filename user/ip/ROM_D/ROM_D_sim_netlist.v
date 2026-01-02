// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jan  2 17:41:50 2026
// Host        : Rander-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Lab/CO/OExp05/prj/xilinx/template.gen/sources_1/ip/ROM_D/ROM_D_sim_netlist.v
// Design      : ROM_D
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_D,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ROM_D
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire [9:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM_D.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  ROM_D_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17360)
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
