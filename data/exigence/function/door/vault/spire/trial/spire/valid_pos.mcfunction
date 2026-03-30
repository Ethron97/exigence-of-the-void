# Check if this is a valid position to spawn a new spire block

## CONSTRAINTS
#   AT position

## Returns
#   1 if valid position
#   0 if invalid

#====================================================================================================

# Must be within 6 blocks of center, and have no air beneath it
execute unless entity @e[distance=..6,type=marker,tag=SpireCenter] run return 0

# Prevent spawning on or below a player
execute if entity @a[scores={game.player.vault_code=5},distance=..1] run return 0
execute positioned ~ ~-1 ~ if entity @a[scores={game.player.vault_code=5},distance=..1] run return 0
execute positioned ~ ~-2 ~ if entity @a[scores={game.player.vault_code=5},distance=..1] run return 0
execute positioned ~ ~-3 ~ if entity @a[scores={game.player.vault_code=5},distance=..1] run return 0
execute positioned ~ ~-4 ~ if entity @a[scores={game.player.vault_code=5},distance=..1] run return 0

# Prevent spawning in any column that is occupied by a block
execute unless block ~ ~ ~ minecraft:air run return 0
execute unless block ~ ~-1 ~ minecraft:air run return 0
execute unless block ~ ~-2 ~ minecraft:air run return 0
execute unless block ~ ~-3 ~ minecraft:air run return 0
execute unless block ~ ~-4 ~ minecraft:air run return 0
execute unless block ~ ~-5 ~ minecraft:air run return 0

return 1
