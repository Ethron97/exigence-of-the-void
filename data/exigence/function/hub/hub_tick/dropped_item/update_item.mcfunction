# Update dropped item on the ground

## CONSTRAINTS
#   AS item

#====================================================================================================

data modify entity @s Owner set value [I;1,1,1,1]

execute if entity @s[tag=!CoopItem] at @s run function exigence:hub/hub_tick/dropped_item/solo_item
execute if entity @s[tag=CoopItem] at @s run function exigence:hub/hub_tick/dropped_item/coop_item