# Handle ardor icons

#====================================================================================================

# ARDOR EMBERS
execute if score ardor_embers.1 game.story.beacons matches ..2 run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/ardor_ember_1",atlas:"items",color:"white"}]
execute if score ardor_embers.1 game.story.beacons matches ..1 run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/ardor_ember_1",atlas:"items",color:"white"}]
execute if score ardor_embers.1 game.story.beacons matches ..0 run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/ardor_ember_1",atlas:"items",color:"white"}]

# BEACONS
#   lit vs unlit
execute if score beacon.1 game.story.beacons matches ..2 run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/beacon_unlit",atlas:"items",color:"white"},{text:""}]
execute if score beacon.1 game.story.beacons matches 3.. run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/beacon_lit",atlas:"items",color:"white"},{text:""}]
