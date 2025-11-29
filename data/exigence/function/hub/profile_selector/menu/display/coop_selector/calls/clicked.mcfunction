# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#=============================================================================================================

say Clicked coop selector

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @p[distance=..16,tag=ProfileSelecting,tag=Interacting] ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

#=============================================================================================================
## SOLO

# Create profile
#   Automatically removes coop_selectors
$execute at @s[tag=Solo] as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/create_new with entity @s item.components."minecraft:custom_data"

#=============================================================================================================
## COOP

# Early return if not coop
execute unless entity @s[tag=Coop] run return 0

# Early return if coop is disabled
execute at @s unless score max_coop_players global_settings matches 1..3 run tellraw @p[distance=..16,tag=ProfileSelecting,tag=Interacting] {text:"Co-op profiles are disabled",color:"red"}
execute at @s unless score max_coop_players global_settings matches 1..3 run return fail

# Setup invite selector / player head menu
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/effects/summon_coop_invitors

$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] at @s \
run function exigence:hub/profile_selector/menu/display/profile/effects/summon_player_head_selectors

# Remove coop selectors
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
run function exigence:hub/profile_selector/menu/display/profile/effects/remove_coop_selectors with entity @s item.components."minecraft:custom_data"
