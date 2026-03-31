# Switch from pending invite back to player heads
#   Called from when the Invitor cancels the invite from the menu

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#====================================================================================================

say Switch from confirm to head

# Load player head menu
$execute at @s as @n[type=item_display,scores={IDID=$(parent_idid)},tag=SlotDisplay,distance=..16] at @s \
run function exigence:hub/profile_selector/menu/display/profile/effects/summon_player_head_selectors

# Shift confirm up
execute at @s as @e[tag=ConfirmGroup,distance=..5] at @s run tp @s ~ ~0.65 ~