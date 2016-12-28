Kleft	= keyboard_check(vk_left)
Kright  = keyboard_check(vk_right)
KSpace	= keyboard_check(vk_space)
if keyboard_check_pressed(vk_down){
	Select += 1
}
if keyboard_check_pressed(vk_up){
	Select -= 1
}
if keyboard_check_released(vk_shift){
	instance_destroy();
}

c_SAngle	= c_def
c_MAngle	= c_def
c_Length	= c_def
c_MLength	= c_def
c_MDiv		= c_def
switch Select{
	case 0:
		SAngle += (Kright - Kleft) 
		c_SAngle = c_red
	break;
	case 1:
		MAngle += (Kright - Kleft)  
		c_MAngle = c_red
	break;
	case 2:
		Length += (Kright - Kleft) 
		c_Length = c_red
	break;
	case 3:
		MLength += (Kright - Kleft) * .01
		c_MLength = c_red
	break;
	case 4:
		MDiv += (Kright - Kleft)
		clamp(MDiv,2,100)
		c_MDiv = c_red
	break;
	
}


