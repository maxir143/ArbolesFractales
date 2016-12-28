globalvar SAngle,LRandom,MAngle,MLength,MDiv;

// colores
c_def = c_white
c_SAngle	= c_def
c_MAngle	= c_def
c_Length	= c_def
c_MLength	= c_def
c_MDiv		= c_def
//


Select = 0
Length	= 250
MLength	= .5
LRandom[0] = .5
LRandom[1] = 1
SAngle	= 90
MDiv	= 10
Angle	=  SAngle
MAngle	= 90
X		= x + lengthdir_x(Length,SAngle)
Y		= y + lengthdir_y(Length,SAngle)

Left = instance_create_depth(X,Y,-1,oBranch)	
Left.ID			= id
Left.Length		= Length * MLength
Left.RandomL	= random_range(LRandom[0],LRandom[1])
Left.AngleDir	= -1
Left.Angle		= Angle
Left.Left		= noone
Left.right		= noone
		
right = instance_create_depth(X,Y,-1,oBranch)	
right.ID		= id
right.Length	= Length * MLength
right.RandomL	= random_range(LRandom[0],LRandom[1])
right.AngleDir	= 1
right.Angle		= Angle
right.right		= noone
right.Left		= noone