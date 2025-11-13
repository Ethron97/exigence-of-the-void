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

# Copy picked item
#$data modify entity @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] item.id set from entity @s item.id
# TODO also the custom model data?

# Mark the title of this one to be kept around
$execute at @s as @n[distance=..5,type=text_display,tag=DifficultyTitle,scores={IDID=$(idid)}] run tag @s add KeepDisplay
$execute at @s as @n[distance=..5,type=text_display,tag=DifficultyTitle,scores={IDID=$(idid)}] run data modify entity @s text set value $(reminder)
$execute at @s as @n[distance=..5,type=text_display,tag=DifficultyTitle,scores={IDID=$(idid)}] \
run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}

# Move to fixed location
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] at @s \
run tp @n[distance=..5,type=text_display,tag=DifficultyTitle,scores={IDID=$(idid)}] ~ ~0.72 ~


# Setup coop selector
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/effects/summon_coop_selectors with entity @s item.components."minecraft:custom_data"

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @p[distance=..16,tag=ProfileSelecting,tag=Interacting] ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

# Remove difficulty selectors
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/effects/remove_difficulty_selectors with entity @s item.components."minecraft:custom_data"