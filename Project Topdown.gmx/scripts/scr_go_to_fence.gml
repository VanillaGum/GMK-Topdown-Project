fence = instance_find(obj_fence,irandom(instance_number(obj_fence)));
var mx = ((fence.x div 32)*32)-16;
var my = ((fence.y div 32)*32)-16;


     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 4, path_end(),false);
    }
else
{
state=states.normal;
}
