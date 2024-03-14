
state = states.IDLE;
//initialize previous positions
xp = x;
yp = y;

facing = -1;
hsp = 0;
vsp = 0;
// how long we are knocked back for
knockback_time = 0;

hurt_time=25;// how much time between enemy damage and attack
flash_initial=10;
flash=flash_initial/2;