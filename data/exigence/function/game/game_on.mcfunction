say Game On

# Activate game systems
function exigence:altar/activate_altar_nodes
function exigence:menace/activate_menace_nodes

function exigence:treasure/activate_treasure_nodes
function exigence:ember/activate_ember_nodes
function exigence:vault/reset_vaults
function exigence:vault/enter_with_vault_key



function exigence:door/level/reset_doors
# Load Game NPCs
function exigence:npc/game/load_npcs

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

# Activate bookshelf nodes
function exigence:mirror/bookshelf/bookshelves/activate_bookshelf_nodes

# Load bookshelf and initialize match
execute as @a[tag=PrimaryPlayer] run function exigence:mirror/bookshelf/load_bookshelf
execute as @a[tag=PrimaryPlayer,advancements={exigence:story/match_bookshelf=false}] run function exigence:mirror/bookshelf/test_match
# If player has matched bookshelf, set mirror to broken
execute if entity @a[tag=PrimaryPlayer,advancements={exigence:story/match_bookshelf=true}] run clone -473 37 -185 -464 43 -185 -482 61 -193

# Reenable mob sounds for entities with "Silence" tag
execute as @e[tag=Silence] run data modify entity @s Silent set value false

# Drop level keys
function exigence:treasure/keys/drop_level_keys

# Initialize random rotation data
data merge storage temp {Rotation:[0.0f,0.0f]}

#====================================================================================================

# Set sidebar display or bossbar display for cards played display
#scoreboard objectives setdisplay sidebar game.cards_played

# Setup PHANTOM preview entities
kill @e[type=minecraft:block_display,tag=ItemPreview]
execute as @a[tag=ActivePlayer] run function exigence:player/utility/setup_preview_display
tag @e[type=minecraft:armor_stand,tag=PhantomNode] remove PhantomNode
tag @e[type=minecraft:armor_stand,tag=MenaceNode] add PhantomNode
tag @e[type=minecraft:marker,tag=EchoNode] add PhantomNode

# Reset mirror hidden blocks
function exigence:mirror/hidden_blocks/reset_hidden_blocks
# Setup mirrors
function exigence:mirror/mirrors/setup_all_mirrors
function exigence:mirror/setup_mirror_entities
