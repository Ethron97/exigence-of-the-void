# Called from profile/../player_logged_out
#   Only if door state > 0. If 0, we don't care.

## CONSTRAINTS
#   AS room node (predungeon)

#====================================================================================================

say (D3) Player logged out [predungeon]

# If state is still in menu, just reset to prebutton
execute if score predungeon.door_state hub.room_misc matches 1..2 run return run execute \
positioned 0.5 209.0 104.5 as @n[type=minecraft:marker,tag=PredungeonMenuNode,distance=..10] at @s run function exigence:hub/predungeon/menu/display/back_to_prebutton

# If state is loading, unload room completely
execute if score predungeon.door_state hub.room_misc matches 3 run tellraw @a[tag=Predungeon] [{text:"✖ A player logged out during loading!",color:"red"}]
execute if score predungeon.door_state hub.room_misc matches 3 run scoreboard players set predungeon.cancel_load hub.room_misc 1
execute if score predungeon.door_state hub.room_misc matches 3 run function exigence:room/predungeon/force_unload