x = rollback_load();
y = rollback_load();
image_angle = rollback_load();
hspeed = rollback_load();
vspeed = rollback_load();
bfg_cooldown = rollback_load();
new_bfb = rollback_load();
if (new_bfb != bfb) {
  instance_destroy(bfb)
  bfb = new_bfb
}