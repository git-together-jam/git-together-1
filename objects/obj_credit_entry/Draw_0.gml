if (traverse > 0 && opacity < 1) opacity += CREDIT_FADE_SPEED;
else if (traverse < 0) opacity -= CREDIT_FADE_SPEED;

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(opacity);

// Draw name.
draw_set_color(c_black);
draw_text(x - .5, y + .5, credit[0]);
draw_set_color(c_white);
draw_text(x, y, "- " + credit[0] + " -");

// Draw function.
draw_set_color(c_black);
draw_text(x, y + 12, credit[1]);

draw_set_alpha(1);

y -= CREDIT_SPEED;
traverse -= CREDIT_SPEED;