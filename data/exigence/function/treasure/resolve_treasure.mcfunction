# Procs treasure throughout the dungeon

# Get current source
data modify storage exigence:treasure resolving set from storage exigence:treasure queue[0]

# Increase ping scores
scoreboard players add @a[tag=ActivePlayer] profile.data.treasure.cr.ping 1

# Increase ping score for this source
execute as @a[tag=ActivePlayer] run function exigence:treasure/node/private/add_ping_score with storage exigence:treasure


## COINS
#   Handles stack logic and probabilities
execute as @e[type=armor_stand,tag=TreasureNode,tag=Active] run function exigence:treasure/node/coin/coin_drop_chance

# Note: "level limit checks" only happen for coins since they are the most common

## RESEARCH FRAGMENT
execute if score Difficulty DungeonRun matches 1.. run function exigence:treasure/sherd/proc_sherd_drop


## VAULT KEY
# Chance per dungeon proc to summon a key at any active treasure node.
execute store result score #VaultKeyCheck Random run random value 1..18
#   If brush modifier, double chance
execute if score Brush Modifiers matches 1 run execute store result score #VaultKeyCheck Random run random value 1..9
# If dev vault key card, always drop
execute if score VaultRain DevModifiers matches 1 run scoreboard players set #VaultKeyCheck Random 1
execute if score #VaultKeyCheck Random matches 1 run function exigence:vault/generate_key/generate


## WARD CRYSTALS
#   If player is on levels 3 or 4, and at least one crystal exists
execute if score Difficulty DungeonRun matches 4 if entity @e[type=interaction,tag=Crystal] if entity @a[tag=ActivePlayer,scores={dead=0,game.player.active_level=3..4}] run function exigence:game/other/wards/proc_resonance
