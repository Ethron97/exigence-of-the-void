say Om nom nom (cookie)

# Pacify Ravager
data merge entity @s {NoAI:true}

# Kill cookie item
execute at @s run kill @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:cookie"}},sort=nearest,limit=1]

# Give eating score (ticks)
scoreboard players set @s game.ravager.eating_cookie 100

# Give ravager speed II for 30 seconds
effect give @s speed 30 1 false
