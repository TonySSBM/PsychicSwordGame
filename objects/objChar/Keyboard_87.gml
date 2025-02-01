/// @description UP
// You can write your code in this editor

if(!keyboard_check(ord("S")) && !attacking){
	vspeed = -moveSpeed;
	if(keyboard_check(ord("A")) ^^ keyboard_check(ord("D"))){ //checks thru xor if theres normalization needed
		vspeed *= NORMALIZE_MOVEMENT;
	}
	
	if(keyboard_check(ord("O"))){
		sprite_index = sprCharSprintBack;
	}else{
		sprite_index = sprCharRunBack;
	}
}