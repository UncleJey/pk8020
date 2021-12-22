library verilog;
use verilog.vl_types.all;
entity T is
    port(
        R               : in     vl_logic;
        S               : in     vl_logic;
        D               : in     vl_logic;
        C               : in     vl_logic;
        RF              : out    vl_logic;
        RI              : out    vl_logic
    );
end T;
