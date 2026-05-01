
execute if score 3.got_key game.level_doors matches 0 run bossbar set exigence:objective name [{text:"Find the Ardor's Bane key",color:"yellow"}]

execute if score 3.got_key game.level_doors matches 1 run bossbar set exigence:objective name [{text:"Open the Ardor's Bane door",color:"yellow"}]

execute if score 3.got_key game.level_doors matches 1 if score 3.opened game.level_doors matches 1 run \
bossbar set exigence:objective name [{text:"Ascend to Ardor's Bane",color:"yellow"}]
