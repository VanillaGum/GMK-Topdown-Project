/// Create the path and move to the food
food = instance_nearest(x,y,obj_food) 

var mx = (food.x div 32)*32+16
var my = (food.y div 32)*32+16
var xx = obj_controller.old_x;
var yy = obj_controller.old_y;
var rect1 = (point_in_rectangle(x, y, min(xx, mouse_x), min(yy, mouse_y), max(xx, mouse_x), max(yy, mouse_y))) && obj_controller.rect==true

//if (selected == true)
//{

     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 4, path_end(),false);
    }
    else
    {
    state=states.angry;
    }
//}
