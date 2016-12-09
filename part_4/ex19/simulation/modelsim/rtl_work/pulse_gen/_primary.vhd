library verilog;
use verilog.vl_types.all;
entity pulse_gen is
    generic(
        IDLE            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        IN_HIGH         : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        WAIT_LOW        : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        pulse           : out    vl_logic;
        \in\            : in     vl_logic;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of IN_HIGH : constant is 1;
    attribute mti_svvh_generic_type of WAIT_LOW : constant is 1;
end pulse_gen;
