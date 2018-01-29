/// @description  
block_size = 32;
field_width = ceil(room_width / block_size);
field_height = ceil(room_height / block_size);
obstacle_weight = 1;

for(var i=0; i<field_width; i++){
	for(var j=0; j<field_height; j++){
		walkable[i, j] = 1;
	}
}

// solids are not walkable at all, and lose their value
with(obj_solid){
	//div is integer division: like floor(x/y) but more efficient
	var block_x = x div oAStar.block_size;
	var block_y = y div oAStar.block_size;
	oAStar.walkable[block_x, block_y] = 0;
}

// add some extra weight to blocks with obstacles

with(obj_obstacle){
	//div is integer division: like floor(x/y) but more efficient
	var block_x = x div oAStar.block_size;
	var block_y = y div oAStar.block_size;
	oAStar.walkable[block_x, block_y] += oAStar.obstacle_weight;
}
