switch(option)
{
//like
case "like":
if target!=noone
{
var mx = (target.x div 32)*32+16
var my = (target.y div 32)*32+16
amt = 32;

     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 4, path_end(),false);
    }
    else
    {
    if irandom(30)==2 && instance_number(obj_question_icon)<3
    {
    instance_create(x+irandom_range(-12,12),y-8,obj_question_icon);
    social_timer-=3;
    if irandom(3)==1{state=states.normal;}
    }
    }

    
if place_meeting(x,y,target) && irandom(5)==4
{

effect_create_above(ef_spark,x+random_range(-amt,amt),y+random_range(-amt,amt),0,make_color_hsv(irandom(255),255,255));

if irandom(8)==3
{
instance_create(x+irandom_range(-amt,amt),y+irandom_range(-amt,amt),obj_hear_icon);
}

if irandom(30)=5
{
my_health++;
}


if irandom(100)==50
{
target.level++;
level++;
wild_level--;
target.wild_level--;
instance_create(x+irandom_range(-16,16),y+irandom_range(-amt,amt),obj_lvlup_icon);
}
if irandom(200)==50
{
target.wild_level--;
wild_level--;
}

social_timer --;

}
}
else
{
target=noone;
act=false;
option="";
state=states.normal;
social_timer=0;
}


break;

//greet
case "greet":
if target!=noone
{
var mx = (target.x div 32)*32+16
var my = (target.y div 32)*32+16
amt = 32;

     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, my_speed, path_end(),false);
    }
        else
    {
    if irandom(30)==2 && instance_number(obj_question_icon)<3
    {
    instance_create(x+irandom_range(-12,12),y-8,obj_question_icon);
    social_timer-=3;
    if irandom(3)==1{state=states.normal;}
    }
    }

    
if place_meeting(x,y,target) && irandom(10)==4
{

effect_create_above(ef_spark,x+random_range(-amt,amt),y+random_range(-amt,amt),0,make_color_hsv(irandom(255),255,255));

if irandom(4)==3
{
instance_create(x+irandom_range(-amt,amt),y+irandom_range(-amt,amt),obj_bubble_icon);
}

if irandom(1000)==50
{
target.level++;
level++;
wild_level--;
target.wild_level--;
instance_create(x+irandom_range(-16,16),y+irandom_range(-amt,amt),obj_lvlup_icon);
}
if irandom(90)==50
{
target.wild_level--;
wild_level--;
}

social_timer --;

}
}
else
{
target=noone;
act=false;
option="";
state=states.normal;
social_timer=0;
}


break;

//nag
case "nag":
if target!=noone
{
var mx = (target.x div 32)*32+16
var my = (target.y div 32)*32+16
amt = 32;

     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, my_speed, path_end(),false);
    }
        else
    {
    if irandom(30)==2 && instance_number(obj_question_icon)<3
    {
    instance_create(x+irandom_range(-12,12),y-8,obj_question_icon);
    social_timer-=3;
    if irandom(3)==1{state=states.normal;}
    }
    }

    
if place_meeting(x,y,target) && irandom(10)==4
{

if irandom(40)=5
{
my_health--;
}

effect_create_above(ef_spark,x+random_range(-amt,amt),y+random_range(-amt,amt),0,make_color_hsv(irandom_range(0,40),irandom_range(90,150),irandom_range(80,160)));

if irandom(2)==2
{
instance_create(x+irandom_range(-amt,amt),y+irandom_range(-amt,amt),obj_flash_icon);
}

social_timer --;

}
}
else
{
target=noone;
act=false;
option="";
state=states.normal;
social_timer=0;
}


break;

//play
case "play":
if target!=noone
{
var mx = (target.x div 32)*32+16
var my = (target.y div 32)*32+16
amt = 32;

     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 4, path_end(),false);
    }
        else
    {
    if irandom(30)==2 && instance_number(obj_question_icon)<3
    {
    instance_create(x+irandom_range(-12,12),y-8,obj_question_icon);
    social_timer-=14;
    if irandom(3)==1{state=states.normal;}
    }
    }

    
if place_meeting(x,y,target) && irandom(5)==4
{

if irandom(60)=5
{
my_health++;
}

if irandom(3)==2
{
direction=irandom(360);
target.direction=irandom(360);
}

effect_create_above(ef_spark,x+random_range(-amt,amt),y+random_range(-amt,amt),0,make_color_hsv(irandom(255),255,255));

if irandom(8)==3
{
instance_create(x+irandom_range(-amt,amt),y+irandom_range(-amt,amt),obj_hear_icon);
}
else 
if irandom(5)==4
{
instance_create(x+irandom_range(-amt,amt),y+irandom_range(-amt,amt),obj_sun_icon);
}

if irandom(700)==50
{
target.level++;
level++;
wild_level--;
target.wild_level--;
instance_create(x+irandom_range(-16,16),y+irandom_range(-amt,amt),obj_lvlup_icon);
}
if irandom(300)==50
{
target.wild_level--;
wild_level--;
}

social_timer --;

}
}
else
{
target=noone;
act=false;
option="";
state=states.normal;
social_timer=0;
}


break;


//follow
case "follow":
if target!=noone
{
var mx = (target.x div 32)*32+16
var my = (target.y div 32)*32+16
amt = 32;

     if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
    {
        path_start(path, 2, path_end(),false);
    }
        else
    {
    if irandom(30)==2 && instance_number(obj_question_icon)<3
    {
    instance_create(x+irandom_range(-12,12),y-8,obj_question_icon);
    social_timer-=3;
    if irandom(3)==1{state=states.normal;}
    }
    }

    
if place_meeting(x,y,target) && irandom(2)==1
{

mx = x+irandom_range(-32,32);
my = y+irandom_range(-32,32);

}
}
else
{
target=noone;
act=false;
option="";
state=states.normal;
social_timer=0;
}



break;


}
