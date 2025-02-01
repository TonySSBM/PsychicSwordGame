/// @description KEY RELEASE
// You can write your code in this editor

if(!(keyboard_check(ord("W")) ^^ keyboard_check(ord("S")))){ //checks thru inverse xor if it still needs speed
	vspeed = 0;
}

if(!(keyboard_check(ord("A")) ^^ keyboard_check(ord("D")))){ //checks thru inverse xor if it still needs speed
	hspeed = 0;
}

if(!keyboard_check(ord("O"))){
	moveSpeed = 3;
}

if(!attacking && hspeed == 0 && vspeed == 0){
	sprite_index = sprCharIdle;
}