#say Echo I [+1 Echos on level 1]
function exigence:cards/announce_card

scoreboard players add echos.level_1 game.dungeon.echo 1
