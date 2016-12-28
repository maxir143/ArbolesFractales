Angle	=  SAngle
X		= x + lengthdir_x(Length,SAngle)
Y		= y + lengthdir_y(Length,SAngle)


draw_set_color(c_white)
draw_line(x,y,X,Y)

draw_set_color(c_def)
draw_circle(x,y,5,0)
draw_text(0,0,Select)
draw_set_color(c_SAngle)
draw_text(0,15,SAngle)
draw_set_color(c_MAngle)
draw_text(0,30,MAngle)
draw_set_color(c_Length)
draw_text(0,45,Length)
draw_set_color(c_MLength)
draw_text(0,60,MLength)
draw_set_color(c_MDiv)
draw_text(0,75,MDiv)