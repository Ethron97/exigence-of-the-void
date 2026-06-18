# Procs treasure throughout the dungeon

#====================================================================================================

execute if score toggle.treasure debug matches 1 if score debug.level debug matches 3.. run say (D3) Resolve treasure

# Get current source
data modify storage exigence:treasure resolving set from storage exigence:treasure queue[0]

# Increase ping scores
# TODO change to profile node
scoreboard players add @a[tag=ActivePlayer] profile.data.treasure.cr.ping 1

# Increase ping score for this source
# TODO change to profile node
execute as @a[tag=ActivePlayer] run function exigence:treasure/node/private/add_ping_score with storage exigence:treasure

#====================================================================================================
## COINS
#   Handles stack logic and probabilities
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=TreasureNode,tag=Active] run function exigence:treasure/node/coin/coin_drop_chance

# Note: "level limit checks" only happen for coins since they are the most common
#====================================================================================================

## RESEARCH FRAGMENT
function exigence:treasure/sherd/proc_sherd_drop

#====================================================================================================
## VAULT KEY
# Chance per dungeon proc to summon a key at any active treasure node.
execute store result score #VaultKeyCheck Random run random value 1..16
#   If brush modifier, double chance
execute if score mod.brush game.modifiers matches 1 run execute store result score #VaultKeyCheck Random run random value 1..8
# If dev vault key card, always drop
execute if score .vault_rain game.dev_modifiers matches 1 run scoreboard players set #VaultKeyCheck Random 1
execute if score #VaultKeyCheck Random matches 1 as @r[tag=ActivePlayer,scores={dead=0}] run function exigence:vault/generate_key/generate

#====================================================================================================
## LEVEL KEYS+
# Change per dungeon proc to summon a LEVEL KEY at any active treasure node, on a level with at least one person (and unopened level door)
execute store result score #LevelKeyCheck Random run random value 1..30
#   Drop if random check + less than 5 keys exist + door not opened + 
execute if score #LevelKeyCheck Random matches 1 if score game.difficulty game.state matches 2.. unless score 1.keys_dropped game.level_doors matches 5.. unless score 1.opened game.level_doors matches 1 unless score 1.got_key game.level_doors matches 1 if entity @a[scores={game.player.active_level=1},tag=ActivePlayer] as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=TreasureNode,tag=!KeyDropper,tag=!KeyBlacklist,sort=random,limit=1] run function exigence:treasure/keys/private/drop_key_1
execute if score #LevelKeyCheck Random matches 1 if score game.difficulty game.state matches 3.. unless score 2.keys_dropped game.level_doors matches 5.. unless score 2.opened game.level_doors matches 1 unless score 2.got_key game.level_doors matches 1 if entity @a[scores={game.player.active_level=2},tag=ActivePlayer] as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=TreasureNode,tag=!KeyDropper,tag=!KeyBlacklist,sort=random,limit=1] run function exigence:treasure/keys/private/drop_key_2
execute if score #LevelKeyCheck Random matches 1 if score game.difficulty game.state matches 4.. unless score 3.keys_dropped game.level_doors matches 5.. unless score 3.opened game.level_doors matches 1 unless score 3.got_key game.level_doors matches 1 if entity @a[scores={game.player.active_level=3},tag=ActivePlayer] as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=TreasureNode,tag=!KeyDropper,tag=!KeyBlacklist,sort=random,limit=1] run function exigence:treasure/keys/private/drop_key_3

#====================================================================================================
## WARD CRYSTALS
#   If player is on levels 3 or 4, and at least one crystal exists
execute if score game.difficulty game.state matches 4 if entity @a[scores={dead=0,game.player.active_level=3..4},tag=ActivePlayer] if entity @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=interaction,tag=Crystal,limit=1] run function exigence:game/other/wards/proc_resonance
