var _x = x;
var _y = y; 
var _bliss = bliss;

var shortest_distance = 1000000000;
var temp_target = noone, 
var distance;

with ( obj_target ) {
// chooose target type
	if(target_type == _bliss) {
        distance = point_distance(x,y,_x,_y);
        if (distance < shortest_distance ) {
            shortest_distance = distance;
            temp_target = id;
        }
    }
}
target = temp_target;