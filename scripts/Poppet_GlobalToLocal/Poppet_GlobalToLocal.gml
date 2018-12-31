/// transform
/// x
/// y

var inverse = [];
matrix_inverse(argument0, inverse);

var result = [];
result[@ 0] = inverse[0] * argument1 + inverse[4] * argument2 + inverse[12];
result[@ 1] = inverse[1] * argument1 + inverse[5] * argument2 + inverse[13];

return result;