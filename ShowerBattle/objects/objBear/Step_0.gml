/// @description Insert description here
// You can write your code in this editor
x += (spd * dir);

if (!place_meeting(x+(25*dir), y+10, objPlatform) && !place_meeting(x+(25*dir),y+10, objPlatform1) && !place_meeting(x+(25*dir),y+10, objPlatform2)){
	if (dir == -1){
		dir = 1;
		image_xscale = sign(dir);
	}
	else{
		dir = -1;
		image_xscale = sign(dir);
	}
}
