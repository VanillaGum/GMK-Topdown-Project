switch(irandom(3))
{
//upper border
case 0:
var mx = ((irandom(room_width) div 32)*32+16);
var my = ((16 div 32)*32);


     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 4, path_end(),false);
    }
else
{
state=states.normal;
escape=0;
}
    break;

//lower border
case 1:
var mx = ((irandom(room_width) div 32)*32)+16;
var my = ((room_height-16 div 32)*32)-16;


     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 4, path_end(),false);
    }
else
{
state=states.normal;
}
    break;

//left border
case 2:
var mx = ((16 div 32)*32)-16;
var my = ((irandom(room_height) div 32)*32)+16;


     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 4, path_end(),false);
    }
else
{
state=states.normal;
}
    break;
    
//right border
case 3:
var mx = ((room_width-16 div 32)*32)-16;
var my = ((irandom(room_height) div 32)*32)+16;


     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 4, path_end(),false);
    }
else
{
state=states.normal;
}
    break;

}
