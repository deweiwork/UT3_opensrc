library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library work;
use work.DataStruct_param_def_header.all;--invoke our defined type and parameter

entity encoder_16b20b is
  port (
    data_in     : in  std_logic_vector(para_data_length_per_ch -1 downto 0) ;
    disp_in     : in  std_logic_vector(ctrl_code_length_per_ch -1 downto 0);
    
    data_out    : out std_logic_vector(para_data_length_per_ch_opensrc -1 downto 0)
  );
end encoder_16b20b ;


architecture arch of encoder_16b20b is
  component encode_v
    port
    (
      datain : in std_logic_vector (8 DOWNTO 0);
      dispin : in std_logic;
      dataout : out std_logic_vector (9 DOWNTO 0);
      dispout : out std_logic
    );
  end component;	
begin

  encoder_0 : encode_v
    port map(
      datain  => disp_in(0) & data_in(7 downto 0),
      dispin  => '1',
      dataout => data_out(9 downto 0),
      dispout => open
    );

  encoder_1 : encode_v
    port map(
      datain  => disp_in(1) & data_in(15 downto 8),
      dispin  => '1',
      dataout => data_out(19 downto 10),
      dispout => open
    );

end architecture ; 