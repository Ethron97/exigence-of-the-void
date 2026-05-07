execute store result score #random Random run random value 1..10

# 10%
execute if score #random Random matches 1 run function exigence:vault/pot/fill/random_item_uncommon

# 70%
execute if score #random Random matches 2..8 run function exigence:vault/pot/fill/money

# 20% air