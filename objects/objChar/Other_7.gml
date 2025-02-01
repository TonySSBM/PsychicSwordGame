/// @description Insert description here
// You can write your code in this editor

if(sprite_index == sprCharSwingStartup){
	sprite_index = sprCharSwingDuring;
	image_index = 0;
	
	sword =	instance_create_layer(x, y, layer, objSword);
	
	sword.image_angle = direction + 90;
	sword.image_index = 0;
	
	sword.x += lengthdir_x(swordOffset, sword.image_angle - 90);
	sword.y += lengthdir_y(swordOffset, sword.image_angle - 90);
}else if(sprite_index == sprCharSwingDuring){
	sprite_index = sprCharSwingCooldown;
	image_index = 0;
}else if(sprite_index == sprCharSwingCooldown){
	if(back){
		sprite_index = sprCharIdleBack;
	}else{
		sprite_index = sprCharIdle;
	}
	attacking = false;
	image_index = 0;
}
