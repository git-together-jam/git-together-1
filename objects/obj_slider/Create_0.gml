//Child-specific variables (MUST SET IN CHILD IF NOT DEFAULT)
sliderBar = spr_slider_bar;
sliderBarWidth = sprite_get_width(sliderBar);

sliderRange = sliderBarWidth - sprite_width;

number = 0;
numberMax = 100; //Minimum is always 0

//UI stuff
justEntered = false;
image_speed = 0;

xOriginal = x;
xOnEntry = x;
mouseX = 0;

canMoveSlider = false;

text = "OPTION: ";
audGroup = undefined;