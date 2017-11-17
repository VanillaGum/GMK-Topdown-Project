//facing the path direction
image_angle = direction;

//selecting multiple chars
var xx = obj_controller.old_x;
var yy = obj_controller.old_y;
var rect1 = (point_in_rectangle(x, y, min(xx, mouse_x), min(yy, mouse_y), max(xx, mouse_x), max(yy, mouse_y))) && obj_controller.rect==true

   if (rect1) && mouse_check_button_released(mb_left)
   {
   selected=true;
   path_end();
   }
   
//colliding
if place_meeting(round(x),round(y),obj_char01) 
{


move_contact_all(direction,12);

}

   
//depth
if (selected) {depth=-999999} else {depth=0}

//randomly going somewhere
if (my_hunger>65) && (irandom((level*4)+(my_hunger/10)+1)==5) && (instance_exists(obj_food)) && (dump_timer<=0)
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

//taking a dump ;-)
if my_hunger<30 && irandom(2000) == 432
{

if instance_exists(obj_toilet)
{
need_to_go = true;
dump_timer=room_speed*level/4;
}
else
{

repeat(irandom_range(1,4))
{
instance_create(x+irandom_range(-8,8),y+irandom_range(-8,8),obj_dump);
}

}

}

if dump_timer >0 {dump_timer--; scr_toilet();}
if dump_timer <= 0 && (need_to_go) 
{
repeat(irandom_range(1,4))
{
instance_create(x+irandom_range(-8,8),y+irandom_range(-8,8),obj_dump);
}
dump_timer=0;
need_to_go=false;
}

//getting sick
if instance_number(obj_dump) > 8 && irandom(10000) < 20 && distance_to_object(instance_nearest(x,y,obj_dump))<64 //10k
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

if (my_health<80) || (sick) || surrounded || my_hunger > 50
{
my_feeling=1;
}
else
{
my_feeling=0;
}

//assigning name
if (global.text_input==true) && (keyboard_check_pressed(vk_enter)) && (selected)
{
my_name = string(keyboard_string);
keyboard_string="";
global.text_input=false;
}

//having sex & baby
partner=instance_place(round(x),round(y),obj_char01)
if partner!= noone && partner.my_sex==1 && my_sex==0 && irandom(100)==22 && grown == true && sex_timer <=0 && my_feeling==0
{
sex_timer=100;
effect_create_above(ef_firework,x,y,1,c_fuchsia);

global.mom=id;
global.dad=partner.id
baby=instance_create(x,y,obj_char01);
with(baby)
{
my_mom=global.mom;
my_dad=global.dad;
global.mom=noone;
global.dad=noone;
my_parents=my_mom.my_name+" x "+my_dad.my_name;
sprite_index=choose(my_mom.sprite_index,my_dad.sprite_index);
image_blend=merge_colour(my_mom.image_blend,my_dad.image_blend,random_range(0.3,0.7));
image_xscale=0.4;
image_yscale=0.4;
grown=false;
level=irandom_range(2,5);
}
exit;
}
if sex_timer>0
{
sex_timer-=0.01;
}


//growing
if image_xscale <1 && image_yscale <1
{
image_xscale+=0.00001;
image_yscale+=0.00001;
}
else
{grown=true;}
if level<25
{if irandom(999)==3{level++;}}

//cheats
switch(my_name)
{
case "240":
room_speed=240;
break;

case "60":
room_speed=60;
break;

}
