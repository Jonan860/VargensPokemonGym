var isAmbersTurn=global.turn==TURNS.Amber
var ownerowner=ifElseReturn(isAmbersTurn, global.amber,global.enemy)
owner=ownerowner.active_pokemon
move_towards_point(owner.x,owner.y-owner.sprite_height/4+32*random(1),8)