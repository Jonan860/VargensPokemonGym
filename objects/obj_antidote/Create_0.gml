event_inherited()
name = "Antidote"

if(room = room_inventory and global.amber.antidote.count = 0){instance_destroy()}

struct = global.amber.antidote