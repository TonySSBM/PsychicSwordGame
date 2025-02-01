/// @description DOWN
// You can write your code in this editor

if(!keyboard_check(ord("W")) && !attacking){
	vspeed = moveSpeed;
	if(keyboard_check(ord("A")) ^^ keyboard_check(ord("D"))){ //checks thru xor if theres normalization needed
		vspeed *= NORMALIZE_MOVEMENT;
	}
	if(keyboard_check(ord("O"))){
		sprite_index = sprCharSprint;
	}else{
		sprite_index = sprCharRun;
	}
}