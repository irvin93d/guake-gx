draw_self() 

var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(x - 25, y+25, x+25, y+30, pc, c_black, c_red, c_lime, 0, false, false)