/// Main Menu Button Collision Check

image_speed = 0;
if(position_meeting(obj_MainMenu_Cursor.x, obj_MainMenu_Cursor.y, self)){
    image_index = 1;
}else{
    image_index = 0;
}