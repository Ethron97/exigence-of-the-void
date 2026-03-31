# eyeball traveling
execute as @e[type=minecraft:armor_stand,tag=Eyeball,tag=Traveling] run function exigence:menace/eyeball/eyeball_travel

# eyeball staring
execute at @a[scores={dead=0},tag=ActivePlayer] as @e[type=minecraft:armor_stand,tag=Eyeball,tag=Staring,distance=..20] run function exigence:menace/eyeball/look_at_player

# Update nearby eyeballs
execute as @a[scores={dead=0},tag=ActivePlayer] run function exigence:menace/eyeball/update_nearby_eyeballs
