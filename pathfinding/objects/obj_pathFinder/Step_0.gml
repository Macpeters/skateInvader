/// @description
if(state == "idle"){
//	bliss = scr_get_bliss();
	scr_get_bliss();
	scr_get_target();
	if(target != noone && target != -1){
		var path = scr_get_path(x, y, target.x - 10, target.y - 10);
		path_start(path, 5, 0, true);
		following_path = true;
		state = "following_bliss";
	}
	
}

/*
if(mouse_check_button_pressed(mb_any)){
	path_end();
	state = "directed";
	target = noone;
	var path = scr_get_path(x, y, mouse_x, mouse_y);
	path_start(path, 5, 0, true);
	following_path = true;
}*/

//reset at end of path
if(path_position == 1 && following_path == true){
	alarm[0] = time_in_bliss;
	following_path = false;
	state = "following_bliss";
}

