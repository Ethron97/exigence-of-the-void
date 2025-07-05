# Call as ravager with EatingCookie score
scoreboard players remove @s EatingCookie 1

# Animate particles
execute if score @s EatingCookie matches 90..99 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.25 4
execute if score @s EatingCookie matches 80..89 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.23 4
execute if score @s EatingCookie matches 70..79 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.21 4
execute if score @s EatingCookie matches 60..69 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.19 4
execute if score @s EatingCookie matches 50..59 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.17 4
execute if score @s EatingCookie matches 40..49 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.15 4
execute if score @s EatingCookie matches 30..39 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.14 3
execute if score @s EatingCookie matches 20..29 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.13 3
execute if score @s EatingCookie matches 10..19 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.12 2
execute if score @s EatingCookie matches 1..9 run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.1 2

# Sound
scoreboard players operation #interval EatingCookie = @s EatingCookie
scoreboard players operation #interval EatingCookie %= 4 number
execute if score #interval EatingCookie matches 0 if score @s EatingCookie matches 81.. run playsound entity.generic.eat hostile @a ~ ~ ~ 1 1
execute if score #interval EatingCookie matches 0 if score @s EatingCookie matches 61..80 run playsound entity.generic.eat hostile @a ~ ~ ~ 1 0.9
execute if score #interval EatingCookie matches 0 if score @s EatingCookie matches 41..60 run playsound entity.generic.eat hostile @a ~ ~ ~ 1 0.8
execute if score #interval EatingCookie matches 0 if score @s EatingCookie matches 21..40 run playsound entity.generic.eat hostile @a ~ ~ ~ 1 0.7
execute if score #interval EatingCookie matches 0 if score @s EatingCookie matches ..20 run playsound entity.generic.eat hostile @a ~ ~ ~ 1 0.6