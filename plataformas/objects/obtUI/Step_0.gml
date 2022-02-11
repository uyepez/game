/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(device_mouse_check_button(0 , mb_left)){
	var mx = device_mouse_x(0)	
	var my = device_mouse_y(0)
	
	if(!joystickActibe){
		
		if(mx<= display_get_gui_width()/2 && my>= display_get_gui_height()/2){
			joytickAnchorX = mx	
			joytickAnchorY = my
			joystickActibe = true
		}
			
	}else{
		angle = point_direction(joytickAnchorX,joytickAnchorY, mx, my)
		distance = point_distance(joytickAnchorX,joytickAnchorY, mx, my)
		
		joystickMoveX = dcos(angle)*min(80, distance)
		joystickMoveY = -dsin(angle)*min(80, distance)		
		
	}
}else{
	joystickActibe = false;	
	joystickMoveX = 0
	joystickMoveY = 0
}