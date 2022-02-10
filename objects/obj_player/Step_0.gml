var inp = rollback_get_input(player_id);

if (inp.left) 	x -= 2;
if (inp.right)  x += 2;
if (inp.up) 	y -= 2;
if (inp.down) 	y += 2;
if (inp.x) 	image_angle -= 4;
if (inp.c)  image_angle += 4;
