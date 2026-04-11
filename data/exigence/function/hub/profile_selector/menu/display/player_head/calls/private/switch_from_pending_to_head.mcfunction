# Switch from pending invite back to player heads
#   Called from when the Invitor cancels the invite from the menu

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#====================================================================================================

#say (D3) Switch from pending to head

# Kill pending title
execute at @s run kill @n[type=text_display,tag=PendingTitle,distance=..5]

tag @s remove Pending

# Load player head menu
$execute at @s as @n[type=item_display,scores={IDID=$(parent_idid)},tag=SlotDisplay,distance=..5] at @s \
run function exigence:hub/profile_selector/menu/display/profile/effects/summon_player_head_selectors
