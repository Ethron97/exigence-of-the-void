# Handle ardor icons

#====================================================================================================

# ARDOR EMBERS
#   Once player reaches this level
execute if score 3.reached game.level_doors matches 1 if score ardor_embers.3 game.story.beacons matches ..2 run data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/ardor_ember_3",atlas:"items",color:"white"}]
execute if score 3.reached game.level_doors matches 1 if score ardor_embers.3 game.story.beacons matches ..1 run data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/ardor_ember_3",atlas:"items",color:"white"}]
execute if score 3.reached game.level_doors matches 1 if score ardor_embers.3 game.story.beacons matches ..0 run data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/ardor_ember_3",atlas:"items",color:"white"}]

# BEACONS
#   lit vs unlit
execute if score beacon.3 game.story.beacons matches ..2 run data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/beacon_unlit",atlas:"items",color:"white"},{text:""}]
execute if score beacon.3 game.story.beacons matches 3.. run data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/beacon_lit",atlas:"items",color:"white"},{text:""}]
