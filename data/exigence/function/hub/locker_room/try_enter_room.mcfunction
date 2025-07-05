# Call as player trying to enter

#===============================================================================================================

# If player is in lockerroom, prevent enter and return
execute if entity @a[tag=Lockerroom] run tellraw @s [{"selector":"@p[tag=Lockerroom]",color:"red"},{text:" is using the lockeroom",color:"red"}]
execute if entity @a[tag=Lockerroom] run tp @s ~ ~ ~4
execute if entity @a[tag=Lockerroom] run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1
execute if entity @a[tag=Lockerroom] run return 1

# If player is in predungeon with co-op disabled, prevent enter and return
execute if entity @a[tag=Predungeon] unless entity @a[tag=Predungeon,scores={s_enableCoop=1}] run tellraw @s [{"selector":"@p[tag=Predungeon]",color:"red"},{text:" has coop disabled",color:"red"}]
execute if entity @a[tag=Predungeon] unless entity @a[tag=Predungeon,scores={s_enableCoop=1}] run tp @s ~ ~ ~4
execute if entity @a[tag=Predungeon] unless entity @a[tag=Predungeon,scores={s_enableCoop=1}] run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1
execute if entity @a[tag=Predungeon] unless entity @a[tag=Predungeon,scores={s_enableCoop=1}] run return 1

# If player is in predungeon with co-op enabled, enter and give coop tag
execute if entity @a[tag=Predungeon,scores={s_enableCoop=1}] run tag @s add Coop
execute if entity @a[tag=Predungeon,scores={s_enableCoop=1}] run function exigence:hub/locker_room/enter_room
execute if entity @a[tag=Predungeon,scores={s_enableCoop=1}] run return 1

# If no players in predungeon or lockeroom, enter as normal
execute unless entity @a[tag=Predungeon] unless entity @a[tag=Lockerroom] run function exigence:hub/locker_room/enter_room
