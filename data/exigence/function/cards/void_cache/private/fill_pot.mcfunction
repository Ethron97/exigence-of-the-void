
setblock ~ ~ ~ minecraft:decorated_pot

execute store result score #random Random run random value 1..10

# 90%
execute if score #random Random matches 1..9 run function exigence:vault/fill/random_item_void

# 10% air
