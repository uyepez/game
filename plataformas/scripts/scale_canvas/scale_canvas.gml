function scale_canvas(argument0, argument1, argument2, argument3, argument4){
	
	
	/// @function                       scale_canvas(base width, base height, current width, current height, center);
/// @param {int}    base width      The base width for the game room
/// @param {int}    base height     The base height for the game room
/// @param {int}    current width   The current width of the game canvas
/// @param {int}    current height  The current height of the game canvas
/// @param {bool}   center          Set whether to center the game window on the canvas or not

var _bw = argument0;
var _bh = argument1;
var _cw = argument2;
var _ch = argument3;
var _center = argument4;
var _aspect = (_bw / _bh);

/*show_debug_message("cw");
show_debug_message(_cw);
show_debug_message("aspect");
show_debug_message(_aspect);
show_debug_message("ch");
show_debug_message(_ch);*/

if ((_cw / _aspect) > _ch)
    {
    window_set_size(round(_ch *_aspect), _ch);
	/*var _miWidt = _ch *_aspect;
	show_debug_message("height "+string(_miWidt)+"X"+string(_ch));*/
    }
else
    {
	
    window_set_size(_cw, round(_cw / _aspect));
	/*var _miWidt = _cw / _aspect;
	show_debug_message("width "+string(_cw)+"X"+string(_miWidt));*/
    }
if (_center)
    {
    window_center();
    }

surface_resize(application_surface, min(window_get_width(), _bw), min(window_get_height(), _bh));

/*if view_wport[0] != surface_get_width(application_surface) || view_hport[0] != surface_get_height(application_surface)
{
    surface_resize(application_surface, view_wport[0],view_hport[0]);
	//display_set_gui_size(view_wport[0],view_hport[0]);
}*/

//display_set_gui_size(min(window_get_width(), _bw), min(window_get_height(), _bh));//resize the drawing canvas

}