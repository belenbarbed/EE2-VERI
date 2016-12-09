library verilog;
use verilog.vl_types.all;
entity counter_13 is
    generic(
        BIT_SZ          : integer := 13
    );
    port(
        clock           : in     vl_logic;
        enable          : in     vl_logic;
        count           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BIT_SZ : constant is 1;
end counter_13;
