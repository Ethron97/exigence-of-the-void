# Called when a player into a mirror area

## CONSTRAINTS
#   AS player
#   AT nearest active MirrorNode

#====================================================================================================

execute if score toggle.mirror debug matches 1 if score debug.level debug matches 3.. run say (D3) Start reflecting

# Store num to lookup reflection
scoreboard players operation #compare game.player.player_number = @s game.player.player_number

# Add indicator tag
tag @s add CurrentlyReflecting

# Try to move nearby shadow home; slowly widen search 
#   CASE: FROM HOME
execute if score @s game.player.player_number matches 1 as @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,tag=Reflection,scores={game.entity.player_number=1}] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 2 as @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,tag=Reflection,scores={game.entity.player_number=2}] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 3 as @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,tag=Reflection,scores={game.entity.player_number=3}] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 4 as @e[x=534,y=0,z=502,dx=0,dy=0,dz=3,tag=Reflection,scores={game.entity.player_number=4}] run return run tp @s ~ ~ ~
#   CASE: NEARBY
execute if score @s game.player.player_number matches 1 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=1},distance=..60] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 2 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=2},distance=..60] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 3 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=3},distance=..60] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 4 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=4},distance=..60] run return run tp @s ~ ~ ~
#   ELSE: ENTIRE DUNGEON
execute if score @s game.player.player_number matches 1 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=1}] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 2 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=2}] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 3 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=3}] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 4 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=4}] run return run tp @s ~ ~ ~
#   ELSE: LITERALLY ANYWHERE
execute if score @s game.player.player_number matches 1 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=1},distance=..1000] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 2 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=2},distance=..1000] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 3 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=3},distance=..1000] run return run tp @s ~ ~ ~
execute if score @s game.player.player_number matches 4 as @e[type=minecraft:mannequin,tag=Reflection,scores={game.entity.player_number=4},distance=..1000] run return run tp @s ~ ~ ~

# Switch should have ended
say Uhh reflection didn't tp to starting for the mirror node start currently?