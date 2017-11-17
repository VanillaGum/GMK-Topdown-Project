if instance_exists(obj_fence) && (find_alarm == 0)
{
scr_go_to_fence();
find_alarm=room_speed*3;
}
else
{
state=states.normal;
}

if find_alarm>0
{find_alarm--;}

if irandom(100)=20&&instance_number(obj_flash_icon)<3{instance_create(x+irandom_range(-12,12),y-8,obj_flash_icon);}
