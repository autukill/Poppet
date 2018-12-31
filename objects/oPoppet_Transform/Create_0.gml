/**
 * The global matrix transform. It can be swapped temporarily by some functions like getLocalBounds()
 */
modelMatrix = matrix_build_identity()
 
localTransform = matrix_build_identity()
worldTransform = matrix_build_identity()

localMatrixDirty = true
worldMatrixDirty = true

size = Poppet_PointCreate(160, 80)
/**
 * The coordinate of the object relative to the local coordinates of the parent.
 */
position = Poppet_PointCreate()

/**
 * The scale factor of the object.
 */
scale = Poppet_PointCreate(1, 1)

/**
 * The pivot point of the displayObject that it rotates around.
 */
pivot = Poppet_PointCreate(0.5, 0.5)

/**
 * The skew amount, on the x and y axis.
 */
skew = Poppet_PointCreate()

/**
 * The anchor factor of the object
 */
anchor = Poppet_PointCreate(0.5, 0.5)

rotation = 0

preciseClick = false