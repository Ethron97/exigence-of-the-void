# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

#say (D3) clicked level chooser

# Increase cooldown score for player
scoreboard players add @p[tag=Interacting,distance=..16] hub.player.interaction_cooldown 20

# Effects
#execute at @s run playsound minecraft:entity.ender_eye.death ui @a ~ ~ ~ 1 1
#execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

# Cancel button
execute if entity @s[tag=Cancel] run return run function exigence:hub/predungeon/menu/display/level_chooser/calls/private/cancel
# Return if state is 2
execute if score predungeon.door_state hub.room_misc matches 2 run return run tellraw @p[tag=Interacting,distance=..16] [{text:"Activate the door sensors to proceed!",color:"yellow"}]
#----------------------------------------------------------------------------------------------------

# REVALIDATE EVERYTHING?
#   The way we built the menu means we shouldn't need to ever re-call player/deck validate function

# If not unlocked, inform "x Unknown level. Complete the required Advancements to unlock."
execute unless entity @s[tag=GoodUnlock] run return run execute as @p[tag=Interacting,distance=..16] \
run function exigence:hub/predungeon/menu/display/level_chooser/calls/private/not_unlocked
#----------------------------------------------------------------------------------------------------

# If too many cards, "x Too many cards in the deck!"
execute unless entity @s[tag=GoodCards] run return run execute as @p[tag=Interacting,distance=..16] \
run function exigence:hub/predungeon/menu/display/level_chooser/calls/private/too_many_cards
#----------------------------------------------------------------------------------------------------

# Store selected difficulty
execute if entity @s[tag=Level1] run scoreboard players set game.difficulty game.dungeon.setup 1
execute if entity @s[tag=Level2] run scoreboard players set game.difficulty game.dungeon.setup 2
execute if entity @s[tag=Level3] run scoreboard players set game.difficulty game.dungeon.setup 3
execute if entity @s[tag=Level4] run scoreboard players set game.difficulty game.dungeon.setup 4
execute if entity @s[tag=Level5] run scoreboard players set game.difficulty game.dungeon.setup 5

## SWITCH TO PLAYER SENSORS
# Kill level choosers (except this one)
execute at @s run kill @e[type=#exigence:display,tag=PredungeonMenuDisplay,distance=0.5..5]

# Close all (open) slots (except this one)
tag @s add NotMe
execute as @e[type=minecraft:item_display,tag=Open,distance=..5] at @s unless entity @n[type=minecraft:item_display,tag=NotMe,distance=..0.2] run function exigence:hub/predungeon/menu/display/warp_door/slot/close_slot
tag @s remove NotMe

# Load prebutton (schedule)
schedule function exigence:hub/predungeon/menu/display/player_sensors/schedule_load 20t