/// @description Beat the level

won = true;

playerSpriteX = other.x;
playerSpriteY = other.y;

playerSpriteIndex = other.sprite_index;
playerImageIndex = other.image_index;

instance_destroy(other);