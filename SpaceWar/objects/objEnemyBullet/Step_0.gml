/// @description Insert description here
// You can write your code in this editor
object = objEnemyBullet;
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


x = x+ hsp;
y = y+ vsp;
