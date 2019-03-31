-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version : 1.12
--  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
--  /   /         Filename : v6_gtxwizard_v1_12.vhd
-- /___/   /\     
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Module V6_GTXWIZARD_V1_12 (a GTX Wrapper)
-- Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
-- 
-- 
-- (c) Copyright 2009-2011 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


--***************************** Entity Declaration ****************************

entity v6_gtxwizard_v1_12 is
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTXRESET_SPEEDUP    : integer   := 0 -- Set to 1 to speed up sim reset
);
port
(
    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX0  (X0Y0)
    
    ------------------------ Loopback and Powerdown Ports ----------------------
    GTX0_LOOPBACK_IN                        : in   std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    GTX0_RXBYTEISALIGNED_OUT                : out  std_logic;
    GTX0_RXCOMMADET_OUT                     : out  std_logic;
    GTX0_RXSLIDE_IN                         : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    GTX0_RXDATA_OUT                         : out  std_logic_vector(19 downto 0);
    GTX0_RXRECCLK_OUT                       : out  std_logic;
    GTX0_RXRESET_IN                         : in   std_logic;
    GTX0_RXUSRCLK2_IN                       : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    GTX0_RXEQMIX_IN                         : in   std_logic_vector(2 downto 0);
    GTX0_RXN_IN                             : in   std_logic;
    GTX0_RXP_IN                             : in   std_logic;
    ------------------------ Receive Ports - RX PLL Ports ----------------------
    GTX0_GTXRXRESET_IN                      : in   std_logic;
    GTX0_MGTREFCLKRX_IN                     : in   std_logic;
    GTX0_PLLRXRESET_IN                      : in   std_logic;
    GTX0_RXPLLLKDET_OUT                     : out  std_logic;
    GTX0_RXRESETDONE_OUT                    : out  std_logic;
    ------------------------- Transmit Ports - GTX Ports -----------------------
    GTX0_GTXTEST_IN                         : in   std_logic_vector(12 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GTX0_TXDATA_IN                          : in   std_logic_vector(19 downto 0);
    GTX0_TXOUTCLK_OUT                       : out  std_logic;
    GTX0_TXRESET_IN                         : in   std_logic;
    GTX0_TXUSRCLK2_IN                       : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GTX0_TXDIFFCTRL_IN                      : in   std_logic_vector(3 downto 0);
    GTX0_TXN_OUT                            : out  std_logic;
    GTX0_TXP_OUT                            : out  std_logic;
    GTX0_TXPOSTEMPHASIS_IN                  : in   std_logic_vector(4 downto 0);
    --------------- Transmit Ports - TX Driver and OOB signalling --------------
    GTX0_TXPREEMPHASIS_IN                   : in   std_logic_vector(3 downto 0);
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GTX0_GTXTXRESET_IN                      : in   std_logic;
    GTX0_TXRESETDONE_OUT                    : out  std_logic;

    
    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX1  (X0Y1)
    
    ------------------------ Loopback and Powerdown Ports ----------------------
    GTX1_LOOPBACK_IN                        : in   std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    GTX1_RXBYTEISALIGNED_OUT                : out  std_logic;
    GTX1_RXCOMMADET_OUT                     : out  std_logic;
    GTX1_RXSLIDE_IN                         : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    GTX1_RXDATA_OUT                         : out  std_logic_vector(19 downto 0);
    GTX1_RXRECCLK_OUT                       : out  std_logic;
    GTX1_RXRESET_IN                         : in   std_logic;
    GTX1_RXUSRCLK2_IN                       : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    GTX1_RXEQMIX_IN                         : in   std_logic_vector(2 downto 0);
    GTX1_RXN_IN                             : in   std_logic;
    GTX1_RXP_IN                             : in   std_logic;
    ------------------------ Receive Ports - RX PLL Ports ----------------------
    GTX1_GTXRXRESET_IN                      : in   std_logic;
    GTX1_MGTREFCLKRX_IN                     : in   std_logic;
    GTX1_PLLRXRESET_IN                      : in   std_logic;
    GTX1_RXPLLLKDET_OUT                     : out  std_logic;
    GTX1_RXRESETDONE_OUT                    : out  std_logic;
    ------------------------- Transmit Ports - GTX Ports -----------------------
    GTX1_GTXTEST_IN                         : in   std_logic_vector(12 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GTX1_TXDATA_IN                          : in   std_logic_vector(19 downto 0);
    GTX1_TXOUTCLK_OUT                       : out  std_logic;
    GTX1_TXRESET_IN                         : in   std_logic;
    GTX1_TXUSRCLK2_IN                       : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GTX1_TXDIFFCTRL_IN                      : in   std_logic_vector(3 downto 0);
    GTX1_TXN_OUT                            : out  std_logic;
    GTX1_TXP_OUT                            : out  std_logic;
    GTX1_TXPOSTEMPHASIS_IN                  : in   std_logic_vector(4 downto 0);
    --------------- Transmit Ports - TX Driver and OOB signalling --------------
    GTX1_TXPREEMPHASIS_IN                   : in   std_logic_vector(3 downto 0);
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GTX1_GTXTXRESET_IN                      : in   std_logic;
    GTX1_TXRESETDONE_OUT                    : out  std_logic;

    
    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX2  (X0Y2)
    
    ------------------------ Loopback and Powerdown Ports ----------------------
    GTX2_LOOPBACK_IN                        : in   std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    GTX2_RXBYTEISALIGNED_OUT                : out  std_logic;
    GTX2_RXCOMMADET_OUT                     : out  std_logic;
    GTX2_RXSLIDE_IN                         : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    GTX2_RXDATA_OUT                         : out  std_logic_vector(19 downto 0);
    GTX2_RXRECCLK_OUT                       : out  std_logic;
    GTX2_RXRESET_IN                         : in   std_logic;
    GTX2_RXUSRCLK2_IN                       : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    GTX2_RXEQMIX_IN                         : in   std_logic_vector(2 downto 0);
    GTX2_RXN_IN                             : in   std_logic;
    GTX2_RXP_IN                             : in   std_logic;
    ------------------------ Receive Ports - RX PLL Ports ----------------------
    GTX2_GTXRXRESET_IN                      : in   std_logic;
    GTX2_MGTREFCLKRX_IN                     : in   std_logic;
    GTX2_PLLRXRESET_IN                      : in   std_logic;
    GTX2_RXPLLLKDET_OUT                     : out  std_logic;
    GTX2_RXRESETDONE_OUT                    : out  std_logic;
    ------------------------- Transmit Ports - GTX Ports -----------------------
    GTX2_GTXTEST_IN                         : in   std_logic_vector(12 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GTX2_TXDATA_IN                          : in   std_logic_vector(19 downto 0);
    GTX2_TXOUTCLK_OUT                       : out  std_logic;
    GTX2_TXRESET_IN                         : in   std_logic;
    GTX2_TXUSRCLK2_IN                       : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GTX2_TXDIFFCTRL_IN                      : in   std_logic_vector(3 downto 0);
    GTX2_TXN_OUT                            : out  std_logic;
    GTX2_TXP_OUT                            : out  std_logic;
    GTX2_TXPOSTEMPHASIS_IN                  : in   std_logic_vector(4 downto 0);
    --------------- Transmit Ports - TX Driver and OOB signalling --------------
    GTX2_TXPREEMPHASIS_IN                   : in   std_logic_vector(3 downto 0);
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GTX2_GTXTXRESET_IN                      : in   std_logic;
    GTX2_TXRESETDONE_OUT                    : out  std_logic;

    
    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX3  (X0Y3)
    
    ------------------------ Loopback and Powerdown Ports ----------------------
    GTX3_LOOPBACK_IN                        : in   std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    GTX3_RXBYTEISALIGNED_OUT                : out  std_logic;
    GTX3_RXCOMMADET_OUT                     : out  std_logic;
    GTX3_RXSLIDE_IN                         : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    GTX3_RXDATA_OUT                         : out  std_logic_vector(19 downto 0);
    GTX3_RXRECCLK_OUT                       : out  std_logic;
    GTX3_RXRESET_IN                         : in   std_logic;
    GTX3_RXUSRCLK2_IN                       : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    GTX3_RXEQMIX_IN                         : in   std_logic_vector(2 downto 0);
    GTX3_RXN_IN                             : in   std_logic;
    GTX3_RXP_IN                             : in   std_logic;
    ------------------------ Receive Ports - RX PLL Ports ----------------------
    GTX3_GTXRXRESET_IN                      : in   std_logic;
    GTX3_MGTREFCLKRX_IN                     : in   std_logic;
    GTX3_PLLRXRESET_IN                      : in   std_logic;
    GTX3_RXPLLLKDET_OUT                     : out  std_logic;
    GTX3_RXRESETDONE_OUT                    : out  std_logic;
    ------------------------- Transmit Ports - GTX Ports -----------------------
    GTX3_GTXTEST_IN                         : in   std_logic_vector(12 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GTX3_TXDATA_IN                          : in   std_logic_vector(19 downto 0);
    GTX3_TXOUTCLK_OUT                       : out  std_logic;
    GTX3_TXRESET_IN                         : in   std_logic;
    GTX3_TXUSRCLK2_IN                       : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GTX3_TXDIFFCTRL_IN                      : in   std_logic_vector(3 downto 0);
    GTX3_TXN_OUT                            : out  std_logic;
    GTX3_TXP_OUT                            : out  std_logic;
    GTX3_TXPOSTEMPHASIS_IN                  : in   std_logic_vector(4 downto 0);
    --------------- Transmit Ports - TX Driver and OOB signalling --------------
    GTX3_TXPREEMPHASIS_IN                   : in   std_logic_vector(3 downto 0);
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GTX3_GTXTXRESET_IN                      : in   std_logic;
    GTX3_TXRESETDONE_OUT                    : out  std_logic

    
);


end v6_gtxwizard_v1_12;
    
architecture RTL of v6_gtxwizard_v1_12 is

    attribute CORE_GENERATION_INFO : string;
    attribute CORE_GENERATION_INFO of RTL : architecture is "v6_gtxwizard_v1_12,v6_gtxwizard_v1_12,{protocol_file=Start_from_scratch}";

--***************************** Signal Declarations *****************************

    -- ground and tied_to_vcc_i signals
    signal  tied_to_ground_i                :   std_logic;
    signal  tied_to_ground_vec_i            :   std_logic_vector(63 downto 0);
    signal  tied_to_vcc_i                   :   std_logic;


  
    signal  gtx0_share_rxpll_i           :   std_logic_vector(1 downto 0);
    signal  gtx0_mgtrefclkrx_i           :   std_logic_vector(1 downto 0);
  
    signal  gtx1_share_rxpll_i           :   std_logic_vector(1 downto 0);
    signal  gtx1_mgtrefclkrx_i           :   std_logic_vector(1 downto 0);
  
    signal  gtx2_share_rxpll_i           :   std_logic_vector(1 downto 0);
    signal  gtx2_mgtrefclkrx_i           :   std_logic_vector(1 downto 0);
  
    signal  gtx3_share_rxpll_i           :   std_logic_vector(1 downto 0);
    signal  gtx3_mgtrefclkrx_i           :   std_logic_vector(1 downto 0);
   
--*************************** Component Declarations **************************
component v6_gtxwizard_v1_12_gtx
generic
(
    -- Simulation attributes
    GTX_SIM_GTXRESET_SPEEDUP    : integer    := 0;
    
    -- Share RX PLL parameter
    GTX_TX_CLK_SOURCE           : string     := "TXPLL";
    -- Save power parameter
    GTX_POWER_SAVE              : bit_vector := "0000000000"
);
port 
(   
    ------------------------ Loopback and Powerdown Ports ----------------------
    LOOPBACK_IN                             : in   std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    RXBYTEISALIGNED_OUT                     : out  std_logic;
    RXCOMMADET_OUT                          : out  std_logic;
    RXSLIDE_IN                              : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    RXDATA_OUT                              : out  std_logic_vector(19 downto 0);
    RXRECCLK_OUT                            : out  std_logic;
    RXRESET_IN                              : in   std_logic;
    RXUSRCLK2_IN                            : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    RXEQMIX_IN                              : in   std_logic_vector(2 downto 0);
    RXN_IN                                  : in   std_logic;
    RXP_IN                                  : in   std_logic;
    ------------------------ Receive Ports - RX PLL Ports ----------------------
    GTXRXRESET_IN                           : in   std_logic;
    MGTREFCLKRX_IN                          : in   std_logic_vector(1 downto 0);
    PLLRXRESET_IN                           : in   std_logic;
    RXPLLLKDET_OUT                          : out  std_logic;
    RXRESETDONE_OUT                         : out  std_logic;
    ------------------------- Transmit Ports - GTX Ports -----------------------
    GTXTEST_IN                              : in   std_logic_vector(12 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    TXDATA_IN                               : in   std_logic_vector(19 downto 0);
    TXOUTCLK_OUT                            : out  std_logic;
    TXRESET_IN                              : in   std_logic;
    TXUSRCLK2_IN                            : in   std_logic;
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    TXDIFFCTRL_IN                           : in   std_logic_vector(3 downto 0);
    TXN_OUT                                 : out  std_logic;
    TXP_OUT                                 : out  std_logic;
    TXPOSTEMPHASIS_IN                       : in   std_logic_vector(4 downto 0);
    --------------- Transmit Ports - TX Driver and OOB signalling --------------
    TXPREEMPHASIS_IN                        : in   std_logic_vector(3 downto 0);
    ----------------------- Transmit Ports - TX PLL Ports ----------------------
    GTXTXRESET_IN                           : in   std_logic;
    MGTREFCLKTX_IN                          : in   std_logic_vector(1 downto 0);
    PLLTXRESET_IN                           : in   std_logic;
    TXPLLLKDET_OUT                          : out  std_logic;
    TXRESETDONE_OUT                         : out  std_logic


);
end component;


--********************************* Main Body of Code**************************

begin                       

    tied_to_ground_i                    <= '0';
    tied_to_ground_vec_i(63 downto 0)   <= (others => '0');
    tied_to_vcc_i                       <= '1';
                     

   
    gtx0_mgtrefclkrx_i <= (tied_to_ground_i & GTX0_MGTREFCLKRX_IN);
    gtx1_mgtrefclkrx_i <= (tied_to_ground_i & GTX1_MGTREFCLKRX_IN);
    gtx2_mgtrefclkrx_i <= (tied_to_ground_i & GTX2_MGTREFCLKRX_IN);
    gtx3_mgtrefclkrx_i <= (tied_to_ground_i & GTX3_MGTREFCLKRX_IN);

 
    --------------------------- GTX Instances  -------------------------------   


    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX0  (X0Y0)

    gtx0_v6_gtxwizard_v1_12_i : v6_gtxwizard_v1_12_gtx
    generic map
    (
        -- Simulation attributes
        GTX_SIM_GTXRESET_SPEEDUP    => WRAPPER_SIM_GTXRESET_SPEEDUP,
        
        -- Share RX PLL parameter
        GTX_TX_CLK_SOURCE           => "RXPLL",
        -- Save power parameter
        GTX_POWER_SAVE              => "0000110100"
    )
    port map
    (
        ------------------------ Loopback and Powerdown Ports ----------------------
        LOOPBACK_IN                     =>      GTX0_LOOPBACK_IN,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        RXBYTEISALIGNED_OUT             =>      GTX0_RXBYTEISALIGNED_OUT,
        RXCOMMADET_OUT                  =>      GTX0_RXCOMMADET_OUT,
        RXSLIDE_IN                      =>      GTX0_RXSLIDE_IN,
        ------------------- Receive Ports - RX Data Path interface -----------------
        RXDATA_OUT                      =>      GTX0_RXDATA_OUT,
        RXRECCLK_OUT                    =>      GTX0_RXRECCLK_OUT,
        RXRESET_IN                      =>      GTX0_RXRESET_IN,
        RXUSRCLK2_IN                    =>      GTX0_RXUSRCLK2_IN,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        RXEQMIX_IN                      =>      GTX0_RXEQMIX_IN,
        RXN_IN                          =>      GTX0_RXN_IN,
        RXP_IN                          =>      GTX0_RXP_IN,
        ------------------------ Receive Ports - RX PLL Ports ----------------------
        GTXRXRESET_IN                   =>      GTX0_GTXRXRESET_IN,
        MGTREFCLKRX_IN                  =>      gtx0_mgtrefclkrx_i,
        PLLRXRESET_IN                   =>      GTX0_PLLRXRESET_IN,
        RXPLLLKDET_OUT                  =>      GTX0_RXPLLLKDET_OUT,
        RXRESETDONE_OUT                 =>      GTX0_RXRESETDONE_OUT,
        ------------------------- Transmit Ports - GTX Ports -----------------------
        GTXTEST_IN                      =>      GTX0_GTXTEST_IN,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        TXDATA_IN                       =>      GTX0_TXDATA_IN,
        TXOUTCLK_OUT                    =>      GTX0_TXOUTCLK_OUT,
        TXRESET_IN                      =>      GTX0_TXRESET_IN,
        TXUSRCLK2_IN                    =>      GTX0_TXUSRCLK2_IN,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        TXDIFFCTRL_IN                   =>      GTX0_TXDIFFCTRL_IN,
        TXN_OUT                         =>      GTX0_TXN_OUT,
        TXP_OUT                         =>      GTX0_TXP_OUT,
        TXPOSTEMPHASIS_IN               =>      GTX0_TXPOSTEMPHASIS_IN,
        --------------- Transmit Ports - TX Driver and OOB signalling --------------
        TXPREEMPHASIS_IN                =>      GTX0_TXPREEMPHASIS_IN,
        ----------------------- Transmit Ports - TX PLL Ports ----------------------
        GTXTXRESET_IN                   =>      GTX0_GTXTXRESET_IN,
        MGTREFCLKTX_IN                  =>      gtx0_mgtrefclkrx_i,
        PLLTXRESET_IN                   =>      tied_to_ground_i,
        TXPLLLKDET_OUT                  =>      open,
        TXRESETDONE_OUT                 =>      GTX0_TXRESETDONE_OUT

    );



    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX1  (X0Y1)

    gtx1_v6_gtxwizard_v1_12_i : v6_gtxwizard_v1_12_gtx
    generic map
    (
        -- Simulation attributes
        GTX_SIM_GTXRESET_SPEEDUP    => WRAPPER_SIM_GTXRESET_SPEEDUP,
        
        -- Share RX PLL parameter
        GTX_TX_CLK_SOURCE           => "RXPLL",
        -- Save power parameter
        GTX_POWER_SAVE              => "0000110100"
    )
    port map
    (
        ------------------------ Loopback and Powerdown Ports ----------------------
        LOOPBACK_IN                     =>      GTX1_LOOPBACK_IN,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        RXBYTEISALIGNED_OUT             =>      GTX1_RXBYTEISALIGNED_OUT,
        RXCOMMADET_OUT                  =>      GTX1_RXCOMMADET_OUT,
        RXSLIDE_IN                      =>      GTX1_RXSLIDE_IN,
        ------------------- Receive Ports - RX Data Path interface -----------------
        RXDATA_OUT                      =>      GTX1_RXDATA_OUT,
        RXRECCLK_OUT                    =>      GTX1_RXRECCLK_OUT,
        RXRESET_IN                      =>      GTX1_RXRESET_IN,
        RXUSRCLK2_IN                    =>      GTX1_RXUSRCLK2_IN,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        RXEQMIX_IN                      =>      GTX1_RXEQMIX_IN,
        RXN_IN                          =>      GTX1_RXN_IN,
        RXP_IN                          =>      GTX1_RXP_IN,
        ------------------------ Receive Ports - RX PLL Ports ----------------------
        GTXRXRESET_IN                   =>      GTX1_GTXRXRESET_IN,
        MGTREFCLKRX_IN                  =>      gtx1_mgtrefclkrx_i,
        PLLRXRESET_IN                   =>      GTX1_PLLRXRESET_IN,
        RXPLLLKDET_OUT                  =>      GTX1_RXPLLLKDET_OUT,
        RXRESETDONE_OUT                 =>      GTX1_RXRESETDONE_OUT,
        ------------------------- Transmit Ports - GTX Ports -----------------------
        GTXTEST_IN                      =>      GTX1_GTXTEST_IN,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        TXDATA_IN                       =>      GTX1_TXDATA_IN,
        TXOUTCLK_OUT                    =>      GTX1_TXOUTCLK_OUT,
        TXRESET_IN                      =>      GTX1_TXRESET_IN,
        TXUSRCLK2_IN                    =>      GTX1_TXUSRCLK2_IN,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        TXDIFFCTRL_IN                   =>      GTX1_TXDIFFCTRL_IN,
        TXN_OUT                         =>      GTX1_TXN_OUT,
        TXP_OUT                         =>      GTX1_TXP_OUT,
        TXPOSTEMPHASIS_IN               =>      GTX1_TXPOSTEMPHASIS_IN,
        --------------- Transmit Ports - TX Driver and OOB signalling --------------
        TXPREEMPHASIS_IN                =>      GTX1_TXPREEMPHASIS_IN,
        ----------------------- Transmit Ports - TX PLL Ports ----------------------
        GTXTXRESET_IN                   =>      GTX1_GTXTXRESET_IN,
        MGTREFCLKTX_IN                  =>      gtx1_mgtrefclkrx_i,
        PLLTXRESET_IN                   =>      tied_to_ground_i,
        TXPLLLKDET_OUT                  =>      open,
        TXRESETDONE_OUT                 =>      GTX1_TXRESETDONE_OUT

    );



    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX2  (X0Y2)

    gtx2_v6_gtxwizard_v1_12_i : v6_gtxwizard_v1_12_gtx
    generic map
    (
        -- Simulation attributes
        GTX_SIM_GTXRESET_SPEEDUP    => WRAPPER_SIM_GTXRESET_SPEEDUP,
        
        -- Share RX PLL parameter
        GTX_TX_CLK_SOURCE           => "RXPLL",
        -- Save power parameter
        GTX_POWER_SAVE              => "0000110100"
    )
    port map
    (
        ------------------------ Loopback and Powerdown Ports ----------------------
        LOOPBACK_IN                     =>      GTX2_LOOPBACK_IN,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        RXBYTEISALIGNED_OUT             =>      GTX2_RXBYTEISALIGNED_OUT,
        RXCOMMADET_OUT                  =>      GTX2_RXCOMMADET_OUT,
        RXSLIDE_IN                      =>      GTX2_RXSLIDE_IN,
        ------------------- Receive Ports - RX Data Path interface -----------------
        RXDATA_OUT                      =>      GTX2_RXDATA_OUT,
        RXRECCLK_OUT                    =>      GTX2_RXRECCLK_OUT,
        RXRESET_IN                      =>      GTX2_RXRESET_IN,
        RXUSRCLK2_IN                    =>      GTX2_RXUSRCLK2_IN,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        RXEQMIX_IN                      =>      GTX2_RXEQMIX_IN,
        RXN_IN                          =>      GTX2_RXN_IN,
        RXP_IN                          =>      GTX2_RXP_IN,
        ------------------------ Receive Ports - RX PLL Ports ----------------------
        GTXRXRESET_IN                   =>      GTX2_GTXRXRESET_IN,
        MGTREFCLKRX_IN                  =>      gtx2_mgtrefclkrx_i,
        PLLRXRESET_IN                   =>      GTX2_PLLRXRESET_IN,
        RXPLLLKDET_OUT                  =>      GTX2_RXPLLLKDET_OUT,
        RXRESETDONE_OUT                 =>      GTX2_RXRESETDONE_OUT,
        ------------------------- Transmit Ports - GTX Ports -----------------------
        GTXTEST_IN                      =>      GTX2_GTXTEST_IN,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        TXDATA_IN                       =>      GTX2_TXDATA_IN,
        TXOUTCLK_OUT                    =>      GTX2_TXOUTCLK_OUT,
        TXRESET_IN                      =>      GTX2_TXRESET_IN,
        TXUSRCLK2_IN                    =>      GTX2_TXUSRCLK2_IN,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        TXDIFFCTRL_IN                   =>      GTX2_TXDIFFCTRL_IN,
        TXN_OUT                         =>      GTX2_TXN_OUT,
        TXP_OUT                         =>      GTX2_TXP_OUT,
        TXPOSTEMPHASIS_IN               =>      GTX2_TXPOSTEMPHASIS_IN,
        --------------- Transmit Ports - TX Driver and OOB signalling --------------
        TXPREEMPHASIS_IN                =>      GTX2_TXPREEMPHASIS_IN,
        ----------------------- Transmit Ports - TX PLL Ports ----------------------
        GTXTXRESET_IN                   =>      GTX2_GTXTXRESET_IN,
        MGTREFCLKTX_IN                  =>      gtx2_mgtrefclkrx_i,
        PLLTXRESET_IN                   =>      tied_to_ground_i,
        TXPLLLKDET_OUT                  =>      open,
        TXRESETDONE_OUT                 =>      GTX2_TXRESETDONE_OUT

    );



    --_________________________________________________________________________
    --_________________________________________________________________________
    --GTX3  (X0Y3)

    gtx3_v6_gtxwizard_v1_12_i : v6_gtxwizard_v1_12_gtx
    generic map
    (
        -- Simulation attributes
        GTX_SIM_GTXRESET_SPEEDUP    => WRAPPER_SIM_GTXRESET_SPEEDUP,
        
        -- Share RX PLL parameter
        GTX_TX_CLK_SOURCE           => "RXPLL",
        -- Save power parameter
        GTX_POWER_SAVE              => "0000110100"
    )
    port map
    (
        ------------------------ Loopback and Powerdown Ports ----------------------
        LOOPBACK_IN                     =>      GTX3_LOOPBACK_IN,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        RXBYTEISALIGNED_OUT             =>      GTX3_RXBYTEISALIGNED_OUT,
        RXCOMMADET_OUT                  =>      GTX3_RXCOMMADET_OUT,
        RXSLIDE_IN                      =>      GTX3_RXSLIDE_IN,
        ------------------- Receive Ports - RX Data Path interface -----------------
        RXDATA_OUT                      =>      GTX3_RXDATA_OUT,
        RXRECCLK_OUT                    =>      GTX3_RXRECCLK_OUT,
        RXRESET_IN                      =>      GTX3_RXRESET_IN,
        RXUSRCLK2_IN                    =>      GTX3_RXUSRCLK2_IN,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        RXEQMIX_IN                      =>      GTX3_RXEQMIX_IN,
        RXN_IN                          =>      GTX3_RXN_IN,
        RXP_IN                          =>      GTX3_RXP_IN,
        ------------------------ Receive Ports - RX PLL Ports ----------------------
        GTXRXRESET_IN                   =>      GTX3_GTXRXRESET_IN,
        MGTREFCLKRX_IN                  =>      gtx3_mgtrefclkrx_i,
        PLLRXRESET_IN                   =>      GTX3_PLLRXRESET_IN,
        RXPLLLKDET_OUT                  =>      GTX3_RXPLLLKDET_OUT,
        RXRESETDONE_OUT                 =>      GTX3_RXRESETDONE_OUT,
        ------------------------- Transmit Ports - GTX Ports -----------------------
        GTXTEST_IN                      =>      GTX3_GTXTEST_IN,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        TXDATA_IN                       =>      GTX3_TXDATA_IN,
        TXOUTCLK_OUT                    =>      GTX3_TXOUTCLK_OUT,
        TXRESET_IN                      =>      GTX3_TXRESET_IN,
        TXUSRCLK2_IN                    =>      GTX3_TXUSRCLK2_IN,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        TXDIFFCTRL_IN                   =>      GTX3_TXDIFFCTRL_IN,
        TXN_OUT                         =>      GTX3_TXN_OUT,
        TXP_OUT                         =>      GTX3_TXP_OUT,
        TXPOSTEMPHASIS_IN               =>      GTX3_TXPOSTEMPHASIS_IN,
        --------------- Transmit Ports - TX Driver and OOB signalling --------------
        TXPREEMPHASIS_IN                =>      GTX3_TXPREEMPHASIS_IN,
        ----------------------- Transmit Ports - TX PLL Ports ----------------------
        GTXTXRESET_IN                   =>      GTX3_GTXTXRESET_IN,
        MGTREFCLKTX_IN                  =>      gtx3_mgtrefclkrx_i,
        PLLTXRESET_IN                   =>      tied_to_ground_i,
        TXPLLLKDET_OUT                  =>      open,
        TXRESETDONE_OUT                 =>      GTX3_TXRESETDONE_OUT

    );

  
  
    

     
end RTL;
