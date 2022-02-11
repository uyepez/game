/// @description logica de player
// Puede escribir su código en este editor

//get player inputs
/*key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y+1, oWall)) && (key_jump)
{
	vsp = -jumpsp;
}

//colisiones horizontales
if(place_meeting(x+hsp,y, oWall))
{
	while(!place_meeting(x+sign(hsp), y, oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//gravedad coliciones verticales
if(place_meeting(x,y+vsp, oWall))
{
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//animaciones
if( !place_meeting(x,y+1, oWall) ){
	sprite_index = sPlayerA;
	image_speed = 0;
	if(vsp > 0){
		image_index = 1;
	}else{
		image_index = 0;
	}
}else{
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sPlayer;
	}else{
		sprite_index =  sPlayerR;
	}
}

if(hsp != 0){
	image_xscale = sign(hsp);
}
*/
#region Movimiento Horizontal
var hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var horJost = (obtUI.joystickMoveX /80)
var vertJost = (obtUI.joystickMoveY /80)*-2

if(vertJost > 0.5 && vspeed = 0){
	salta = true;	
}

if(horJost>0){
	hor = 1
}

if(horJost<0){
	hor = -1
}


//x+= (obtUI.joystickMoveX /80)*3

if (hor != 0) {
	if (place_free(x + hor * 4, y)) {
		x += hor * 4;
	}
	
	image_xscale = hor;
	action = "Walk";
} else if (vspeed == 0) {
	action = "Idle";
}
#endregion

#region Salto
if (collision_rectangle(x-4,y-2,x+4,y+1,oWall,false,false) && ( keyboard_check_pressed(vk_space) || salta == true )) {
	salta = false;
	vspeed = -11;
}
#endregion


if(y > room_height+sprite_height){
	room_restart()	
}


