-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MatchEngineTopL1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    bx_V : IN STD_LOGIC_VECTOR (2 downto 0);
    bx_o_V : OUT STD_LOGIC_VECTOR (2 downto 0);
    bx_o_V_ap_vld : OUT STD_LOGIC;
    instubdata_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    instubdata_dataarray_data_V_ce0 : OUT STD_LOGIC;
    instubdata_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    instubdata_nentries_0_V_0 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_0_V_1 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_0_V_2 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_0_V_3 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_0_V_4 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_0_V_5 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_0_V_6 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_0_V_7 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_1_V_0 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_1_V_1 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_1_V_2 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_1_V_3 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_1_V_4 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_1_V_5 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_1_V_6 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_1_V_7 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_2_V_0 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_2_V_1 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_2_V_2 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_2_V_3 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_2_V_4 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_2_V_5 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_2_V_6 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_2_V_7 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_3_V_0 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_3_V_1 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_3_V_2 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_3_V_3 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_3_V_4 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_3_V_5 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_3_V_6 : IN STD_LOGIC_VECTOR (4 downto 0);
    instubdata_nentries_3_V_7 : IN STD_LOGIC_VECTOR (4 downto 0);
    inprojdata_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    inprojdata_dataarray_data_V_ce0 : OUT STD_LOGIC;
    inprojdata_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR (20 downto 0);
    inprojdata_nentries_0_V : IN STD_LOGIC_VECTOR (7 downto 0);
    inprojdata_nentries_1_V : IN STD_LOGIC_VECTOR (7 downto 0);
    outcandmatch_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    outcandmatch_dataarray_data_V_ce0 : OUT STD_LOGIC;
    outcandmatch_dataarray_data_V_we0 : OUT STD_LOGIC;
    outcandmatch_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    outcandmatch_nentries_0_V : OUT STD_LOGIC_VECTOR (7 downto 0);
    outcandmatch_nentries_0_V_ap_vld : OUT STD_LOGIC;
    outcandmatch_nentries_1_V : OUT STD_LOGIC_VECTOR (7 downto 0);
    outcandmatch_nentries_1_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of MatchEngineTopL1 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "MatchEngineTopL1,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcvu7p-flvb2104-1-e,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.471488,HLS_SYN_LAT=224,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=925,HLS_SYN_LUT=5356,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal bx_o_V_1_data_reg : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal bx_o_V_1_vld_reg : STD_LOGIC := '0';
    signal bx_o_V_1_vld_in : STD_LOGIC;
    signal bx_o_V_1_ack_in : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_ap_start : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_ap_done : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_ap_idle : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_ap_ready : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_bx_o_V : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_MatchEngine_1_0_s_fu_128_bx_o_V_ap_vld : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_instubdata_dataarray_data_V_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_MatchEngine_1_0_s_fu_128_instubdata_dataarray_data_V_ce0 : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_inprojdata_dataarray_data_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_MatchEngine_1_0_s_fu_128_inprojdata_dataarray_data_V_ce0 : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_ce0 : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_we0 : STD_LOGIC;
    signal grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_d0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_MatchEngine_1_0_s_fu_128_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_MatchEngine_1_0_s_fu_128_ap_return_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_MatchEngine_1_0_s_fu_128_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component MatchEngine_1_0_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        bx_V : IN STD_LOGIC_VECTOR (2 downto 0);
        bx_o_V : OUT STD_LOGIC_VECTOR (2 downto 0);
        bx_o_V_ap_vld : OUT STD_LOGIC;
        instubdata_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        instubdata_dataarray_data_V_ce0 : OUT STD_LOGIC;
        instubdata_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
        instubdata_nentries_0_V_0 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_0_V_1 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_0_V_2 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_0_V_3 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_0_V_4 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_0_V_5 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_0_V_6 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_0_V_7 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_1_V_0 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_1_V_1 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_1_V_2 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_1_V_3 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_1_V_4 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_1_V_5 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_1_V_6 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_1_V_7 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_2_V_0 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_2_V_1 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_2_V_2 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_2_V_3 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_2_V_4 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_2_V_5 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_2_V_6 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_2_V_7 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_3_V_0 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_3_V_1 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_3_V_2 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_3_V_3 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_3_V_4 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_3_V_5 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_3_V_6 : IN STD_LOGIC_VECTOR (4 downto 0);
        instubdata_nentries_3_V_7 : IN STD_LOGIC_VECTOR (4 downto 0);
        inprojdata_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        inprojdata_dataarray_data_V_ce0 : OUT STD_LOGIC;
        inprojdata_dataarray_data_V_q0 : IN STD_LOGIC_VECTOR (20 downto 0);
        inprojdata_nentries_0_V : IN STD_LOGIC_VECTOR (7 downto 0);
        inprojdata_nentries_1_V : IN STD_LOGIC_VECTOR (7 downto 0);
        outcandmatch_dataarray_data_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        outcandmatch_dataarray_data_V_ce0 : OUT STD_LOGIC;
        outcandmatch_dataarray_data_V_we0 : OUT STD_LOGIC;
        outcandmatch_dataarray_data_V_d0 : OUT STD_LOGIC_VECTOR (13 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    grp_MatchEngine_1_0_s_fu_128 : component MatchEngine_1_0_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_MatchEngine_1_0_s_fu_128_ap_start,
        ap_done => grp_MatchEngine_1_0_s_fu_128_ap_done,
        ap_idle => grp_MatchEngine_1_0_s_fu_128_ap_idle,
        ap_ready => grp_MatchEngine_1_0_s_fu_128_ap_ready,
        bx_V => bx_V,
        bx_o_V => grp_MatchEngine_1_0_s_fu_128_bx_o_V,
        bx_o_V_ap_vld => grp_MatchEngine_1_0_s_fu_128_bx_o_V_ap_vld,
        instubdata_dataarray_data_V_address0 => grp_MatchEngine_1_0_s_fu_128_instubdata_dataarray_data_V_address0,
        instubdata_dataarray_data_V_ce0 => grp_MatchEngine_1_0_s_fu_128_instubdata_dataarray_data_V_ce0,
        instubdata_dataarray_data_V_q0 => instubdata_dataarray_data_V_q0,
        instubdata_nentries_0_V_0 => instubdata_nentries_0_V_0,
        instubdata_nentries_0_V_1 => instubdata_nentries_0_V_1,
        instubdata_nentries_0_V_2 => instubdata_nentries_0_V_2,
        instubdata_nentries_0_V_3 => instubdata_nentries_0_V_3,
        instubdata_nentries_0_V_4 => instubdata_nentries_0_V_4,
        instubdata_nentries_0_V_5 => instubdata_nentries_0_V_5,
        instubdata_nentries_0_V_6 => instubdata_nentries_0_V_6,
        instubdata_nentries_0_V_7 => instubdata_nentries_0_V_7,
        instubdata_nentries_1_V_0 => instubdata_nentries_1_V_0,
        instubdata_nentries_1_V_1 => instubdata_nentries_1_V_1,
        instubdata_nentries_1_V_2 => instubdata_nentries_1_V_2,
        instubdata_nentries_1_V_3 => instubdata_nentries_1_V_3,
        instubdata_nentries_1_V_4 => instubdata_nentries_1_V_4,
        instubdata_nentries_1_V_5 => instubdata_nentries_1_V_5,
        instubdata_nentries_1_V_6 => instubdata_nentries_1_V_6,
        instubdata_nentries_1_V_7 => instubdata_nentries_1_V_7,
        instubdata_nentries_2_V_0 => instubdata_nentries_2_V_0,
        instubdata_nentries_2_V_1 => instubdata_nentries_2_V_1,
        instubdata_nentries_2_V_2 => instubdata_nentries_2_V_2,
        instubdata_nentries_2_V_3 => instubdata_nentries_2_V_3,
        instubdata_nentries_2_V_4 => instubdata_nentries_2_V_4,
        instubdata_nentries_2_V_5 => instubdata_nentries_2_V_5,
        instubdata_nentries_2_V_6 => instubdata_nentries_2_V_6,
        instubdata_nentries_2_V_7 => instubdata_nentries_2_V_7,
        instubdata_nentries_3_V_0 => instubdata_nentries_3_V_0,
        instubdata_nentries_3_V_1 => instubdata_nentries_3_V_1,
        instubdata_nentries_3_V_2 => instubdata_nentries_3_V_2,
        instubdata_nentries_3_V_3 => instubdata_nentries_3_V_3,
        instubdata_nentries_3_V_4 => instubdata_nentries_3_V_4,
        instubdata_nentries_3_V_5 => instubdata_nentries_3_V_5,
        instubdata_nentries_3_V_6 => instubdata_nentries_3_V_6,
        instubdata_nentries_3_V_7 => instubdata_nentries_3_V_7,
        inprojdata_dataarray_data_V_address0 => grp_MatchEngine_1_0_s_fu_128_inprojdata_dataarray_data_V_address0,
        inprojdata_dataarray_data_V_ce0 => grp_MatchEngine_1_0_s_fu_128_inprojdata_dataarray_data_V_ce0,
        inprojdata_dataarray_data_V_q0 => inprojdata_dataarray_data_V_q0,
        inprojdata_nentries_0_V => inprojdata_nentries_0_V,
        inprojdata_nentries_1_V => inprojdata_nentries_1_V,
        outcandmatch_dataarray_data_V_address0 => grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_address0,
        outcandmatch_dataarray_data_V_ce0 => grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_ce0,
        outcandmatch_dataarray_data_V_we0 => grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_we0,
        outcandmatch_dataarray_data_V_d0 => grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_d0,
        ap_return_0 => grp_MatchEngine_1_0_s_fu_128_ap_return_0,
        ap_return_1 => grp_MatchEngine_1_0_s_fu_128_ap_return_1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_MatchEngine_1_0_s_fu_128_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_MatchEngine_1_0_s_fu_128_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_MatchEngine_1_0_s_fu_128_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_MatchEngine_1_0_s_fu_128_ap_ready = ap_const_logic_1)) then 
                    grp_MatchEngine_1_0_s_fu_128_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    bx_o_V_1_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (bx_o_V_1_vld_reg = ap_const_logic_0) and (bx_o_V_1_vld_in = ap_const_logic_1))) then 
                bx_o_V_1_vld_reg <= ap_const_logic_1;
            elsif (((bx_o_V_1_vld_in = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1) and (bx_o_V_1_vld_reg = ap_const_logic_1))) then 
                bx_o_V_1_vld_reg <= ap_const_logic_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (bx_o_V_1_vld_reg = ap_const_logic_0) and (bx_o_V_1_vld_in = ap_const_logic_1)) or (not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (ap_const_logic_1 = ap_const_logic_1) and (bx_o_V_1_vld_in = ap_const_logic_1) and (bx_o_V_1_vld_reg = ap_const_logic_1)))) then
                bx_o_V_1_data_reg <= grp_MatchEngine_1_0_s_fu_128_bx_o_V;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, bx_o_V_1_ack_in, grp_MatchEngine_1_0_s_fu_128_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_MatchEngine_1_0_s_fu_128_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((bx_o_V_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(bx_o_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((bx_o_V_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(bx_o_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((bx_o_V_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bx_o_V <= bx_o_V_1_data_reg;

    bx_o_V_1_ack_in_assign_proc : process(bx_o_V_1_vld_reg)
    begin
        if (((bx_o_V_1_vld_reg = ap_const_logic_0) or ((ap_const_logic_1 = ap_const_logic_1) and (bx_o_V_1_vld_reg = ap_const_logic_1)))) then 
            bx_o_V_1_ack_in <= ap_const_logic_1;
        else 
            bx_o_V_1_ack_in <= ap_const_logic_0;
        end if; 
    end process;

    bx_o_V_1_vld_in <= grp_MatchEngine_1_0_s_fu_128_bx_o_V_ap_vld;
    bx_o_V_ap_vld <= bx_o_V_1_vld_reg;
    grp_MatchEngine_1_0_s_fu_128_ap_start <= grp_MatchEngine_1_0_s_fu_128_ap_start_reg;
    inprojdata_dataarray_data_V_address0 <= grp_MatchEngine_1_0_s_fu_128_inprojdata_dataarray_data_V_address0;
    inprojdata_dataarray_data_V_ce0 <= grp_MatchEngine_1_0_s_fu_128_inprojdata_dataarray_data_V_ce0;
    instubdata_dataarray_data_V_address0 <= grp_MatchEngine_1_0_s_fu_128_instubdata_dataarray_data_V_address0;
    instubdata_dataarray_data_V_ce0 <= grp_MatchEngine_1_0_s_fu_128_instubdata_dataarray_data_V_ce0;
    outcandmatch_dataarray_data_V_address0 <= grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_address0;
    outcandmatch_dataarray_data_V_ce0 <= grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_ce0;
    outcandmatch_dataarray_data_V_d0 <= grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_d0;
    outcandmatch_dataarray_data_V_we0 <= grp_MatchEngine_1_0_s_fu_128_outcandmatch_dataarray_data_V_we0;
    outcandmatch_nentries_0_V <= grp_MatchEngine_1_0_s_fu_128_ap_return_0;

    outcandmatch_nentries_0_V_ap_vld_assign_proc : process(grp_MatchEngine_1_0_s_fu_128_ap_done, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_MatchEngine_1_0_s_fu_128_ap_done = ap_const_logic_1))) then 
            outcandmatch_nentries_0_V_ap_vld <= ap_const_logic_1;
        else 
            outcandmatch_nentries_0_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    outcandmatch_nentries_1_V <= grp_MatchEngine_1_0_s_fu_128_ap_return_1;

    outcandmatch_nentries_1_V_ap_vld_assign_proc : process(grp_MatchEngine_1_0_s_fu_128_ap_done, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_MatchEngine_1_0_s_fu_128_ap_done = ap_const_logic_1))) then 
            outcandmatch_nentries_1_V_ap_vld <= ap_const_logic_1;
        else 
            outcandmatch_nentries_1_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
