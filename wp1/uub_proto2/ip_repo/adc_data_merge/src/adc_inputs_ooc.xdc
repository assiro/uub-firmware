################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name ADC0_CK_N -period 8.3333333333333339 [get_ports ADC0_CK_N]
create_clock -name ADC0_CK_P -period 8.3333333333333339 [get_ports ADC0_CK_P]
create_clock -name ADC1_CK_N -period 8.3333333333333339 [get_ports ADC1_CK_N]
create_clock -name ADC1_CK_P -period 8.3333333333333339 [get_ports ADC1_CK_P]
create_clock -name ADC2_CK_N -period 8.3333333333333339 [get_ports ADC2_CK_N]
create_clock -name ADC2_CK_P -period 8.3333333333333339 [get_ports ADC2_CK_P]
create_clock -name ADC3_CK_N -period 8.3333333333333339 [get_ports ADC3_CK_N]
create_clock -name ADC3_CK_P -period 8.3333333333333339 [get_ports ADC3_CK_P]
create_clock -name ADC4_CK_N -period 8.3333333333333339 [get_ports ADC4_CK_N]
create_clock -name ADC4_CK_P -period 8.3333333333333339 [get_ports ADC4_CK_P]
create_clock -name CLK_120 -period 8.3333333333333339 [get_ports CLK_120]

################################################################################