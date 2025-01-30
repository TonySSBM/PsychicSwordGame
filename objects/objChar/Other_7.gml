/// @description Insert description here
// You can write your code in this editor

if(sprite_index == sprCharSwingStartup){
	sprite_index = sprCharSwingDuring;
}else if(sprite_index == sprCharSwingDuring){
	sprite_index = sprCharSwingCooldown;
}else if(sprite_index == sprCharSwingCooldown){
	if(back){
		sprite_index = sprCharIdleBack;
	}else{
		sprite_index = sprCharIdle;
	}
	attacking = false;
}
