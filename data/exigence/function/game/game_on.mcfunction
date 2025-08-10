say Game On

# Set dungeon active
data modify storage exigence:dungeon is_active set value 1
data modify storage exigence:dungeon active_player.uuid set from entity @a[tag=ActivePlayer,limit=1] UUID
data modify storage exigence:dungeon waiting_for_respawn set value 0
data modify storage exigence:dungeon all_echos_found set value 0
data modify storage exigence:dungeon escape_portal set value 0
data modify storage exigence:treasure queue set value []

# Set paintings to invulnerable
execute as @e[type=minecraft:painting] run data merge entity @s {Invulnerable:true}

# PLAYER:
execute as @a[tag=ActivePlayer] run function exigence:game/game_reset/reset_player_scores
execute as @a[tag=ActivePlayer] run function exigence:game/game_reset/reset_teams
execute as @a[tag=ActivePlayer] run function exigence:game/game_reset/reset_advancements
gamemode adventure @a[tag=ActivePlayer]
team join Player @a[tag=ActivePlayer]
execute as @a[tag=ActivePlayer] run attribute @s minecraft:safe_fall_distance modifier remove exigence:safe_fall
# Initialize interaction (insurance):
execute as @a[tag=ActivePlayer] run function exigence:player/utility/interaction/get_interaction

# Set waypoint to not transmit (so coop players don't get confused seeing each other on it)
#   Spectators already don't appear on it, and the hub will be in a different world.
execute as @a[tag=ActivePlayer] run attribute @s minecraft:waypoint_transmit_range base set 0

function exigence:game/game_reset/reset_game_scores

# Select "active" playernode
tag @e[type=armor_stand,tag=PlayerNode] remove Active
scoreboard players operation #temp PlayerID = @a[tag=PrimaryPlayer] PlayerID
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = #temp PlayerID run tag @s add Active

# Teleport to dungeon start
#execute at @e[type=armor_stand,tag=Start] run spreadplayers ~ ~ 3 3 under 3 false @a[tag=ActivePlayer]
teleport @a[tag=ActivePlayer] @e[type=minecraft:armor_stand,tag=Start,limit=1]

# Clear hub effects
effect clear @a[tag=ActivePlayer]

# Give player exactly enough Hunger to reduce saturation to 5/20 (what it normally is after dying)
# Hunger: Removes one saturation point every 40/level seconds. 3 seconds of 200 level = 15 saturation points gone.
effect give @a[tag=ActivePlayer] hunger 3 200 true
# Debug
effect give @a[tag=ActivePlayer] minecraft:glowing infinite 0 true
#effect give @a[tag=ActivePlayer] minecraft:resistance infinite 255 true


# Load pre-deck handling modifiers from player items
execute as @a[tag=ActivePlayer] run function exigence:game/modifiers/load_modifiers_0

# DECK HANDLING
# Be careful when moving this function around.
#   Setups of the dungeon should happen after deck processing so the deck can potentially influence it.
execute as @a[tag=PrimaryPlayer] run function exigence:deck/process/process_deck

# Reset advancements
advancement revoke @a[advancements={exigence:listener/step_on_sculk=true}] only exigence:listener/step_on_sculk

# Load enchantments from player items
execute as @a[tag=ActivePlayer] run function exigence:game/modifiers/load_modifiers_a
execute as @a[tag=ActivePlayer] run function exigence:game/modifiers/load_modifiers_b

# Reset mirror hidden blocks
function exigence:mirror/hidden_blocks/reset_hidden_blocks
# Setup mirrors
function exigence:mirror/mirrors/setup_all_mirrors
function exigence:mirror/setup_mirror_entities

# Play thunder sound as the player enters the dungeon
playsound minecraft:entity.lightning_bolt.thunder ambient @a[tag=ActivePlayer] ~ ~1000 ~ 1000 1

# Activate game systems
function exigence:treasure/activate_treasure_nodes
# Select Echo shard drop location and Ancient Ember amount
function exigence:ember/activate_echo_nodes


# If difficulty 4, and has not broken all crystals, spawn wards
execute if score Difficulty DungeonRun matches 4 if entity @a[tag=ActivePlayer,tag=PrimaryPlayer,advancements={exigence:story/destroy_crystals=false}] run function exigence:game/other/wards/setup_wards

function exigence:ember/activate_ember_nodes
function exigence:ember/setup/set_base_ember_drops
execute as @e[type=minecraft:armor_stand,tag=HazardNode] run function exigence:hazard/node/reset
function exigence:hazard/activate_hazard_nodes
function exigence:menace/activate_menace_nodes
function exigence:enemy/spawn_enemies
schedule function exigence:enemy/distribute_ravagers 1t
execute if score Difficulty DungeonRun matches 3.. run schedule function exigence:enemy/warden/distribute_wardens 1t
execute if score Difficulty DungeonRun matches 4.. run schedule function exigence:enemy/creaking/distribute_creakings 1t
function exigence:bell/setup_bells
function exigence:botany/activate_berry_nodes
function exigence:variance/setup_variance
# Starting hazard now called after Variances are done
#function exigence:hazard/setup_starting_hazard
function exigence:vault/reset_vaults
function exigence:door/level/reset_doors
function exigence:altar/activate_altar_nodes
function exigence:vault/enter_with_vault_key

function exigence:beacon/activate_beacon_nodes
# If difficulty 5, drop Ardor Flames/Embers
#   One flame if type 0
execute if score Difficulty DungeonRun matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:0} run execute as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={NodeState=0}] run function exigence:beacon/node/spawn_flame
#   Three embers if type 1
execute if score Difficulty DungeonRun matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={NodeState=0}] run function exigence:beacon/node/spawn_ember
execute if score Difficulty DungeonRun matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={NodeState=0}] run function exigence:beacon/node/spawn_ember
execute if score Difficulty DungeonRun matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={NodeState=0}] run function exigence:beacon/node/spawn_ember
execute if score Difficulty DungeonRun matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={NodeState=0}] run function exigence:beacon/node/spawn_ember

# If LBAL (led by ancient light): call it now
execute if score LBAL DungeonRun matches 1.. run function exigence:cards/led_by_ancient_light/trigger
execute if score LBAL DungeonRun matches 2.. run function exigence:cards/led_by_ancient_light/trigger
execute if score LBAL DungeonRun matches 3.. run function exigence:cards/led_by_ancient_light/trigger

# Void cache
execute if score VoidCache DungeonRun matches 1.. if score Difficulty DungeonRun matches 4.. run function exigence:cards/void_cache/trigger

# Setup exits
function exigence:game/exit/setup_exits

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

# Initialize cooldowns
scoreboard players set RavagerAggroCooldownLimit TickCounter 100
scoreboard players set RavagerAggroCooldownCurrent TickCounter 50

# Pull passive treasure cooldown from data
execute store result score #PassiveTreasureCooldownLimit TickCounter run data get storage exigence:dungeon_settings passive_treasure 1
scoreboard players operation PassiveTreasureCooldown TickCounter = #PassiveTreasureCooldownLimit TickCounter

scoreboard players set SecondsCooldown TickCounter 20

# 35 seconds cooldown for the first card draw. Normally 30 seconds
scoreboard players set #CardDrawCooldownLimit TickCounter 600
scoreboard players operation CardDrawCooldown TickCounter = #CardDrawCooldownLimit TickCounter

# Queued cards get played every 3 seconds
scoreboard players set #CardPlayCooldownLimit TickCounter 60
scoreboard players operation CardPlayCooldown TickCounter = #CardPlayCooldownLimit TickCounter

# Load Game NPCs
function exigence:npc/game/load_npcs

# Set sidebar display or bossbar display for cards played display
#scoreboard objectives setdisplay sidebar CardsPlayed

# Initialize bossbar(s)
function exigence:bossbar/deck/initialize
function exigence:bossbar/deck/update_data
function exigence:bossbar/last_card/initialize
function exigence:bossbar/resource/initialize
function exigence:bossbar/objective/initialize

# Set team based sidebar based on primary player settings
execute if entity @a[tag=PrimaryPlayer,scores={s_cardDisplaySidebar=1}] run scoreboard objectives setdisplay sidebar.team.dark_aqua CardsPlayed
execute if entity @a[tag=PrimaryPlayer,scores={s_cardDisplaySidebar=1}] run scoreboard objectives setdisplay sidebar.team.dark_red CardsPlayed

# Setup PHANTOM preview entities
kill @e[type=block_display,tag=ItemPreview]
execute as @a[tag=ActivePlayer] run function exigence:player/utility/setup_preview_display
tag @e[type=armor_stand,tag=PhantomNode] remove PhantomNode
tag @e[type=armor_stand,tag=MenaceNode] add PhantomNode
tag @e[type=armor_stand,tag=EchoNode] add PhantomNode
