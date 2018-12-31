/// Poppet_CreateLocalMatrix()

var matrix = noone;

// pivot
if (argument2 != 0 or argument3 != 0 )
	  matrix = matrix_build(-argument2, -argument3, 0,0,0,0, 1,1,1);
else  matrix = matrix_build_identity();


// scale 
if (argument4 != 0 or argument5 != 0 ) 
{
	var scaleMatrix = matrix_build(0,0,0, 0,0,0 , argument4,argument5,1);
	matrix = matrix_multiply(matrix, scaleMatrix)
}

// rotation 
if (argument6 != 0) 
{
	var rotationMatrix = matrix_build(0,0,0, 0,0,argument6, 1,1,1);	
	matrix = matrix_multiply(matrix, rotationMatrix)		
}

// skew
// 斜切 同 旋转 都是 (数学上)逆时针
if (argument7 !=0 or argument8 != 0)
{
	var skewX = degtorad(argument7),
	    skewY = degtorad(-argument8), 
		sinX = sin(skewX),
		cosX = cos(skewX),
		sinY = sin(skewY),
		cosY = cos(skewY);

	matrix[0] = matrix[0] * cosY - matrix[1] * sinX
	matrix[1] = matrix[0] * sinY + matrix[1] * cosX
	matrix[4] = matrix[4] * cosY - matrix[5] * sinX
	matrix[5] = matrix[4] * sinY + matrix[5] * cosX
}

// translate 
if (argument0 != 0 or argument1 != 0) 
{
	var translateMatrix = matrix_build(argument0, argument1, 0, 0,0,0,1,1,1);
	matrix = matrix_multiply(matrix, translateMatrix)		
}

return matrix;