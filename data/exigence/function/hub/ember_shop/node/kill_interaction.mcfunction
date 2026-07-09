# Kill this players' facehugger

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 4.. run say (D4 Hub) Kill Ember Shop interaction

scoreboard players operation #compare career.player_id = @s career.player_id

# Kill intearction with matching locker room AND player id
execute at @s as @e[type=minecraft:interaction,tag=EmberShopInteraction,distance=..128] if score @s hub.entity.player_id = #compare career.player_id run kill @s
