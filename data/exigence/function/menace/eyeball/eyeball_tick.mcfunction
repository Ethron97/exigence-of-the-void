# eyeball traveling
execute as @e[type=minecraft:armor_stand,tag=Eyeball,tag=Traveling] run function exigence:menace/eyeball/eyeball_travel

# eyeball staring
execute at @a[tag=ActivePlayer,scores={dead=0}] as @e[distance=..20,type=minecraft:armor_stand,tag=Eyeball,tag=Staring] run function exigence:menace/eyeball/look_at_player

# Update nearby eyeballs
execute as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:menace/eyeball/update_nearby_eyeballs
