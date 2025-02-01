/// @description RIGHT
// You can write your code in this editor

if(!keyboard_check(ord("A")) && !attacking){
	hspeed = moveSpeed;
	image_xscale = 1;
	if(keyboard_check(ord("W")) ^^ keyboard_check(ord("S"))){ //checks thru xor if theres normalization needed
		hspeed *= NORMALIZE_MOVEMENT;
	}else{
		if(keyboard_check(ord("O"))){
			sprite_index = sprCharSprint;
		}else{
			sprite_index = sprCharRun;
		}
	}
	
}