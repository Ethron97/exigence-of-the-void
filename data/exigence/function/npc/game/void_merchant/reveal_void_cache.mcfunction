# Called by void shop load
#   If there is a void cache that has not been revealed yet

## CONSTRAINTS
#   AS/AT Enderman

#====================================================================================================

playsound minecraft:entity.villager.work_cartographer ambient @a ~ ~ ~ 1 1

tellraw @a[distance=..10] [{text:"[Void Merchant]",color:"dark_purple"},{text:" Looking for that lost shipment? It's all yours...",color:"gray"}]

execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:armor_stand,tag=VoidCache,tag=Waypoint] run function exigence:ember/node/void_cache/activate_waypoint

scoreboard players set void_cache.revealed game.dungeon 1