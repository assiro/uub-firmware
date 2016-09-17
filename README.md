# uub-firmware
uub-firmware is a Vivado Project for Xilinx Zynq 7020 on UUB for Auger experiment

WP1 IP Block to analize ADC data from UUB's channels (for debugging and monitoring) in parallel with ufficial trigger (D.Nitz - WP2)
- Added petalinux applications under SDK 
Applications implemented:

 Name ---_- contents ---- Author
- scope - Real time monitor of input signals 10 channels (R. Assiro)
- led continus led shot (R.Assiro)
- led_dac Intensity of lef shot (R.Assiro)
- acquire UUB real time data acquisition (G.Marsella R.Sato)
- uub_init (UUB intialization R. Assiro)
- slowc comunication program and control from zynq and MPS450 (K.H.Beker)
- uub_init initialization of UUB at boot (R.Assiro)
- ssd_test Test, acquisition and settings for SSD detector (D. Martello)
- pmt_hv High voltage control (D. Martello)
- trigger setup and control of trigger (D. Nitz) developing (G. Marsella)

 All source code are available under SDK's workspace of uub-firmware (platform for developing software)
