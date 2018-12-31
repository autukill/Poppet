/// @func Poppet_RectCreate(x, y, w, h)
/// @param {number} [x=0]
/// @param {number} [y=0]
/// @param {number} [w=0]
/// @param {number} [h=0]

var rect = array_create(4, 0)

if argument_count > 0 rect[0] = argument[0]	
if argument_count > 1 rect[1] = argument[1]
if argument_count > 2 rect[2] = argument[2]	
if argument_count > 3 rect[3] = argument[3]

return rect