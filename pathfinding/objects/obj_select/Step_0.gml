/// @description Collision with skaters

with(obj_pathFinder) {
	/*
	if(collision_rectangle( startX, startY, endX, endY, other, false, true )){
		other.selected = true;
	}*/

	
	if(x > startX) and (x < endX) and (y > startX) and (y < startY) { 
		// add id to list 
		selected = true;
	}
}

/*
if(show_rect == true){
	var inst;
	inst = collision_rectangle( startX, startY, endX, endY, obj_pathFinder, false, true );
	if inst != noone {
		with (inst) selected = true;
	}
}
*/



