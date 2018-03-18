/// @description  

draw_self();

var halfBlockWidth = 0.5 * oAStar.block_size;
var pathNumber = path_get_number(path_index);

/*
//draw path elements
if(pathNumber >= 2){
	//draw path
	draw_set_color(c_blue);
	for(var i=0; i < pathNumber-1; i++){
		draw_line(
			path_get_point_x(path_index, i)+ halfBlockWidth,
			path_get_point_y(path_index, i)+ halfBlockWidth,
			path_get_point_x(path_index, i+1)+ halfBlockWidth,
			path_get_point_y(path_index, i+1)+ halfBlockWidth,
		);
	}
	
	//draw starting point and ending point
	draw_set_color(c_green);
	draw_circle(
		path_get_point_x(path_index,0) + halfBlockWidth,
		path_get_point_y(path_index,0) + halfBlockWidth, 
		5, 
		false
	);
	draw_set_color(c_red);
	draw_circle(
		path_get_point_x(path_index, pathNumber - 1) + halfBlockWidth,
		path_get_point_y(path_index, pathNumber - 1) + halfBlockWidth,
		5,
		false
	);
	
}*/

if(selected == true){
	draw_set_color(c_yellow);
	radius = sprite_width / 2;
	draw_circle(x + radius, y + radius, radius, true)
}

/*
draw_set_color(c_blue);
draw_text(x, y - 32, string(state));
*/

if(target != noone && target != -1){
	draw_sprite(think_sprite, 0, x-32, y-32);
}

/*
//collision
for(var i=0; i<field_width; i++){
	for(var j=0; j<field_height; j++){
		draw_rectangle(
			i * block_size, 
			j * block_size, 
			(i+1) * block_size, 
			(j+1) * block_size, 
			walkable[i,j]
		);
		var key = scr_get_key(i, j)
		draw_text(i * block_size, j * block_size + block_size, string(key));
	}
}*/
