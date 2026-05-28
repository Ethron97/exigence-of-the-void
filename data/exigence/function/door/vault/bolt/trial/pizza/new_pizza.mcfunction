# Summons line of lightning that cuts across the chamber

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) New pizza

# New Pizza ID
scoreboard players add #next trial.object.pizza_id 1

# Convert pizza id to height offset
scoreboard players operation #temp2 Temp = #next trial.object.pizza_id
scoreboard players operation #temp2 Temp %= 10 number
# Value between 0 and 9 -> 0.00..0.09
execute store result storage exigence:trial height double 0.01 run scoreboard players get #temp2 Temp

# Random rotation 20..340, to prevent clumping
execute store result storage exigence:trial RotA int 1 run random value 20..340

# Random second rotation -30..30
execute store result storage exigence:trial RotB int 1 run random value -30..30

# Teleport pizza marker 1
# Call macro
execute as @e[type=minecraft:marker,tag=BoltThrower,distance=..1] run function exigence:door/vault/bolt/trial/pizza/move_marker_a with storage exigence:trial

# That macro calls iteration
# Teleport pizza marker 2 at end
#   Marker B is purely for getting the distance for the line length
execute at @e[type=minecraft:marker,tag=PizzaA,distance=..24] run function exigence:door/vault/bolt/trial/pizza/move_marker_b

# Summon line
execute as @e[type=minecraft:marker,tag=PizzaA,distance=..24] run function exigence:door/vault/bolt/trial/pizza/line/create

# At marker A, summon new Pizza marker and initialize score
#   must be after summon line to copy line length
execute as @e[type=minecraft:marker,tag=PizzaA,distance=..24] at @s run function exigence:door/vault/bolt/trial/pizza/lightning/summon with entity @s

# Playsound
execute at @e[type=minecraft:marker,tag=PizzaA,distance=..24] run playsound minecraft:entity.guardian.hurt ambient @a[tag=TrialSounds_Bolt] ^ ^ ^5 1 1.3
