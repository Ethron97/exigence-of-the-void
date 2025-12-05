# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#=============================================================================================================

#say Clicked coop invitor

# Page flippers
$execute at @s[tag=PageFlipperDisplay,tag=Left] as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] at @s \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/page_left

$execute at @s[tag=PageFlipperDisplay,tag=Right] as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] at @s \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/page_right

# Confirm button
execute if entity @s[tag=Confirm] run say Clicked confirm
$execute at @s[tag=CanConfirm] as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] at @s \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/confirm_coop_creation with entity @s item.components."minecraft:custom_data"

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @a ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5
