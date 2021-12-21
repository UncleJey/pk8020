library verilog;
use verilog.vl_types.all;
entity CT2 is
    port(
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        notEWR          : in     vl_logic;
        C               : in     vl_logic;
        notR            : in     vl_logic;
        DECR            : in     vl_logic;
        E1              : in     vl_logic;
        E2              : in     vl_logic;
        CR              : out    vl_logic;
        OUT0            : out    vl_logic;
        OUT1            : out    vl_logic;
        OUT2            : out    vl_logic;
        OUT3            : out    vl_logic
    );
end CT2;
