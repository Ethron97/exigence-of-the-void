execute if entity @s[tag=Traveling] as @s at @s run tp @s ^ ^ ^0.3 ~ ~0.4
execute if entity @s[tag=Traveling] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

# Bounce the eyeball if it hits a non-full block so as to not be weird. I'm sure this exception list will grow
execute as @s at @s if entity @s[tag=Traveling] if block ~ ~0.7 ~ minecraft:snow run tp @s ~ ~1 ~
execute as @s at @s if entity @s[tag=Traveling] if block ~ ~0.7 ~ #minecraft:slabs run tp @s ~ ~1 ~

# If hit wall, hit wall function call wall.
execute as @s at @s if entity @s[tag=Traveling] unless block ~ ~0.7 ~ #exigence:eyeball run function exigence:menace/eyeball/hit_wall

