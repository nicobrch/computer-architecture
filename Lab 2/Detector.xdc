## CLOCK
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK_IBUF]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports { CLK }];

## Señal X
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports { X }];

## Señal Z
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports { Z }];