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

if (inp.space && bfg_cooldown <= 0){
  if (bfb_obj) {
    instance_destroy(bfb_obj)
    bfb_obj = pointer_null
  }
  bfb = [x, y, image_angle]
	bfg_cooldown = 100
}

if (array_length(bfb) == 0) {
  if (bfb_obj) {
    instance_destroy(bfb_obj)
    bfb_obj = pointer_null
  }
} else {
  if (!bfb_obj) {
    bfb_obj = instance_create_layer(bfb[0], bfb[1], layer, obj_bfb)
  }
  with (bfb_obj) {
    other.bfb[0] = x
    other.bfb[1] = y
    direction = other.bfb[2]
  }
}