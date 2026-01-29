# Returns this player's currently selected profile stats

function exigence:player/stats/profile_stats

# Reset trigger score
scoreboard players reset @s ProfileStats
scoreboard players enable @s ProfileStats
