/// @description Insert description here
// You can write your code in this editor

var key_up = (keyboard_check(ord("W")) || keyboard_check(vk_up));
var key_down = (keyboard_check(ord("S")) || keyboard_check(vk_down));
var key_left = (keyboard_check(ord("A")) || keyboard_check(vk_left));
var key_right = (keyboard_check(ord("D")) || keyboard_check(vk_right));
var key_dash = (keyboard_check(ord("O")) || keyboard_check(ord("Z")));
var key_attack = (keyboard_check(ord("P")) || keyboard_check(ord("X")));

//movement directions - cleaned up socd with neutral socd
var movementDirection = 5;

if(key_up){
	movementDirection -= 3;
}
if(key_down){
	movementDirection += 3;
}
if(key_left){
	movementDirection -= 1;
}
if(key_right){
	movementDirection += 1;
}

var directionList = [135, 90, 45, 180, 360, 0, 225, 270, 315];

if(movementDirection == 5){
	speed = 0;
	if(back){
		sprite_index = sprCharIdleBack;
	}else{
		sprite_index = sprCharIdle;
	}
	if(flipped){
		image_xscale = -1;
	}
}else{
	direction = directionList[movementDirection - 1];
	speed = 3;
	if(movementDirection < 4){
		back = true;
		sprite_index = sprCharRunBack;
	}else if(movementDirection > 6){
		back = false;
		sprite_index = sprCharRun;
	}else{
		if(back){
			sprite_index = sprCharRunBack;
		}else{
			sprite_index = sprCharRun;
		}
	}
	if(movementDirection % 3 == 1){
		flipped = true;
		image_xscale = -1;
	}else if(movementDirection % 3 == 0){
		flipped = false;
		image_xscale = 1;
	}
	
	if(key_dash){
		speed *= 1.75;
	}
}

