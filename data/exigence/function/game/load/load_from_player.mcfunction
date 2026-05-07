# Load info from player index=1

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) Load player related misc as primary player

scoreboard players set @s game.player.player_number 1

# Select "active" profile node(s)
function exigence:profile/profile_node/select_active

# Copy profile data from activechest:
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=ActiveChest,limit=1] run function exigence:game/load/load_from_profile_node

# Copy profile difficulty
scoreboard players operation game.profile_difficulty game.state = @s profile.player.profile_difficulty

# Apply priority settings (in coop, only primary players setting matters here)
execute if entity @s[scores={career.settings.card_display_sidebar=1}] run scoreboard objectives setdisplay sidebar.team.dark_aqua game.cards_played
execute if entity @s[scores={career.settings.card_display_sidebar=1}] run scoreboard objectives setdisplay sidebar.team.dark_red game.cards_played
