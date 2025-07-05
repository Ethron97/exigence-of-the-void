# Called from vault/setup as each pot that is getting filled

# If gold idol, fill with money and return
execute if score GoldIdol Modifiers matches 1 at @s run function exigence:vault/fill/money
execute if score GoldIdol Modifiers matches 1 at @s run return 0

execute store result score @s Random run random value 1..10
execute store result score @s RandomB run random value 1..10

# If item, 30% chance to be void
execute as @s[scores={Random=1,RandomB=..7}] at @s run function exigence:vault/fill/random_item_legendary
execute as @s[scores={Random=1,RandomB=8..}] at @s run function exigence:vault/fill/random_item_void
execute as @s[scores={Random=2..4}] at @s run function exigence:vault/fill/money
execute as @s[scores={Random=5..10}] at @s run function exigence:vault/fill/research
