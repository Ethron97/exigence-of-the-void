# Procs treasure throughout the dungeon

# Get current source
data modify storage exigence:treasure resolving set from storage exigence:treasure queue[0]

# Increase ping scores
scoreboard players add @a[tag=ActivePlayer] profile.data.treasure.cr.ping 1

# Increase ping score for this source
execute as @a[tag=ActivePlayer] run function exigence:treasure/node/private/add_ping_score with storage exigence:treasure


## COINS
#   Handles stack logic and probabilities
execute as @e[type=minecraft:armor_stand,tag=TreasureNode,tag=Active] run function exigence:treasure/node/coin/coin_drop_chance

# Note: "level limit checks" only happen for coins since they are the most common

## RESEARCH FRAGMENT
execute if score game.difficulty game.state matches 1.. run function exigence:treasure/sherd/proc_sherd_drop


## VAULT KEY
# Chance per dungeon proc to summon a key at any active treasure node.
execute store result score #VaultKeyCheck Random run random value 1..18
#   If brush modifier, double chance
execute if score mod.brush game.modifiers matches 1 run execute store result score #VaultKeyCheck Random run random value 1..9
# If dev vault key card, always drop
execute if score .vault_rain game.dev_modifiers matches 1 run scoreboard players set #VaultKeyCheck Random 1
execute if score #VaultKeyCheck Random matches 1 run function exigence:vault/generate_key/generate


## LEVEL KEYS+
# Change per dungeon proc to summon a LEVEL KEY at any active treasure node, on a level with at least one person (and unopened level door)
execute store result score #LevelKeyCheck Random run random value 1..12
#   Drop if random check + less than 5 keys exist + door not opened + 
execute if score #LevelKeyCheck Random matches 1 unless score 1.keys_dropped game.level_doors matches 5.. unless score 1.opened game.level_doors matches 1 if entity @a[scores={game.player.active_level=1},tag=ActivePlayer] as @e[type=minecraft:armor_stand,scores={node.property.object_level=1},tag=TreasureNode,tag=!L0,tag=!KeyDropper,tag=!KeyBlacklist,sort=random,limit=1] run function exigence:treasure/keys/private/drop_key_1
execute if score #LevelKeyCheck Random matches 1 unless score 2.keys_dropped game.level_doors matches 5.. unless score 2.opened game.level_doors matches 1 if entity @a[scores={game.player.active_level=2},tag=ActivePlayer] as @e[type=minecraft:armor_stand,scores={node.property.object_level=2},tag=TreasureNode,tag=!L0,tag=!KeyDropper,tag=!KeyBlacklist,sort=random,limit=1] run function exigence:treasure/keys/private/drop_key_2
execute if score #LevelKeyCheck Random matches 1 unless score 3.keys_dropped game.level_doors matches 5.. unless score 3.opened game.level_doors matches 1 if entity @a[scores={game.player.active_level=3},tag=ActivePlayer] as @e[type=minecraft:armor_stand,scores={node.property.object_level=3},tag=TreasureNode,tag=!L0,tag=!KeyDropper,tag=!KeyBlacklist,sort=random,limit=1] run function exigence:treasure/keys/private/drop_key_3


## WARD CRYSTALS
#   If player is on levels 3 or 4, and at least one crystal exists
execute if score game.difficulty game.state matches 4 if entity @e[type=interaction,tag=Crystal] if entity @a[scores={dead=0,game.player.active_level=3..4},tag=ActivePlayer] run function exigence:game/other/wards/proc_resonance
