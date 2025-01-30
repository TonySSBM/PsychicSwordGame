/// @description Insert description here
// You can write your code in this editor

key_up = (keyboard_check(ord("W")) || keyboard_check(vk_up));
key_down = (keyboard_check(ord("S")) || keyboard_check(vk_down));
key_left = (keyboard_check(ord("A")) || keyboard_check(vk_left));
key_right = (keyboard_check(ord("D")) || keyboard_check(vk_right));
key_dash = (keyboard_check(ord("O")) || keyboard_check(ord("Z")));
key_attack = (keyboard_check(ord("P")) || keyboard_check(ord("X")));

image_speed = 1;

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

if(!attacking){
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
			if(back){
				sprite_index = sprCharSprintBack;
			}else{
				sprite_index = sprCharSprint;
			}
		}
	}
	if(!charging && key_attack){
		charging = true;
	}else if(charging && !key_attack){
		charging = false;
		attacking = true;
		speed = 0;
		sprite_index = sprCharSwingStartup;
	}
}

if(attacking){
	if(sprite_index == sprCharSwingCooldown && key_attack && sword != null && instance_exists(sword) && sword.image_index > 3){
		sprite_index = sprCharSwingDuring;
		sword.x = x;
		sword.y = y;
		sword.image_xscale = sword.image_xscale * -1; 
		
		if(movementDirection != 5){
			sword.image_angle = directionList[movementDirection - 1] + 90;
		}else{
			sword.image_angle = direction + 90;
		}
		
		sword.image_index = 0;
		image_index = 0;
		
		sword.x += lengthdir_x(swordOffset, sword.image_angle - 90);
		sword.y += lengthdir_y(swordOffset, sword.image_angle - 90);
		
	}
}
