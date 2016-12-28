Length	= (ID.Length * MLength) * RandomL
Angle	= (ID.Angle * RandomL + (MAngle * AngleDir) ) 
x		= ID.X
y		= ID.Y
X		= x + lengthdir_x(Length, Angle)
Y		= y + lengthdir_y(Length, Angle)

if Length > MDiv{
	if !Left{
		Left = instance_create_depth(X,Y,-1,oBranch)
		Left.ID			= id
		Left.Length		= Length * MLength
		Left.RandomL	= random_range(LRandom[0],LRandom[1])
		Left.AngleDir	= -1
		Left.Angle		= ID.Angle - (MAngle * AngleDir)
		Left.Left		= noone
		Left.right		= noone
	}
	if !right{
		right = instance_create_depth(X,Y,-1,oBranch)	
		right.ID		= id
		right.Length	= Length * MLength
		right.RandomL	= random_range(LRandom[0],LRandom[1])
		right.AngleDir	= 1
		right.Angle		= ID.Angle - (MAngle * AngleDir)
		right.Left		= noone
		right.right		= noone
	}
}else{
	if instance_exists(Left){
		instance_destroy(Left)
		Left		= noone
	}
	if instance_exists(right){
		instance_destroy(right)
		right		= noone
	}

}


draw_set_color(c_white)
draw_line(x,y,X,Y)

draw_set_color(c_red)
//draw_circle(x,y,5,0)