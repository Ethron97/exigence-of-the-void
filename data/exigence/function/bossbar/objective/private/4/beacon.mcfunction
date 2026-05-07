# Update bossbar based on state of level 4 beacon

#====================================================================================================

execute if score beacon.4 game.story.beacons matches 0 if data storage exigence:dungeon_settings {ardor_flame_type:0} \
run bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:"",color:"gray"}]
execute if score beacon.4 game.story.beacons matches 0 if data storage exigence:dungeon_settings {ardor_flame_type:1} \
run bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" (0/3)",color:"gray"}]

execute if score beacon.4 game.story.beacons matches 1 run bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" 1/3",color:"gray"}]
execute if score beacon.4 game.story.beacons matches 2 run bossbar set exigence:objective name [{text:"Light the Beacon",color:"aqua"},{text:" 2/3",color:"gray"}]
