# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#=============================================================================================================

#say Clicked difficulty selecotr

# Copy scoreboard score to the parent
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run data modify entity @s item.components."minecraft:custom_data".difficulty set value $(difficulty)

# Setup coop selector
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/effects/summon_coop_selectors with entity @s item.components."minecraft:custom_data"

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @p[distance=..24,tag=Interacting] ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

# Remove difficulty selectors
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/effects/remove_difficulty_selectors with entity @s item.components."minecraft:custom_data"