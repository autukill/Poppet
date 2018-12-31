/// @func Poppet_PointCreate(cb, scope, x, y)
/// @param {number} [x=0] - position of the point on the x axis
/// @param {number} [y=0] - position of the point on the y axis

var point = array_create(2, 0)

if argument_count > 0 point[0] = argument[0]	
if argument_count > 1 point[1] = argument[1]

return point