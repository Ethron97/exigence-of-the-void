#say Crop Rotation [+3 Berry Bushes]
function exigence:cards/announce_card

scoreboard players add berry.queue game.dungeon.temp 3

# Ascend card, add ascend tag
tag @s add Ascend