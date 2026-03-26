# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

#say clicked level chooser

# Increase cooldown score for player
scoreboard players add @p[distance=..16,tag=Interacting] hub.player.interaction_cooldown 20

# Effects
#execute at @s run playsound minecraft:entity.ender_eye.death ui @a ~ ~ ~ 1 1
#execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

# Cancel button
execute if entity @s[tag=Cancel] run return run function exigence:hub/predungeon/menu/display/level_chooser/calls/private/cancel
# Return if state is 2
execute if score #predungeon_state Temp matches 2 run return run tellraw @p[distance=..16,tag=Interacting] [{text:"Activate the door sensors to proceed!",color:"yellow"}]
#----------------------------------------------------------------------------------------------------

# REVALIDATE EVERYTHING?
#   The way we built the menu means we shouldn't need to ever re-call player/deck validate function

# If not unlocked, say "x Unknown level. Complete the required Advancements to unlock."
execute unless entity @s[tag=GoodUnlock] run return run execute as @p[distance=..16,tag=Interacting] \
run function exigence:hub/predungeon/menu/display/level_chooser/calls/private/not_unlocked
#----------------------------------------------------------------------------------------------------

# If too many cards, "x Too many cards in the deck!"
execute unless entity @s[tag=GoodCards] run return run execute as @p[distance=..16,tag=Interacting] \
run function exigence:hub/predungeon/menu/display/level_chooser/calls/private/too_many_cards
#----------------------------------------------------------------------------------------------------

## SWITCH TO PLAYER SENSORS
# Kill level choosers (except this one)
tag @s add NotMe
kill @e[distance=..5,type=#exigence:display,tag=PredungeonMenuDisplay,tag=!NotMe]

# Close all (open) slots
execute as @e[distance=..5,type=item_display,tag=Open] at @s unless entity @n[distance=..0.2,type=item_display,tag=NotMe] run function exigence:hub/predungeon/menu/display/warp_door/slot/close_slot
tag @s remove NotMe

# Load prebutton (schedule)
schedule function exigence:hub/predungeon/menu/display/player_sensors/schedule_load 20t