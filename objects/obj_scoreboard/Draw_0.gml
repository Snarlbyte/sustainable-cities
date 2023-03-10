/// @description Health
// You can write your code in this editor
draw_set_font(Menu);
draw_healthbar(camera_get_view_x(view_camera[0]) + 50, camera_get_view_y(view_camera[0]) + 50, camera_get_view_x(view_camera[0]) + 600,  camera_get_view_y(view_camera[0]) + 125, health, c_grey, c_red, c_lime, 0, true, false);
draw_set_color(c_black);
draw_text(camera_get_view_x(view_camera[0]) + 50, camera_get_view_y(view_camera[0]) + 120, "Score: " + string(score))