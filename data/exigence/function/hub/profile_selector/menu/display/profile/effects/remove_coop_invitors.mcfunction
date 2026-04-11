# Removes coop invitors displays

## CONSTRAINTS
#   AS profile display to remove selectors of

## INPUT
#   WITH item.components."minecraft:custom_data" for idid

#====================================================================================================

#say (D3) Remove coop invitor

execute at @s run kill @e[type=text_display,tag=StatusDisplay,distance=..5]

# Remove display details
$execute at @s as @e[type=minecraft:item_display,tag=CoopInvitorDisplay,distance=..16,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/calls/private/remove_all_details with entity @s item.components."minecraft:custom_data"

# Remove display
$execute at @s run kill @e[type=minecraft:item_display,tag=CoopInvitorDisplay,distance=..16,nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}]

# If there was an outgoing invitation, cancel it
#execute unless entity @s[tag=Creating] as @p[distance=..16,tag=ProfileSelecting,tag=InvitesSent] run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_from/unhover
# If the head menu has been open at all, call function
execute unless entity @s[tag=Creating] if entity @s[tag=Inviting] run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_from/unhover

tag @s remove Inviting