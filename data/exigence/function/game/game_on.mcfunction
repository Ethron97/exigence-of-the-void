say Game On

# Activate game systems

# Puzzle candles (might already be done from altar?)

function exigence:vault/reset_vaults
function exigence:vault/enter_with_vault_key

# If difficulty 4, and has not broken all crystals, spawn wards
execute if score game.difficulty game.state matches 4 if entity @a[tag=ActivePlayer,tag=PrimaryPlayer,advancements={exigence:story/destroy_crystals=false}] run function exigence:game/other/wards/setup_wards
function exigence:beacon/activate_beacon_nodes

# If difficulty 5, drop Ardor Flames/Embers
#   One flame if type 0
execute if score game.difficulty game.state matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:0} run execute as @e[type=minecraft:armor_stand,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_flame
#   Three embers if type 1
execute if score game.difficulty game.state matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[type=minecraft:armor_stand,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_ember
execute if score game.difficulty game.state matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[type=minecraft:armor_stand,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_ember
execute if score game.difficulty game.state matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[type=minecraft:armor_stand,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_ember
execute if score game.difficulty game.state matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[type=minecraft:armor_stand,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_ember

# If LBAL (led by ancient light): call it now
execute if score mod.led_by_ancient_light game.modifiers matches 1.. run function exigence:cards/led_by_ancient_light/trigger
execute if score mod.led_by_ancient_light game.modifiers matches 2.. run function exigence:cards/led_by_ancient_light/trigger
execute if score mod.led_by_ancient_light game.modifiers matches 3.. run function exigence:cards/led_by_ancient_light/trigger

# Void cache
execute if score mod.void_cache game.modifiers matches 1.. if score game.difficulty game.state matches 4.. run function exigence:cards/void_cache/trigger


# Reenable mob sounds for entities with "Silence" tag
execute as @e[tag=Silence] run data modify entity @s Silent set value false

# Initialize random rotation data
data merge storage temp {Rotation:[0.0f,0.0f]}

#====================================================================================================

# Set sidebar display or bossbar display for cards played display
#scoreboard objectives setdisplay sidebar game.cards_played

# Setup PHANTOM preview entities
kill @e[type=minecraft:block_display,tag=ItemPreview]
execute as @a[tag=ActivePlayer] run function exigence:player/utility/setup_preview_display
