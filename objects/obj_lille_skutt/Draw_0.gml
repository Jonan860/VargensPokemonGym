switch(room){
case game: {if (active=1) {draw_self()}; break;}
case winner: {
draw_sprite(spr_crying_lille_skutt,0,x,y)
 break;
 }
case difficulty: {
draw_self()
; break;
}
}