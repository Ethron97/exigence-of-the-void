# Randomly fill a single pot
# Called by fill_cart

## CONSTRAINTS
#   AT location (pot block)

#====================================================================================================

execute store result score #random Random run random value 1..10

# 20%
execute if score #random Random matches 1..2 run function exigence:vault/pot/fill/random_item_uncommon

# 70%
execute if score #random Random matches 3..9 run function exigence:vault/pot/fill/money

# 10% air