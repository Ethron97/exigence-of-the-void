# Determine bounded difficulty

## INPUT
#   level, int 1-4

## OUTPUT
# Guaranteed to output MinDifficulty < MaxDifficulty

#====================================================================================================

#$say (D3) choose nodes on $(level)

# Set starting difficulty
scoreboard players set #MinDifficulty game.dungeon.echo 0
scoreboard players set #MaxDifficulty game.dungeon.echo 4

# Increase echo difficulty spread to match the level
$scoreboard players set #BaseDifficulty game.dungeon.echo $(level)0
scoreboard players operation #MinDifficulty game.dungeon.echo += #BaseDifficulty game.dungeon.echo
scoreboard players operation #MaxDifficulty game.dungeon.echo += #BaseDifficulty game.dungeon.echo

# Cap diffiulcty based on the highest echo this player has achieved + 1
execute as @a[tag=Predungeon] run scoreboard players operation #MaxDifficulty game.dungeon.echo < @s profile.data.winloss.highest_win
scoreboard players add #MaxDifficulty game.dungeon.echo 1

# Ensure difficulty mod is bounded at +/-4 (so min difficiulty doesn't go above 5, or max below 1)
scoreboard players operation .difficulty_mod game.dungeon.echo < 4 number
scoreboard players operation .difficulty_mod game.dungeon.echo > -4 number

# Apply difficulty mod
scoreboard players operation #MinDifficulty game.dungeon.echo += .difficulty_mod game.dungeon.echo
scoreboard players operation #MaxDifficulty game.dungeon.echo += .difficulty_mod game.dungeon.echo

# Ensure MaxDifficulty is at least 1 (otherwise nothing will get selected)
scoreboard players operation #MaxDifficulty game.dungeon.echo > 1 number
execute if score game.difficulty game.state matches 1 run scoreboard players operation #MaxDifficulty game.dungeon.echo > 11 number
execute if score game.difficulty game.state matches 2 run scoreboard players operation #MaxDifficulty game.dungeon.echo > 21 number
execute if score game.difficulty game.state matches 3 run scoreboard players operation #MaxDifficulty game.dungeon.echo > 31 number
execute if score game.difficulty game.state matches 4 run scoreboard players operation #MaxDifficulty game.dungeon.echo > 41 number

# Store in data
execute store result storage exigence:echo_selection min_difficulty int 1 run scoreboard players get #MinDifficulty game.dungeon.echo
execute store result storage exigence:echo_selection max_difficulty int 1 run scoreboard players get #MaxDifficulty game.dungeon.echo
$data modify storage exigence:echo_selection echos set from storage exigence:echo_selection Level$(level)Echos
$data modify storage exigence:echo_selection level set value $(level)

# Start iteration to call macros
execute store result score #temp Temp run data get storage exigence:echo_selection echos 1
function exigence:ember/private/choose_echo_nodes_b2 with storage exigence:echo_selection

#function exigence:ember/private/choose_echo_nodes_c with storage exigence:echo_selection
