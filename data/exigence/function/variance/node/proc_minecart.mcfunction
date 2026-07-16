# Small chance for each minecart variance to start as Cart Cache

## CONSTRAINTS
#   AS/AT variance node
#       Level 2, tag=Minecart, doesn't already have CartCache tag

#====================================================================================================

execute if score toggle.variance debug matches 1 if score debug.level debug matches 4.. run say (D4 Variance) Proc minecart

# 18 minecarts, so to have 0.2 expected value, 1/90 chance per minecart

execute store result score @s RandomB run random value 1..90
#execute store result score @s RandomB run random value 1..9
#scoreboard players set @s RandomB 1

execute if score @s RandomB matches 1 run tag @s add CartCache
execute if score @s RandomB matches 1 run scoreboard players add cart_cache.proc game.dungeon 1