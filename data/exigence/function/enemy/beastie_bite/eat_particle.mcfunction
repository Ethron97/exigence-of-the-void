## CONSTRAINTS
#   AS/AT ravager

#====================================================================================================

## SWITCH
execute if score @s game.ravager.eating_cookie matches 90..99 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.25 4
execute if score @s game.ravager.eating_cookie matches 80..89 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.23 4
execute if score @s game.ravager.eating_cookie matches 70..79 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.21 4
execute if score @s game.ravager.eating_cookie matches 60..69 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.19 4
execute if score @s game.ravager.eating_cookie matches 50..59 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.17 4
execute if score @s game.ravager.eating_cookie matches 40..49 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.15 4
execute if score @s game.ravager.eating_cookie matches 30..39 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.14 3
execute if score @s game.ravager.eating_cookie matches 20..29 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.13 3
execute if score @s game.ravager.eating_cookie matches 10..19 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.12 2
execute if score @s game.ravager.eating_cookie matches 1..9 run return run particle minecraft:item{item:{id:"minecraft:cookie"}} ^ ^1 ^1 0.1 0.1 0.1 0.1 2
