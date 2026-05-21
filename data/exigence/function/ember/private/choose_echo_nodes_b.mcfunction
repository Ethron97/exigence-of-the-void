# Determine bounded difficulty

## INPUT
#   level, int 1-4

## OUTPUT
# Guaranteed to output MinDifficulty < MaxDifficulty

#====================================================================================================

$execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. run say (D3 Echo) choose nodes on $(level)

# Get "local" highest win for this level
#   If we don't it will weight lower levels almost entirely to the highest tier on each level.
#   Ie, if we randomize between 11 and 41, then cap to 15... it's almost always 15.
scoreboard players operation #local_highest_win game.dungeon.echo = highest.win game.dungeon.setup
$scoreboard players operation #local_highest_win game.dungeon.echo < $(level)5 number
# Must set the starting point for local highest = this level, else difficulty modifiers wont impact future levels.
$scoreboard players operation #local_highest_win game.dungeon.echo > $(level)0 number

# Set starting difficulty
scoreboard players set #MinDifficulty game.dungeon.echo 1
scoreboard players set #MaxDifficulty game.dungeon.echo 4

# Increase echo difficulty spread to match the level
$scoreboard players set #BaseDifficulty game.dungeon.echo $(level)0
scoreboard players operation #MinDifficulty game.dungeon.echo += #BaseDifficulty game.dungeon.echo
scoreboard players operation #MaxDifficulty game.dungeon.echo += #BaseDifficulty game.dungeon.echo

# Cap diffiulcty based on the highest echo this player has achieved + 1
execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. \
run tellraw @a [{text:"(D3 Echo) highest win: "},{score:{name:"highest.win",objective:"game.dungeon.setup"},color:"blue"}]
execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. \
run tellraw @a [{text:"(D3 Echo) Local highest win: "},{score:{name:"#local_highest_win",objective:"game.dungeon.echo"},color:"blue"}]
scoreboard players operation #MaxDifficulty game.dungeon.echo < #local_highest_win game.dungeon.echo
scoreboard players add #MaxDifficulty game.dungeon.echo 1

# Ensure difficulty mod is bounded at +/-4 (so min difficiulty doesn't go above 5, or max below 1)
scoreboard players operation .difficulty_mod game.dungeon.echo < 4 number
scoreboard players operation .difficulty_mod game.dungeon.echo > -4 number

execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. \
run tellraw @a [{text:"(D3 Echo) Difficulty mod: "},{score:{name:".difficulty_mod",objective:"game.dungeon.echo"},color:"blue"}]

# Apply difficulty mod
scoreboard players operation #MinDifficulty game.dungeon.echo += .difficulty_mod game.dungeon.echo
scoreboard players operation #MaxDifficulty game.dungeon.echo += .difficulty_mod game.dungeon.echo

execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. \
run tellraw @a [{text:"(D3 Echo) Min/Max: "},{score:{name:"#MinDifficulty",objective:"game.dungeon.echo"},color:"blue"},{text:" "},{score:{name:"#MaxDifficulty",objective:"game.dungeon.echo"},color:"blue"}]

# If min/max are equal, subtract 1 from min so that the spread works
#execute if score #MinDifficulty game.dungeon.echo = #MaxDifficulty game.dungeon.echo run scoreboard players remove #MinDifficulty game.dungeon.echo 1

# Triple check that Max is a valid number
$scoreboard players operation #MaxDifficulty game.dungeon.echo > $(level)1 number

# Store in data
execute store result storage exigence:echo_selection min_difficulty int 1 run scoreboard players get #MinDifficulty game.dungeon.echo
execute store result storage exigence:echo_selection max_difficulty int 1 run scoreboard players get #MaxDifficulty game.dungeon.echo
$data modify storage exigence:echo_selection echos set from storage exigence:echo_selection Level$(level)Echos
$data modify storage exigence:echo_selection level set value $(level)

# Start iteration to call macros
execute store result score #temp Temp run data get storage exigence:echo_selection echos 1
function exigence:ember/private/choose_echo_nodes_b2 with storage exigence:echo_selection

#function exigence:ember/private/choose_echo_nodes_c with storage exigence:echo_selection
