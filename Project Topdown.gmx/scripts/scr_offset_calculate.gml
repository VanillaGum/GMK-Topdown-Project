//Get Amt 
var amt = argument0;
//Get xdiff and ydiff of reaching Maximum or Min Zoom
var xdiff = argument1;
var ydiff = argument2;
//To Add To View Or Minus
var addtype = argument3;


//Calculate offset of the zoom to set the location of camera
if (xdiff != 0) {
var offsetx = abs((view_wview[0]*amt)-view_wview[0]);
var offsety = abs((view_hview[0]*amt)-view_hview[0]);
} else {
var offsetx = abs((view_wview[0]*amt)-view_wview[0]);
var offsety = abs((view_hview[0]*amt)-view_hview[0]);
}
//Zoom off middle of screen
if (addtype == 1) {
view_xview[0] += offsetx/2;
view_yview[0] += offsety/2;
}else {
view_xview[0] -= offsetx/2;
view_yview[0] -= offsety/2;
}
scr_zoom_check();

