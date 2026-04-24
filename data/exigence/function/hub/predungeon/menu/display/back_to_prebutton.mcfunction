# Returns to the prebutton screen
# Called from:
#   Cancel button

## CONSTRAINTS
#   AT predungeon node

#====================================================================================================
# This shouldn't bec alled if state is currently 0
execute if score predungeon.door_state hub.room_misc matches 0 run return run tellraw @a {text:"? State is already 0, why run back_to_prebutton?",color:yellow}
#----------------------------------------------------------------------------------------------------

scoreboard players set predungeon.door_state hub.room_misc 0

# Kill whatever current menu exists
kill @e[type=#exigence:display,tag=FromHover,distance=..5]
kill @e[type=#exigence:display,tag=PredungeonMenuDisplay,distance=..5]
kill @e[type=#exigence:display,tag=PlayerSensorPupil,distance=..5]

# Close all slots
execute as @e[type=minecraft:item_display,tag=Open,distance=..5] run function exigence:hub/predungeon/menu/display/warp_door/slot/close_slot

# Load prebutton (schedule)
schedule function exigence:hub/predungeon/menu/display/pre_button/schedule_load 20t

#====================================================================================================
## LOAD CHESTS
scoreboard players operation #compare profile.player.profile_id = @s hub.entity.profile_id
# Get data
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.profile_id = #compare profile.player.profile_id \
run function exigence:profile/profile_node/load/try_chest_to_data

execute unless score #data_loaded Temp matches 1 run tellraw @s [{text:"[CHESTS NOT LOADED] ",bold:true,color:"yellow"},{text:"Another player has already loaded the chests for this co-op profile.",color:"gray",italic:true,bold:false}]

# Fill chests (if data was loaded successfully)
execute if score #data_loaded Temp matches 1 positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/load/load_chests