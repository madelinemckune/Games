/// @description Insert description here
// You can write your code in this editor

//var dist_x = x - objCenter.x;
//var dist_y = y - objCenter.y;
//var dist_x2 = dist_x * dist_x;
//var dist_y2 = dist_y * dist_y;

//var dist = sqrt(dist_x2 + dist_y2);

//var acceleration_x = dist_x / dist;
//var acceleration_y = dist_y / dist;

//acceleration_x = -acceleration_x;
//acceleration_y = -acceleration_y;

//var gravity_power =  5000/ (dist * dist);
//acceleration_x = acceleration_x / gravity_power;
//acceleration_y = acceleration_y / gravity_power;
//acceleration_x = acceleration_x / 10;
//acceleration_y = acceleration_y / 10;

object = objShip;
source = objCenter;
//ddist = point_distance(object.x, object.y, source.x, source.y);
var dist_x = x - objCenter.x;
var dist_y = y - objCenter.y;
var dist_x2 = dist_x * dist_x;
var dist_y2 = dist_y * dist_y;

var ddist = sqrt(dist_x2 + dist_y2);

dsquare = ddist * ddist;
grav_power = source.mass / dsquare;
ad = point_direction(object.x, object.y, source.x, source.y);
//ad = arctan2(x - object.x, y - object.y);
//cx = cos(ad);
//cy = sin(ad);
cx = cos(pi / 180 * ad);
cy = sin(pi / 180 * ad);
hsp += grav_power*cx;
vsp -= grav_power*cy;
//hsp += acceleration_x;
//vsp += acceleration_y;



//Rotate Right
if (keyboard_check(ord("A"))){
	image_angle+=1;
}
//Rotate Left
if (keyboard_check(ord("D"))){
	image_angle-=1;
}
//Fire Bullet
if (keyboard_check(ord("W")) && cooldown == 1){
	var bullet = instance_create_layer(x,y, "Bullet_Layer", objBullet);
	bullet.x = x;
	bullet.y =y;
	bullet.hsp = 5 *dcos(image_angle);
	bullet.vsp = 5 *-dsin(image_angle);
	cooldown = 20;
}
//Thrust
dir = image_angle;
if (keyboard_check(ord("S"))){
	//alarm[0] = 2 * 60;
	//I'm still working on the 2 second thrust

		//hsp +=lengthdir_x(thrust, dir);
		hsp += thrust * dcos(image_angle);
		//vsp += lengthdir_y(thrust, dir);
		vsp += thrust *-dsin(image_angle);
	/*
	else{
		hsp = 0;
		vsp = 0;
		var drag = 1-(speed * 0.005);  
		hsp *= drag;
		vsp *= drag;
	}
	*/
	
}
if (cooldown > 1){
	cooldown--;
}
//hspeed = hsp;
x = x+ hsp;
//vspeed = vsp;
y = y+ vsp;

