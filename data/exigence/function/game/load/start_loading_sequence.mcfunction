# Start loading sequence
#   Called instantly as soon as sensors complete (to ensure we have players to call on)

#====================================================================================================

say (D3) Start loading sequence

# Handle setup that needs to come from player info (like chests, profile difficulty)
#   Also marks every relevant profile node as "Active"
execute as @a[tag=Predungeon,scores={profile.player.coop_profile_index=0..1}] run function exigence:game/load/load_from_player

# Set difficulty
scoreboard players operation game.difficulty game.state = game.difficulty game.dungeon.setup
# Set player count (for loss detection)
scoreboard players set game.player_count game.state 0
execute as @a[tag=Predungeon] run scoreboard players add game.player_count game.state 1

# Sanity
execute in minecraft:overworld unless entity @e[x=536,y=0,z=488,dx=0,dy=0,dz=0,type=minecraft:armor_stand,tag=intermediary] run summon minecraft:armor_stand 536.5 0.0 488.5 {Tags:[intermediary],ShowArms:1b}

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

# ...
# Finish load sequence
schedule function exigence:game/load/finish_loading_sequence 71t