library verilog;
use verilog.vl_types.all;
entity Scheme is
    port(
        out20           : out    vl_logic;
        MHz_20          : in     vl_logic;
        out10           : out    vl_logic;
        GND             : in     vl_logic;
        B1              : in     vl_logic;
        out5            : out    vl_logic;
        out2_5          : out    vl_logic;
        out1_25         : out    vl_logic;
        out_LA2         : out    vl_logic;
        outC0           : out    vl_logic;
        outC1           : out    vl_logic;
        outC2           : out    vl_logic;
        outC3           : out    vl_logic;
        inC1            : in     vl_logic;
        A1              : in     vl_logic
    );
end Scheme;
