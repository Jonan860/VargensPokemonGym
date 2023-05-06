/// @description Insert description here
// You can write your code in this editor
enemyImageTransform = method(undefined,doNothing)
event_inherited()

Xtranslation=0
Ytranslation=sprite_height/4
randomYtranslation=32

instance_create_depth(opponent.x,
opponent.y-opponent.sprite_height/4+32*random(1),0,
obj_dreameater_bubble)
MaxBubbles=20
bubblesLeftToCreate=MaxBubbles
