# Function for all ambient effects / sounds / particles


# ============== FRIENDLY / POSITIVE =================

function exigence:game/game_tick/ambient/flame
function exigence:game/game_tick/ambient/vault_key

# BEACONS
execute if score game.difficulty game.state matches 5.. as @a[scores={dead=0},tag=ActivePlayer] at @s run function exigence:beacon/ambient_tick

# WARDS
execute if entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] run function exigence:game/other/wards/ambient

# VAULT DOORS
# Ambient particles if the key has been picked up
execute at @e[type=minecraft:armor_stand,tag=VaultNode,tag=PickedUp,tag=!Opened] run particle enchant ~ ~ ~ 3 3 3 1 5
execute at @e[type=minecraft:armor_stand,tag=VaultNode,tag=PickedUp,tag=!Opened,tag=Vault_tide] run particle enchant ~ ~5 ~ 3 3 3 1 5


# DOORS
# Ambient beacn noise at door
#    Need to find a sound other than the one for vault keys.
#execute at @e[type=minecraft:marker,tag=DoorNode] if score seconds.cooldown tick_counter matches 5 run playsound block.beacon.ambient neutral @a ~ ~ ~ 2 1

# BELLS
execute if score seconds.cooldown tick_counter matches 6 at @e[type=minecraft:marker,scores={game.node.bell.ring_cooldown=0},tag=BellNode,tag=Active] run particle minecraft:glow ~ ~0.1 ~ 0.3 0.2 0.3 0 1
execute if score seconds.cooldown tick_counter matches 16 at @e[type=minecraft:marker,scores={game.node.bell.ring_cooldown=0},tag=BellNode,tag=Active] run particle minecraft:glow ~ ~0.1 ~ 0.3 0.2 0.3 0 1

# NPCS
execute if score seconds.cooldown tick_counter matches 6 at @e[type=minecraft:villager,tag=NPC,tag=Game] run particle minecraft:glow ~ ~1.2 ~ 0.3 0.8 0.3 0 1
execute if score seconds.cooldown tick_counter matches 16 at @e[type=minecraft:villager,tag=NPC,tag=Game] run particle minecraft:glow ~ ~1.2 ~ 0.3 0.8 0.3 0 1
