# Function for all ambient effects / sounds / particles


# ============== FRIENDLY / POSITIVE =================
execute if data storage exigence:dungeon {all_echos_found:0} run function exigence:game/game_tick/ambient/echo

function exigence:game/game_tick/ambient/flame
function exigence:game/game_tick/ambient/key

# BEACONS
execute if score Difficulty DungeonRun matches 5.. as @a[tag=ActivePlayer,scores={dead=0}] at @s run function exigence:beacon/ambient_tick

# VAULT KEY
function exigence:game/game_tick/ambient/vault_key

# WARDS
execute if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] run function exigence:game/other/wards/ambient

# VAULT DOORS
# Ambient particles if the key has been picked up
execute at @e[type=minecraft:armor_stand,tag=VaultNode,tag=PickedUp,tag=!Opened] run particle enchant ~ ~ ~ 3 3 3 1 5
execute at @e[type=minecraft:armor_stand,tag=VaultNode,tag=PickedUp,tag=!Opened,tag=Vault_tide] run particle enchant ~ ~5 ~ 3 3 3 1 5


# DOORS
# Ambient beacn noise at door
#    Need to find a sound other than the one for vault keys.
#execute at @e[type=minecraft:armor_stand,tag=DoorNode] if score SecondsCooldown TickCounter matches 5 run playsound block.beacon.ambient neutral @a ~ ~ ~ 2 1


# ALTARS
execute if data storage exigence:dungeon {max_menace:0} run function exigence:altar/ambient_tick


# EXIT
#   Have to call from the exit portal to avoid double-ticking
execute if data storage exigence:dungeon {escape_portal:0} as @e[type=armor_stand,tag=ExitNode] at @s run function exigence:game/exit/exit_node/tick


# BELLS
execute if score SecondsCooldown TickCounter matches 6 at @e[type=minecraft:armor_stand,tag=BellNode,tag=Active,scores={RingBellCooldown=0}] run particle minecraft:glow ~ ~0.1 ~ 0.3 0.2 0.3 0 1
execute if score SecondsCooldown TickCounter matches 16 at @e[type=minecraft:armor_stand,tag=BellNode,tag=Active,scores={RingBellCooldown=0}] run particle minecraft:glow ~ ~0.1 ~ 0.3 0.2 0.3 0 1
execute if score Resonance Modifiers matches 1.. if score SecondsCooldown TickCounter matches 3 at @e[type=minecraft:armor_stand,tag=BellNode,tag=Active,scores={RingBellCooldown=0}] run particle minecraft:small_gust ~ ~0.1 ~ 0.3 0.2 0.3 0.1 5
execute if score Resonance Modifiers matches 1.. if score SecondsCooldown TickCounter matches 13 at @e[type=minecraft:armor_stand,tag=BellNode,tag=Active,scores={RingBellCooldown=0}] run particle minecraft:small_gust ~ ~0.1 ~ 0.3 0.2 0.3 0.1 5


# BOOKSHELVES
execute if score SecondsCooldown TickCounter matches 4 as @e[type=minecraft:armor_stand,tag=BookshelfNode,tag=Active] run function exigence:mirror/bookshelf/bookshelves/node/particle


# NPCS
execute if score SecondsCooldown TickCounter matches 6 at @e[type=minecraft:villager,tag=NPC,tag=Game] run particle minecraft:glow ~ ~1.2 ~ 0.3 0.8 0.3 0 1
execute if score SecondsCooldown TickCounter matches 16 at @e[type=minecraft:villager,tag=NPC,tag=Game] run particle minecraft:glow ~ ~1.2 ~ 0.3 0.8 0.3 0 1
