# Kill this players' facehugger

## CONSTRAINTS
#   AS player

#====================================================================================================

#say (D3) Kill Predungeon interaction

scoreboard players operation #compare career.player_id = @s career.player_id

# Kill intearction with matching locker room AND player id
execute at @s as @e[type=interaction,tag=PredungeonInteraction,distance=..128] if score @s hub.entity.player_id = #compare career.player_id run kill @s
