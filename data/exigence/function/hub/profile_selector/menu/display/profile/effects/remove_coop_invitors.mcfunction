# Removes coop invitors displays

## CONSTRAINTS
#   AS profile display to remove selectors of

## INPUT
#   WITH item.components."minecraft:custom_data" for idid

#=============================================================================================================

say Remove coop invitor

# Remove display details
$execute at @s as @e[distance=..16,type=minecraft:item_display,tag=CoopInvitorDisplay,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/remove_all_details with entity @s item.components."minecraft:custom_data"

# Remove display
$execute at @s run kill @e[distance=..16,type=minecraft:item_display,tag=CoopInvitorDisplay,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}]

# If there was an outgoing invitation, cancel it
execute as @p[distance=..16,tag=ProfileSelecting,scores={hub.player.sent_invite_id=1..}] run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_from_unhover
