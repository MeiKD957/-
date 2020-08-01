-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Jul 31 17:57:06 2020
-- Host        : DESKTOP-NF5G41P running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/UART/motor_control/project_1/project_1.srcs/sources_1/ip/STEP_M_0/STEP_M_0_sim_netlist.vhdl
-- Design      : STEP_M_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity STEP_M_0_STEP_M is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk0 : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of STEP_M_0_STEP_M : entity is "STEP_M";
end STEP_M_0_STEP_M;

architecture STRUCTURE of STEP_M_0_STEP_M is
  signal \FSM_sequential_current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current[2]_i_1_n_0\ : STD_LOGIC;
  signal current : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current : signal is "yes";
  signal \out[0]_i_1_n_0\ : STD_LOGIC;
  signal \out[1]_i_1_n_0\ : STD_LOGIC;
  signal \out[2]_i_1_n_0\ : STD_LOGIC;
  signal \out[3]_i_1_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_reg[0]\ : label is "s0:000,s1:111,s2:110,s3:101,s4:100,s5:011,s6:010,s7:001";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_reg[1]\ : label is "s0:000,s1:111,s2:110,s3:101,s4:100,s5:011,s6:010,s7:001";
  attribute KEEP of \FSM_sequential_current_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_reg[2]\ : label is "s0:000,s1:111,s2:110,s3:101,s4:100,s5:011,s6:010,s7:001";
  attribute KEEP of \FSM_sequential_current_reg[2]\ : label is "yes";
begin
\FSM_sequential_current[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current(0),
      O => \FSM_sequential_current[0]_i_1_n_0\
    );
\FSM_sequential_current[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current(0),
      I1 => current(1),
      O => \FSM_sequential_current[1]_i_1_n_0\
    );
\FSM_sequential_current[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => current(1),
      I1 => current(0),
      I2 => current(2),
      O => \FSM_sequential_current[2]_i_1_n_0\
    );
\FSM_sequential_current_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_current[0]_i_1_n_0\,
      Q => current(0)
    );
\FSM_sequential_current_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_current[1]_i_1_n_0\,
      Q => current(1)
    );
\FSM_sequential_current_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_current[2]_i_1_n_0\,
      Q => current(2)
    );
\out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => current(2),
      I1 => current(1),
      I2 => current(0),
      O => \out[0]_i_1_n_0\
    );
\out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => current(0),
      I1 => current(1),
      I2 => current(2),
      O => \out[1]_i_1_n_0\
    );
\out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => current(2),
      I1 => current(1),
      I2 => current(0),
      O => \out[2]_i_1_n_0\
    );
\out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => current(0),
      I1 => current(1),
      I2 => current(2),
      O => \out[3]_i_1_n_0\
    );
\out_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk0,
      CE => '1',
      D => \out[0]_i_1_n_0\,
      PRE => rst,
      Q => \out\(0)
    );
\out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => rst,
      D => \out[1]_i_1_n_0\,
      Q => \out\(1)
    );
\out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => rst,
      D => \out[2]_i_1_n_0\,
      Q => \out\(2)
    );
\out_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk0,
      CE => '1',
      D => \out[3]_i_1_n_0\,
      PRE => rst,
      Q => \out\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity STEP_M_0 is
  port (
    clk0 : in STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of STEP_M_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of STEP_M_0 : entity is "STEP_M_0,STEP_M,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of STEP_M_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of STEP_M_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of STEP_M_0 : entity is "STEP_M,Vivado 2018.2";
end STEP_M_0;

architecture STRUCTURE of STEP_M_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
inst: entity work.STEP_M_0_STEP_M
     port map (
      clk0 => clk0,
      \out\(3 downto 0) => \out\(3 downto 0),
      rst => rst
    );
end STRUCTURE;
