# Called from vault/setup as each pot that is getting filled

## CONSTRAINTS
#   AS pot marker
#   AT pot block

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 4.. run say (D4 Vault) Fill (common)

# If gold idol, fill with money and return
execute if score mod.gold_idol game.modifiers matches 1 run return run function exigence:vault/pot/fill/money
#----------------------------------------------------------------------------------------------------

execute store result score @s Random run random value 1..10
execute store result score @s RandomB run random value 1..10

# If item, 20% chance to be uncommon
execute as @s[scores={Random=1,RandomB=..8}] run function exigence:vault/pot/fill/random_item_common
execute as @s[scores={Random=1,RandomB=9..}] run function exigence:vault/pot/fill/random_item_uncommon
execute as @s[scores={Random=2..4}] run function exigence:vault/pot/fill/money
execute as @s[scores={Random=5..10}] run function exigence:vault/pot/fill/research
