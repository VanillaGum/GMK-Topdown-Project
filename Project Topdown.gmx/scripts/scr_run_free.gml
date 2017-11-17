/// Create the path and move towards it

amt = level*4;

var mx = (irandom_range(x-amt,x+amt) div 32)*32+16
var my = (irandom_range(x-amt,y+amt) div 32)*32+16
   
if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, my_speed, path_end(),false);
    }
    
