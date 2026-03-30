# Returns to the prebutton screen
# Called from:
#   Cancel button

## CONSTRAINTS
#   AT predungeon node

#====================================================================================================
# This shouldn't bec alled if state is currently 0
execute if score #predungeon_state Temp matches 0 run say State is 0, why run back_to_prebutton?
execute if score #predungeon_state Temp matches 0 run return fail
#----------------------------------------------------------------------------------------------------

scoreboard players set #predungeon_state Temp 0

# Kill whatever current menu exists
kill @e[distance=..5,type=#exigence:display,tag=FromHover]
kill @e[distance=..5,type=#exigence:display,tag=PredungeonMenuDisplay]
kill @e[distance=..5,type=#exigence:display,tag=PlayerSensorPupil]

# Close all slots
execute as @e[distance=..5,type=item_display,tag=Open] run function exigence:hub/predungeon/menu/display/warp_door/slot/close_slot

# Load prebutton (schedule)
schedule function exigence:hub/predungeon/menu/display/pre_button/schedule_load 20t

#====================================================================================================
## LOAD CHESTS
scoreboard players operation #compare profile.player.profile_id = @s hub.entity.profile_id
# Get data
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..140,type=marker,tag=ProfileNode] if score @s profile.node.profile_id = #compare profile.player.profile_id \
run function exigence:profile/profile_node/load/try_chest_to_data

execute unless score #data_loaded Temp matches 1 run tellraw @s [{text:"[CHESTS NOT LOADED] ",bold:true,color:"yellow"},{text:"Another player has already loaded the chests for this co-op profile.",color:"gray",italic:true,bold:false}]

# Fill chests (if data was loaded successfully)
execute if score #data_loaded Temp matches 1 positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/load/load_chests