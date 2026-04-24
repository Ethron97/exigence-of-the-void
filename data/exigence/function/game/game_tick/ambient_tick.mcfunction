# Function for all ambient effects / sounds / particles


# ============== FRIENDLY / POSITIVE =================

function exigence:game/game_tick/ambient/flame
function exigence:game/game_tick/ambient/key

# BEACONS
execute if score game.difficulty game.state matches 5.. as @a[scores={dead=0},tag=ActivePlayer] at @s run function exigence:beacon/ambient_tick

# VAULT KEY
function exigence:game/game_tick/ambient/vault_key

# WARDS
execute if entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] run function exigence:game/other/wards/ambient

# VAULT DOORS
# Ambient particles if the key has been picked up
execute at @e[type=minecraft:armor_stand,tag=VaultNode,tag=PickedUp,tag=!Opened] run particle enchant ~ ~ ~ 3 3 3 1 5
execute at @e[type=minecraft:armor_stand,tag=VaultNode,tag=PickedUp,tag=!Opened,tag=Vault_tide] run particle enchant ~ ~5 ~ 3 3 3 1 5


# DOORS
# Ambient beacn noise at door
#    Need to find a sound other than the one for vault keys.
#execute at @e[type=minecraft:armor_stand,tag=DoorNode] if score seconds.cooldown tick_counter matches 5 run playsound block.beacon.ambient neutral @a ~ ~ ~ 2 1


# ALTARS
execute if score game.max_menace game.state matches 0 run function exigence:altar/ambient_tick


# BELLS
execute if score seconds.cooldown tick_counter matches 6 at @e[type=minecraft:armor_stand,scores={game.node.bell.ring_cooldown=0},tag=BellNode,tag=Active] run particle minecraft:glow ~ ~0.1 ~ 0.3 0.2 0.3 0 1
execute if score seconds.cooldown tick_counter matches 16 at @e[type=minecraft:armor_stand,scores={game.node.bell.ring_cooldown=0},tag=BellNode,tag=Active] run particle minecraft:glow ~ ~0.1 ~ 0.3 0.2 0.3 0 1
execute if score mod.resonance game.modifiers matches 1.. if score seconds.cooldown tick_counter matches 3 at @e[type=minecraft:armor_stand,scores={game.node.bell.ring_cooldown=0},tag=BellNode,tag=Active] run particle minecraft:small_gust ~ ~0.1 ~ 0.3 0.2 0.3 0.1 5
execute if score mod.resonance game.modifiers matches 1.. if score seconds.cooldown tick_counter matches 13 at @e[type=minecraft:armor_stand,scores={game.node.bell.ring_cooldown=0},tag=BellNode,tag=Active] run particle minecraft:small_gust ~ ~0.1 ~ 0.3 0.2 0.3 0.1 5


# BOOKSHELVES
execute if score seconds.cooldown tick_counter matches 4 as @e[type=minecraft:armor_stand,tag=BookshelfNode,tag=Active] run function exigence:mirror/bookshelf/bookshelves/node/particle


# NPCS
execute if score seconds.cooldown tick_counter matches 6 at @e[type=minecraft:villager,tag=NPC,tag=Game] run particle minecraft:glow ~ ~1.2 ~ 0.3 0.8 0.3 0 1
execute if score seconds.cooldown tick_counter matches 16 at @e[type=minecraft:villager,tag=NPC,tag=Game] run particle minecraft:glow ~ ~1.2 ~ 0.3 0.8 0.3 0 1
