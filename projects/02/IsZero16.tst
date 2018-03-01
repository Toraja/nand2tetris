load IsZero16.hdl,
output-file IsZero16.out,
compare-to IsZero16.cmp,
output-list in%B1.16.1 out%B3.1.3;


set in %B0000000000000000,
eval,
output;

set in %B0000000000000001,
eval,
output;

set in %B1000000000000000,
eval,
output;

set in %B1010101010101010,
eval,
output;

set in %B0011110011000011,
eval,
output;

set in %B0001001000110100,
eval,
output;

set in %B0000000011111111,
eval,
output;

set in %B1111111100000000,
eval,
output;

set in %B1111111111111111,
eval,
output;




