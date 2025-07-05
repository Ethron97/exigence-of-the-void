# Call as grown berry bush
# function exigence:botany/node/berry_bush_overgrow {min:0,max:0}

# Increase bush min and max by given amounts
$scoreboard players add @s[tag=BerryNode] minBerries $(min)
$scoreboard players add @s[tag=BerryNode] maxBerries $(max)

# Set to age 3
execute at @s[tag=BerryNode] run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=3]

# If min > 1 or max > 3, add particles
execute as @s[tag=BerryNode] if score @s minBerries matches 1.. run tag @s add Overgrown
execute as @s[tag=BerryNode] if score @s maxBerries matches 3.. run tag @s add Overgrown

# Place light block
execute at @s[tag=BerryNode] run setblock ~ ~1 ~ minecraft:light[level=13]

# Playsound
execute at @s[tag=BerryNode] run playsound minecraft:block.sweet_berry_bush.place neutral @a ~ ~ ~ 2 1
