# Called when ravager first starts eats cookie

## CONSTRAINTS
#   AS ravager

#====================================================================================================

#say (D3) Om nom nom (cookie)

# Pacify Ravager
data merge entity @s {NoAI:true}

# Kill cookie item
execute at @s run kill @n[type=minecraft:item,distance=..5,nbt={Item:{id:"minecraft:cookie"}}]

# Give eating score (ticks)
scoreboard players set @s game.ravager.eating_cookie 100

# Give ravager speed II for 30 seconds (random 1/3)
execute store result score @s Random run random value 1..3
execute if score @s Random matches 1 run effect give @s speed 30 1 false
