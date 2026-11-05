# Handle player entering the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Entering predungeon (COOP)

tellraw @s [{text:">> ",color:"green"},{text:"Entered ",color:"gray"},{text:"Predungeon",color:"dark_purple"}]

tag @s add Predungeon
team join Predungeon @s

# Entered via door
tp @s[tag=!Following] ~ ~3 ~65.5
# Entered via following
tp @s[tag=Following] 0.5 209.0 101.5 0 0
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Store ids
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
 
# Summon interaction
execute at @s run function exigence:hub/predungeon/node/setup_interaction

# Initialize item limit upon entering
function exigence:player/utility/calculate_item_limit

tag @s remove Following

scoreboard players reset @s FollowToPredungeon

#====================================================================================================
# Assign room ids
execute in exigence:hub run scoreboard players operation #compare hub.entity.room_id \
= @n[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=2},tag=RoomNode] hub.room.room_id
#   PLAYER
scoreboard players operation @s hub.player.room_id = #compare hub.entity.room_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #compare hub.entity.room_id
