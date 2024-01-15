draw_set_valign(fa_middle)
draw_set_halign(fa_center)
/// Draw Event
draw_set_font(font0);
draw_text_transformed_color(x , y, text, width / string_width(text), height / string_height(text), 0, color,
 color, color, color, 1)
draw_set_font(-1)
resetDrawAlign()