//taking a dump ;-)

/////

if instance_exists(obj_toilet) && level > irandom_range(4,7) && wild_level<50
{

toilet = instance_nearest(x,y,obj_toilet);
distance = distance_to_object(toilet);
if distance < 640
{
scr_toilet();
}

if dump_timer<=0 
{
repeat(irandom_range(1,4))
{
instance_create(x+irandom_range(-8,8),y+irandom_range(-8,8),obj_dump);
}
path_end();
dump_timer=0;
need_to_go=false;
state=states.normal;
}
}
else
{
repeat(irandom_range(1,4))
{
instance_create(x+irandom_range(-8,8),y+irandom_range(-8,8),obj_dump);
}
dump_timer=0;
need_to_go=false;
state=states.normal;
}

if dump_timer>0{dump_timer--;}
