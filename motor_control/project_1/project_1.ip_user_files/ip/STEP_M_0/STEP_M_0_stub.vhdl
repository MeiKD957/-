-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Jul 31 17:57:06 2020
-- Host        : DESKTOP-NF5G41P running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/UART/motor_control/project_1/project_1.srcs/sources_1/ip/STEP_M_0/STEP_M_0_stub.vhdl
-- Design      : STEP_M_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity STEP_M_0 is
  Port ( 
    clk0 : in STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC
  );

end STEP_M_0;

architecture stub of STEP_M_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk0,\out\[3:0],rst";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "STEP_M,Vivado 2018.2";
begin
end;
