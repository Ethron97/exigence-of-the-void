# Load info from player index=1

## CONSTRAINTS
#   AS player

#====================================================================================================

say (D3) Load player related misc as primary player

# Select "active" profile node(s)
function exigence:profile/profile_node/select_active

# Copy profile difficulty
scoreboard players operation game.profile_difficulty game.state = @s profile.player.profile_difficulty

# Apply priority settings (in coop, only primary players setting matters here)
execute if entity @s[scores={career.settings.card_display_sidebar=1}] run scoreboard objectives setdisplay sidebar.team.dark_aqua game.cards_played
execute if entity @s[scores={career.settings.card_display_sidebar=1}] run scoreboard objectives setdisplay sidebar.team.dark_red game.cards_played
