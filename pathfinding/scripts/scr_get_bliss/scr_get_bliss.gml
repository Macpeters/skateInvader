var r = irandom_range(1, 4);

switch(r){
 case 1:
	bliss = "sleep";
	time_in_bliss = 60;
	think_sprite = spr_sleep;
	break;
 case 2:
	bliss = "social";
	time_in_bliss = 40;
	think_sprite = spr_social;
	break;
 case 3:
	bliss = "skatepark";
	time_in_bliss = 80;
	think_sprite = spr_skatepark_think;
	break;
 default: 
	bliss = "food";
	time_in_bliss = 20;
	think_sprite = spr_burger_shop;
}
