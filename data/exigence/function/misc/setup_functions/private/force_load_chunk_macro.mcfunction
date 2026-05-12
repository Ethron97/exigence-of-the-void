# Forceload a chunk (and mark it as such)

## INPUT
#   INT x
#   INT y
#   INT z

#====================================================================================================

$execute positioned $(x) $(y) $(z) run fill ~0 ~ ~0 ~15 ~ ~15 minecraft:lime_concrete replace air
$execute positioned $(x) $(y) $(z) run fill ~0 ~ ~0 ~15 ~ ~15 minecraft:lime_concrete replace yellow_concrete
$execute positioned $(x) $(y) $(z) run fill ~1 ~ ~1 ~14 ~ ~14 air replace minecraft:lime_concrete
