/// @description Insert description here
// You can write your code in this editor

if !global.Music
   {
   audio_stop_music();
   }
else
   {
   audio_play_music(sound_background, true);
   }


if (timer >= 0){
	timer--;
}

if (timer == midpoint1){
	instance_destroy(objPlatform2);
	audio_play_sound(sound_splash, 0,0);
}

if (timer == midpoint2){
	instance_destroy(objPlatform1);
	audio_play_sound(sound_splash, 0,0);

}

if (timer == caption1){
	instance_create_layer(10,10,"game", cap1);
	audio_play_sound(sound_alert, 0,0);
}

if (timer == caption2){
	instance_create_layer(10,10,"game", cap2);
	audio_play_sound(sound_alert, 0,0);

}

if (timer == warning1){
	instance_create_layer(10,10,"game", warn);
	audio_play_sound(sound_warn, 0,0);

}


if (timer == 0){
	instance_destroy(objPlatform);
	game_end();
}

