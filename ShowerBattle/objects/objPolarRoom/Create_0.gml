/// @description Insert description here
// You can write your code in this editor
time = floor((global.gallons/2.1)*60);

timer = floor(time * room_speed);
midpoint1 = floor((timer*4)/6);
midpoint2 = floor((timer*2)/6);

warning1 = floor((timer*1)/6);
caption2 = floor((timer*3)/6);
caption1 = floor((timer*5)/6);

global.showC1 = 0;
global.showC2 = 0;
global.showW = 0;

draw_set_color(c_black);

global.Music = true;
audio_play_sound(sound_background, 1,1);