# Summons line of lightning that cuts across the chamber

#========================================================================================================

# DEBUG
#say New pizza

# New Pizza ID
scoreboard players add #next PizzaID 1

# Random rotation 20..340, to prevent clumping
execute store result storage exigence:trial RotA int 1 run random value 20..340

# Random second rotation -30..30
execute store result storage exigence:trial RotB int 1 run random value -30..30

# Teleport pizza marker 1
# Call macro
execute as @e[type=minecraft:marker,tag=BoltThrower] run function exigence:door/vault/bolt/trial/pizza/move_marker_a with storage exigence:trial

# That macro calls iteration
# Teleport pizza marker 2 at end
#   Marker B is purely for getting the distance for the line length
execute at @e[type=minecraft:marker,tag=PizzaA] run function exigence:door/vault/bolt/trial/pizza/move_marker_b

# Summon line
execute as @e[type=minecraft:marker,tag=PizzaA] run function exigence:door/vault/bolt/trial/pizza/line/create

# At marker A, summon new Pizza marker and initialize score
#   must be after summon line to copy line length
execute as @e[type=minecraft:marker,tag=PizzaA] at @s run function exigence:door/vault/bolt/trial/pizza/lightning/summon with entity @s

# Playsound
execute at @e[type=minecraft:marker,tag=PizzaA] run playsound minecraft:entity.guardian.hurt ambient @a ^ ^ ^5 1 1.3
