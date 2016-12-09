library verilog;
use verilog.vl_types.all;
entity delay_ram is
    port(
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(8 downto 0);
        rdaddress       : in     vl_logic_vector(12 downto 0);
        rden            : in     vl_logic;
        wraddress       : in     vl_logic_vector(12 downto 0);
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(8 downto 0)
    );
end delay_ram;
