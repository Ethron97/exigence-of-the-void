# Switch from pending invite back to player heads
#   Called from when the Invitor cancels the invite from the menu

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#=============================================================================================================

say Switch from pending to confirm

# Kill pending title
execute at @s run kill @n[distance=..5,type=text_display,tag=PendingTitle]

tag @s remove Pending

# Unload head selector menu
#   Hide and keep heads
$execute at @s at @n[distance=..16,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] \
as @e[distance=..5,type=item_display,tag=PlayerHeadDisplay] run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/hide_head
#   Remove rest of the menu
$execute at @s as @n[distance=..16,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] at @s run function exigence:hub/profile_selector/menu/display/profile/effects/remove_player_head_selectors_b

# Shift confirm down
execute at @s as @e[distance=..5,tag=ConfirmGroup] at @s run tp @s ~ ~-0.65 ~