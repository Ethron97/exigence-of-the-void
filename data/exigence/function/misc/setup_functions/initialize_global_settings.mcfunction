# Copy from storage to scoreboard (if score is not already there)

#=============================================================================================================

## MAX COOP PLAYERS
#   Maximum number of players that can be in a co-op profile. Defaults to 1, meaning you can have a 2-player game.
#   A value of 0 disables creation of co-op profiles.
#   Only affects the creation of new profiles. If you reduce from 2 to 1, an existing profile with 3 players will be untouched and can still enter the dungeon.
execute unless score max_coop_players global_settings matches 0..3 run scoreboard players set max_coop_players global_settings 1
