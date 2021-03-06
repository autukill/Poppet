Poppet_Init()

var btn = instance_create_depth(0,0,0, oPoppet_Button)
Poppet_ScaleSet(btn, 1,1)
Poppet_SkewSet(btn, 0,30)
Poppet_PositionSet(btn, 0, 0)
Poppet_AnchorSet(btn, 0.5,0.5)
Poppet_PivotSet(btn, 0.5,0.5)
Poppet_SizeSet(btn, 200, 200)
Poppet_RotationSet(btn, 0)
Poppet_ChildAdd(GPoppet_Root, btn)
 
var img2 = instance_create_depth(0,0,0, oPoppet_Image)
Poppet_RotationSet(img2, 0)
Poppet_ScaleSet(img2, 1,1)
Poppet_SkewSet(img2, 0,0)
Poppet_AnchorSet(img2, 0,0)
Poppet_PivotSet(img2, 0,0)
Poppet_PositionSet(img2,  0,  0)
Poppet_SizeSet(img2, 350, 70)
Poppet_ImageSetFromSprite(img2, sButton)
Poppet_ImageScaleModelSet(img2, GPoppet_Image_ScaleMode.Scale9Grid)
Poppet_Image9GridRectSet(img2, 16,16, 137, 40)
Poppet_ChildAdd(btn, img2)

var img2 = instance_create_depth(0,0,0, oPoppet_DragArea)
Poppet_RotationSet(img2, -30)
Poppet_ScaleSet(img2, 1,1)
Poppet_SkewSet(img2, 0,0)
Poppet_AnchorSet(img2, 0.5,0.5)
Poppet_PivotSet(img2, 0,0)
Poppet_PositionSet(img2,  0,  0)
Poppet_SizeSet(img2, 350, 70)
Poppet_ImageSetFromSprite(img2, sButton)
Poppet_ImageScaleModelSet(img2, GPoppet_Image_ScaleMode.Scale9Grid)
Poppet_Image9GridRectSet(img2, 16,16, 137, 40)
Poppet_PreciseClickEnable(img2, sPoppet_PointPrecise)
Poppet_ChildAdd(GPoppet_Root, img2)

var text = instance_create_depth(0,0,0, oPoppet_Text)
Poppet_ChildAdd(btn, text)