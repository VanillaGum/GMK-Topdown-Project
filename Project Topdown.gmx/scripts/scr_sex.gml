/// Create the path and move to the partner
partner = target
amt = 20;

var mx = (partner.x div 32)*32+16
var my = (partner.y div 32)*32+16

     if (mp_grid_path(global.grid, path, x, y, mx, my, 1)) && grown == true && (partner.my_sex != my_sex) && partner.grown==true
    {
        path_start(path, 4, path_end(),false);
    }
    else
    {
    if irandom(30)==2 && instance_number(obj_question_icon)<3
    {
    instance_create(x+irandom_range(-12,12),y-8,obj_question_icon);
    if irandom(8)==1{state=states.normal;}
    }
    }

    if partner!= noone && irandom(100)==22 && sex_timer <=0 && my_feeling==0
        {
if place_meeting(x,y,partner) 
{
effect_create_above(ef_spark,x+random_range(-amt,amt),y+random_range(-amt,amt),0,make_color_hsv(irandom(255),255,255));

if irandom(5)==3
{
instance_create(x+irandom_range(-amt,amt),y+irandom_range(-amt,amt),obj_hear_icon);
social_timer--;
}

if irandom(100)==3
{
//having sex & baby

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
wild_level=choose(my_mom.wild_level-irandom_range(5,25),my_dad.wild_level-irandom_range(5,25));
image_xscale=0.4;
image_yscale=0.4;
grown=false;
level=irandom_range(2,5);
}
state=states.normal;
target.state=states.normal;
}
}

}

if sex_timer>0
{
sex_timer-=0.01;
}
