// Module to merge the data from 5 ADCs into one 120 bit wide bus
//
// 22-Feb-2016 DFN Initial version
// 26-Feb-2016 DFN Modify to accept only 24 inputs per ADC instead of 26
//

module adc_merge
  (
   input CLK,    
   input [23:0] ADC0,
   input [23:0] ADC1,
   input [23:0] ADC2,
   input [23:0] ADC3,
   input [23:0] ADC4,
   output reg [119:0] ADCOUT
   );
 
   always @(posedge CLK)
   begin
    ADCOUT[23:0] = ADC0;
    ADCOUT[47:24] = ADC1;
    ADCOUT[71:48] = ADC2;
    ADCOUT[95:72] = ADC3;
    ADCOUT[119:96] = ADC4;
    end

endmodule
