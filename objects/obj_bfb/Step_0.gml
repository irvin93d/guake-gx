image_angle += 20;

for (i = 0; i < instance_number(obj_player); i += 1) {
  var player = instance_find(obj_player, i);
  var dx = x - player.x
  var dy = y - player.y
  var dd = dx*dx + dy*dy
  if (dd < 30 * 30) {
	  player.hp -= 1;
  }
}