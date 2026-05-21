say [Automatically pick up all items within 32 blocks]

# Reset count score
scoreboard players set @a[scores={dead=0},tag=ActivePlayer] Temp 0

# As each item, pickup by nearest living player within 32 blocks
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,tag=!Pickup] at @s at @p[scores={dead=0},tag=ActivePlayer,distance=..32] run function exigence:cards/helpful_spirits/private/item

# Tellraw
execute as @a[scores={dead=0},tag=ActivePlayer] run function exigence:cards/helpful_spirits/private/tellraw