# Called when a player moves away from a mirror (or dies)

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.mirror debug matches 1 if score debug.level debug matches 3.. run say (D3 Mirror) Stop reflecting

# Store num to lookup reflection
scoreboard players operation #compare game.player.player_number = @s game.player.player_number

# Remove indicator tag
tag @s remove CurrentlyReflecting

# Try to move nearby shadow home; slowly widen search 
#   CASE: ALREADY HOME
execute if score @s game.player.player_number matches 1 if entity @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,tag=Reflection,scores={game.entity.player_number=1}] run return 0
execute if score @s game.player.player_number matches 2 if entity @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,tag=Reflection,scores={game.entity.player_number=2}] run return 0
execute if score @s game.player.player_number matches 3 if entity @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,tag=Reflection,scores={game.entity.player_number=3}] run return 0
execute if score @s game.player.player_number matches 4 if entity @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,tag=Reflection,scores={game.entity.player_number=4}] run return 0
#   CASE: NEARBY
execute if score @s game.player.player_number matches 1 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=1},distance=..60] run return run function exigence:mirror/reflection/private/tp_reflection_home
execute if score @s game.player.player_number matches 2 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=2},distance=..60] run return run function exigence:mirror/reflection/private/tp_reflection_home
execute if score @s game.player.player_number matches 3 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=3},distance=..60] run return run function exigence:mirror/reflection/private/tp_reflection_home
execute if score @s game.player.player_number matches 4 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=4},distance=..60] run return run function exigence:mirror/reflection/private/tp_reflection_home
#   ELSE: ENTIRE DUNGEON
execute if score @s game.player.player_number matches 1 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=1}] run return run function exigence:mirror/reflection/private/tp_reflection_home
execute if score @s game.player.player_number matches 2 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=2}] run return run function exigence:mirror/reflection/private/tp_reflection_home
execute if score @s game.player.player_number matches 3 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=3}] run return run function exigence:mirror/reflection/private/tp_reflection_home
execute if score @s game.player.player_number matches 4 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=4}] run return run function exigence:mirror/reflection/private/tp_reflection_home
#   ELSE: LITERALLY ANYWHERE
execute if score @s game.player.player_number matches 1 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=1},distance=..1000] run return run function exigence:mirror/reflection/private/tp_reflection_home
execute if score @s game.player.player_number matches 2 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=2},distance=..1000] run return run function exigence:mirror/reflection/private/tp_reflection_home
execute if score @s game.player.player_number matches 3 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=3},distance=..1000] run return run function exigence:mirror/reflection/private/tp_reflection_home
execute if score @s game.player.player_number matches 4 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=4},distance=..1000] run return run function exigence:mirror/reflection/private/tp_reflection_home

# Switch should have ended
say Uhh reflection didn't to home?