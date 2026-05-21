# Trigger card play

#====================================================================================================

# Can't copy logic from helpful_spirits, because then the first player would just get every single item.

# Reset count score
scoreboard players set @a[scores={dead=0},tag=ActivePlayer] Temp 0

# As each glowing item, pickup by nearest living player
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item,scores={game.entity.glow_remaining=1..},tag=!Pickup] at @s at @p[scores={dead=0},tag=ActivePlayer] run function exigence:cards/lightdrawn_spirits/private/item

# Tellraw
execute as @a[scores={dead=0},tag=ActivePlayer] run function exigence:cards/lightdrawn_spirits/private/tellraw