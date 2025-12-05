
execute if score 3.got_key game.level_doors matches 0 run bossbar set exigence:objective name [{text:"Find the Ardor's Bane key",color:"yellow"}]

execute if score 3.got_key game.level_doors matches 1 run bossbar set exigence:objective name [{text:"Open the Ardor's Bane door",color:"yellow"}]

execute if score 3.got_key game.level_doors matches 1 if entity @e[type=armor_stand,tag=DoorNode,tag=ArdorsBane,tag=Open] run \
bossbar set exigence:objective name [{text:"Ascend to Ardor's Bane",color:"yellow"}]
