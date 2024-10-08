module counter(
  input [15:0] data_in,
  input load,
  input enable,
  input up_down,
  input clk,
  input reset,
  output wire [15:0] data_out
);
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "ModelSim" , encrypt_agent_info = "2020.1"
`pragma protect key_keyowner = "Mentor Graphics Corporation" , key_keyname = "MGC-VERIF-SIM-RSA-2"
`pragma protect key_method = "rsa"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 256 )
`pragma protect key_block
IraMNEIWz91YRR1T/hT9eObGwmwN/NG9aDfP1Nqv4BIn8PBhYVuDAQXnD3cnVCSK
r3TaWxmjeiXfqH2vDfmHkq6mQJCvwVMD+/glX3ug5L1BmBCwPtG5IR2OUgFO8k27
EWB86HSX3AbAgmndtaQTeLxQ0MuOTPSsJmNurIhIhbbr/qWJShLGpMQAm+noxGlo
U2oZcOgy3nWhd+pO9qGCWe0dfdpX6/fLOIxL12q+DOGRjq1Oyfq7YgaEi7JNJvII
GXm+yC83hhSG9/c1gcdrmz4Gi/n4Xt0vAFlnyViqO1Js3TUcAU+waR9vaYvmFUO3
k3g16c9mwg2SHrugiv/+Rg==
`pragma protect data_method = "aes128-cbc"
`pragma protect encoding = ( enctype = "base64" , line_length = 64 , bytes = 560 )
`pragma protect data_block
kVqfuqiovar/gGFDU0ThyYoNcnwryVLP/WXYrireBmV8hG+DjqA9CLqluKxn2uWp
AsW+SxRqebXp58MG3rP37AiqiTT32JGb3rzEOnt/tF6UXxRz5YtzfmteVZ7CVHxX
xc3JNY4SbCDxKSmDfgPz5cA3Afz8sE4PsRmeUXG4DAkH/z2WAfgQbkqnIvJ8XGiI
TUAFeqfbUiA3ry2XDsJOXIKBDKCB/pndZYhlxxMahTRH+hLRURrqOYKYBpFzk1Da
dTTjl+lobmvek3zVZq5Fe20eSP8BIi1Nts1nrnRZHh7S6j0FrwQ074nt8zCz1PdQ
mKWgWtMP5pRvRH7/37GetwRR0PUAT4JaLyRCH57M97gHEOHVW73fYlBFYts3pmZ3
sUWHDPH4YdFGJ5Pda5RTD4KUrla6tFxae6qRBmJ/dkFE673ikSzlufHvrJUnS+Y7
gO6BhV9s5/lC8FOQGaFW5nNRzu6VP7NSJQNq4JUUeFvVbffsLSUTzl5PzkMwzbDm
FZ9v1NIJmFGHN6JKjtQMB66gUKqmlUHaJAqsO/6KO5u46eORj2S5BHlu1z9PcR1Q
j57sIjy7T7poiv/AxUOsW71VvTCszvuUqEjuYK1W8zixsCZawTBojmuqQpOjnWJz
EFM+gRWUgxDRht/XyGnTvNQWkME7ND0935b4P0YQg1YXnt0yhB3CYqk1mtT5/N74
I3qlPeIKMmxVEN0Z8mK1HKsulKqDao83rPhqmxgONFc=
`pragma protect end_protected
endmodule