# Kill this players' facehugger

## CONSTRAINTS
#   AS player

#====================================================================================================

say Kill Predungeon interaction

scoreboard players operation #compare career.player_id = @s career.player_id

# Kill intearction with matching locker room AND player id
execute at @s as @e[distance=..128,type=interaction,tag=PredungeonInteraction] if score @s hub.entity.player_id = #compare career.player_id run kill @s
