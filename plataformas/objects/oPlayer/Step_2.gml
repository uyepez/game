/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


/*var plataforma = collision_rectangle(x-66, y-60, x+66, y+61, oPlataforma, true, true)

if(plataforma){
	x+= oPlataforma.hspeed;	
}*/

#region Gravedad
if (!collision_rectangle(x-6,y-6,x+6,y+1,oWall,false,false)) {
	gravity = 0.3;
	action = "Jump";
}

if (vspeed > 0) {
	var ground = collision_rectangle(x-6,y-6,x+6,y+vspeed,oWall,false,false);
	if (ground && y <= ground.y + 10) {
		y = ground.y;
		vspeed = 0;
		gravity = 0;
	}
} else if (vspeed < 0) {
	var ceiling = collision_rectangle(x-6,y-6,x+6,y-16+vspeed,oWall,false,false);
	if (ceiling && ceiling.oneSided == false) {
		y = ceiling.y + ceiling.sprite_height + 15;
		vspeed = 0;
	}
}
#endregion

#region Cambiar Sprite
sprite_index = asset_get_index("sPlayer" + action);
#endregion

var platform01 = collision_rectangle(x-6,y,x+6,y+1,obt_platafrma01,true,true);
if (platform01) {
	x += platform01.hspeed;
	y += platform01.vspeed;
}


var platform02 = collision_rectangle(x-6,y,x+6,y+1,obt_platafrma02,true,true);
if (platform02) {
	x += platform02.hspeed;
	y += platform02.vspeed;
}


var platform03 = collision_rectangle(x-6,y,x+6,y+1,obt_platafrma03,true,true);
if (platform03) {
	x += platform03.hspeed;
	y += platform03.vspeed;
}