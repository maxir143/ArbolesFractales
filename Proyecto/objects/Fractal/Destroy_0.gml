if instance_exists(Left){
	instance_destroy(Left)
}
if instance_exists(right){
	instance_destroy(right)
}

instance_create_depth(x,y,-1,Fractal)