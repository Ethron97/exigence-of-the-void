# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#=============================================================================================================

say Clicked coop selecotr

# Create profile
#execute if entity @s[tag=Solo] run say Clicked solo
$execute at @s[tag=Solo] as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/create_new with entity @s item.components."minecraft:custom_data"

# Setup invite selector
#execute if entity @s[tag=Coop] run say Clicked Coop; TODO SETUP COOP INVITER
$execute at @s[tag=Coop] as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/effects/summon_coop_invitors with entity @s item.components."minecraft:custom_data"

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @p[distance=..16,tag=ProfileSelecting,tag=Interacting] ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

# Remove coop selectors
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/effects/remove_coop_selectors with entity @s item.components."minecraft:custom_data"
