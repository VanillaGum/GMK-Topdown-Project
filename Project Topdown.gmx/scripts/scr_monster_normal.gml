//facing the path direction
image_angle = direction;

//need to take a dump

if my_hunger<30 && (irandom(13000)) == 666
{
state=states.need_to_go;
need_to_go=true;
dump_timer=room_speed*(level/5);
}

//randomly going somewhere
wild_rand=irandom(300-wild_level);

if (my_hunger>65) && (irandom((wild_rand)+(floor(my_hunger/10))+1)==5) && (instance_exists(obj_food)) && (dump_timer<=0)
{
scr_move_to_food();
}
else if irandom((level*4)+(my_hunger/10)+1)==5
{
scr_run_free();
}

///health and mood

//hunger & health
if my_hunger<100 && !place_meeting(x,y,obj_food)
{
my_hunger+=level/5000; //5k
}
if my_hunger>=100
{
my_health-=level/5000;
}


//getting sick
if instance_number(obj_dump) > 8 && irandom(15000) < 10 && distance_to_object(instance_nearest(x,y,obj_dump))<64 //10k
{
my_health-=level/10;
sick = true;
}
else
{
sick=false;
}

//dead
if my_health<=0
{
path_end();
instance_change(obj_char01dead,0);
}

//assigning feelings #demfeels
surrounded = collision_line(x,y,x,y-64,obj_wall,0,0) && collision_line(x,y,x,y+64,obj_wall,0,0)  && collision_line(x,y,x-64,y,obj_wall,0,0) && collision_line(x,y,x+64,y,obj_wall,0,0) 

if (my_health<80) || (sick) || (surrounded) || (my_hunger > 50) || (instance_number(obj_food)+instance_number(obj_flower)<=3)  || (!instance_exists(obj_toilet))
{
my_feeling=1;
if irandom(15)==1
{
state=states.angry;
}
}
else
{
my_feeling=0;
}

//wildernis things
if wild_level>1 && (irandom(500-wild_level)==10) && escape == 0
{
escape=room_speed*wild_level/50;
scr_go_to_border();
}
if escape>0
{
escape--;
}
if escape>0 && ((x<32) || (x>room_width-32) || (y<32) || (y>room_height-32))
{
instance_destroy();
}
