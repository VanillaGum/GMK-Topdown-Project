/// Create the path and move to the mouse
var mx = (mouse_x div 32)*32+16
var my = (mouse_y div 32)*32+16
var xx = obj_controller.old_x;
var yy = obj_controller.old_y;
var rect1 = (point_in_rectangle(x, y, min(xx, mouse_x), min(yy, mouse_y), max(xx, mouse_x), max(yy, mouse_y))) && obj_controller.rect==true

if (selected == true)
{

     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 4, path_end(),false);
    }
    else
    {
    if irandom(2)==1
    {
    instance_create(x+irandom_range(-16,16),y+irandom_range(-amt,0),obj_question_icon);
    }
    }
    
}