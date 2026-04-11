# Switch from pending invite back to player heads
#   Called from when the Invitor cancels the invite from the menu

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#====================================================================================================

#say (D3) Switch from pending to confirm

# Kill pending title
execute at @s run kill @n[type=text_display,tag=PendingTitle,distance=..5]

tag @s remove Pending

# Unload head selector menu
#   Hide and keep heads
$execute at @s at @n[type=item_display,scores={IDID=$(parent_idid)},tag=SlotDisplay,distance=..16] \
as @e[type=item_display,tag=PlayerHeadDisplay,distance=..5] run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/hide_head
#   Remove rest of the menu
$execute at @s as @n[type=item_display,scores={IDID=$(parent_idid)},tag=SlotDisplay,distance=..16] at @s run function exigence:hub/profile_selector/menu/display/profile/effects/remove_player_head_selectors_b

# Shift confirm down
execute at @s as @e[tag=ConfirmGroup,distance=..5] at @s run tp @s ~ ~-0.65 ~