//sleep
if social_timer>-1
{

if irandom(40)==5 && instance_number(obj_sleep_icon)<4
{
instance_create(x+irandom_range(-16,16),y-8,obj_sleep_icon);
}
if irandom(2000)==100
{
social_timer--;
}
}
else
{
state=states.normal;
}
