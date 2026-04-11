# Switch from player head display to pending invite

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#====================================================================================================

#say (D3) Switch to pending

# Inform player:
#   (This info is repeated if you click the head)
#   1. Keep this menu open while you wait for a response
#   2. Close this menu or shift click the player head again to cancel the invitation
execute at @s as @p[tag=Interacting,distance=..16] run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/message/pending

tag @s remove DisplayingHead
tag @s add Pending

#   Then teleport it to be center frame
$execute at @s at @n[type=item_display,scores={IDID=$(parent_idid)},tag=SlotDisplay,distance=..16] run tp @s ~ ~1.2 ~

# Remove the rest of the head display / page flippers / slot backgrounds
tag @s add KeepDisplay
$execute at @s as @n[type=item_display,scores={IDID=$(parent_idid)},tag=SlotDisplay,distance=..16] at @s run function exigence:hub/profile_selector/menu/display/profile/effects/remove_player_head_selectors
tag @s remove KeepDisplay

# Summon displays related to Pending
#   Text below the head that says "Waiting for response"
execute at @s positioned ~ ~-0.3 ~ run function exigence:hub/profile_selector/menu/display/player_head/calls/private/show_pending_title

# TODO 
# TODO update the "invited players:" menu, pending
