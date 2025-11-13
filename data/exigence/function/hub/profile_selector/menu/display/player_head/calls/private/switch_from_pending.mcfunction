# Switch from pending invite back to player heads
#   Called from when the Invitor cancels the invite from the menu

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#=============================================================================================================

say Switch from pending

# Kill pending title
execute at @s run kill @n[distance=..5,type=text_display,tag=PendingTitle]

# Load player head menu
$execute at @s as @n[distance=..5,type=item_display,tag=SlotDisplay,scores={IDID=$(parent_idid)}] at @s \
run function exigence:hub/profile_selector/menu/display/profile/effects/summon_player_head_selectors
