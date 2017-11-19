//Check If View Is Outside Room
if (view_xview[0] < 0) {
            view_xview[0] = 0;
}else {
    if(view_xview[0] > room_width) {
        view_xview[0] = room_width;
    }else {
        if(view_xview[0] > (room_width-view_wview[0])) {
        view_xview[0] = (room_width-view_wview[0]);
        }
    }
}
if (view_yview[0] < 0) {
    view_yview[0] = 0;
}else {
    if(view_yview[0] > room_height) {
        view_yview[0] = room_height;
    }else {
        if(view_yview[0] > (room_height-view_hview[0])) {
        view_yview[0] = (room_height-view_hview[0]);
        }
    }
}
