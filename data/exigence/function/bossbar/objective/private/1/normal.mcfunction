
execute if score 1.got_key game.level_doors matches 0 run bossbar set exigence:objective name [{text:"Find the Mirror Mines key",color:"yellow"}]

execute if score 1.got_key game.level_doors matches 1 run bossbar set exigence:objective name [{text:"Open the Mirror Mines door",color:"yellow"}]

execute if score 1.got_key game.level_doors matches 1 if entity @e[type=armor_stand,tag=DoorNode,tag=MirrorMines,tag=Open] run \
bossbar set exigence:objective name [{text:"Ascend to the Mirror Mines",color:"yellow"}]
