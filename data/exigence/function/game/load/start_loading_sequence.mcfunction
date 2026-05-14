# Start loading sequence
#   Called instantly as soon as sensors complete (to ensure we have players to call on)

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3) Start loading sequence

# Handle setup that needs to come from player info (like chests, profile difficulty)
#   Also marks every relevant profile node as "Active"
execute as @a[tag=Predungeon,scores={profile.player.coop_profile_index=0..1}] run function exigence:game/load/load_from_player
execute as @a[tag=Predungeon,scores={profile.player.coop_profile_index=2..4}] run scoreboard players operation @s game.player.player_number = @s profile.player.coop_profile_index

# Set difficulty
scoreboard players operation game.difficulty game.state = game.difficulty game.dungeon.setup
# Set player count (for loss detection)
scoreboard players set game.player_count game.state 0
execute as @a[tag=Predungeon] run scoreboard players add game.player_count game.state 1

# Give entry scores
#   Must be called after difficulty is set, and load_from_player is called
execute in exigence:profile_data run function exigence:game/load/private/give_attempt_scores

# Schedule load functions
schedule function exigence:game/reset/reset_game_scores 1t
schedule function exigence:game/load/load_deck 2t
schedule function exigence:game/load/load_exits 3t
schedule function exigence:game/load/load_echos 4t
schedule function exigence:game/load/load_enemies_spawn 5t
schedule function exigence:game/load/load_enemies_setup 6t
schedule function exigence:game/load/load_enemies_distribute 7t
schedule function exigence:game/load/load_variance_and_hazard 8t
schedule function exigence:game/load/load_berry_nodes 9t
schedule function exigence:game/load/load_bell_nodes 10t
schedule function exigence:game/load/load_altar_nodes 11t
schedule function exigence:game/load/load_menace_nodes 12t
schedule function exigence:game/load/load_treasure_nodes 13t
schedule function exigence:game/load/load_level_doors 14t
schedule function exigence:game/load/load_npcs 15t
schedule function exigence:game/load/load_mirrors 16t
schedule function exigence:game/load/load_bookshelf 17t
schedule function exigence:game/load/load_wards 18t
schedule function exigence:game/load/load_beacons 19t

schedule function exigence:game/load/vault/load_host 20t
schedule function exigence:game/load/vault/load_wayfinder 21t
schedule function exigence:game/load/vault/load_shaper 22t
schedule function exigence:game/load/vault/load_raiser 23t
schedule function exigence:game/load/vault/load_tide 24t
schedule function exigence:game/load/vault/load_rib 25t

schedule function exigence:game/load/vault/load_snout 26t
schedule function exigence:game/load/vault/load_wild 27t
schedule function exigence:game/load/vault/load_sentry 28t
schedule function exigence:game/load/vault/load_ward 29t
schedule function exigence:game/load/vault/load_coast 30t
schedule function exigence:game/load/vault/load_vex 31t

schedule function exigence:game/load/vault/load_bolt 32t
schedule function exigence:game/load/vault/load_dune 33t
schedule function exigence:game/load/vault/load_eye 34t
schedule function exigence:game/load/vault/load_flow 35t
schedule function exigence:game/load/vault/load_silence 36t
schedule function exigence:game/load/vault/load_spire 37t

# ...
# Finish load sequence
schedule function exigence:game/load/finish_loading_sequence 71t