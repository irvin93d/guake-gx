var inp = rollback_get_input(player_id);

function minmax(vmin, v, vmax) {
  return max(vmin, min(v,vmax))
}

// TODO: Need to include the speed degrade also when changing direction. Negative multiplier by speed?
if (inp.up) vspeed -= acceleration
  else if (inp.down) vspeed += acceleration
  else vspeed = vspeed * speed_degrade;
vspeed = minmax(-max_speed, vspeed, max_speed)

if (inp.left) hspeed -= acceleration
  else if (inp.right) hspeed += acceleration
  else hspeed = hspeed * speed_degrade;
hspeed = minmax(-max_speed, hspeed, max_speed)

if (inp.x) 	image_angle -= 4;
if (inp.c)  image_angle += 4;

// TODO Jump with z
// TODO Rocket jump with z + space

if (bfg_cooldown > 0) {
  bfg_cooldown -= 1
}

if (inp.space && bfg_cooldown <= 0) {
  with(instance_create_layer(x, y, layer, obj_bfb)) {
	  direction = other.image_angle
  }
  bfg_cooldown = 100
}