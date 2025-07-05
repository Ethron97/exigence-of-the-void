# Determine bounded difficulty

## INPUT
#   level, int 1-4

## OUTPUT
# Guaranteed to output MinDifficulty < MaxDifficulty

#==========================================================================================================

$say choose nodes on $(level)
# Set starting difficulty
scoreboard players set #MinDifficulty DungeonRun 0
scoreboard players set #MaxDifficulty DungeonRun 4

# Increase echo difficulty spread to match the level
$scoreboard players set #BaseDifficulty DungeonRun $(level)0
scoreboard players operation #MinDifficulty DungeonRun += #BaseDifficulty DungeonRun
scoreboard players operation #MaxDifficulty DungeonRun += #BaseDifficulty DungeonRun

# Cap diffiulcty based on the highest echo this player has achieved + 1
execute as @a[tag=ActivePlayer] run scoreboard players operation #MaxDifficulty DungeonRun < @s HighestWin
scoreboard players add #MaxDifficulty DungeonRun 1

# Ensure difficulty mod is bounded at +/-4 (so min difficiulty doesn't go above 5, or max below 1)
scoreboard players operation DifficultyMod DungeonRun < 4 number
scoreboard players operation DifficultyMod DungeonRun > -4 number

# Apply difficulty mod
scoreboard players operation #MinDifficulty DungeonRun += DifficultyMod DungeonRun
scoreboard players operation #MaxDifficulty DungeonRun += DifficultyMod DungeonRun

# Ensure MaxDifficulty is at least 1 (otherwise nothing will get selected)
scoreboard players operation #MaxDifficulty DungeonRun > 1 number
execute if score Difficulty DungeonRun matches 1 run scoreboard players operation #MaxDifficulty DungeonRun > 11 number
execute if score Difficulty DungeonRun matches 2 run scoreboard players operation #MaxDifficulty DungeonRun > 21 number
execute if score Difficulty DungeonRun matches 3 run scoreboard players operation #MaxDifficulty DungeonRun > 31 number
execute if score Difficulty DungeonRun matches 4 run scoreboard players operation #MaxDifficulty DungeonRun > 41 number

# Store in data
execute store result storage exigence:echo_selection min_difficulty int 1 run scoreboard players get #MinDifficulty DungeonRun
execute store result storage exigence:echo_selection max_difficulty int 1 run scoreboard players get #MaxDifficulty DungeonRun
$data modify storage exigence:echo_selection echos set from storage exigence:echo_selection Level$(level)Echos
$data modify storage exigence:echo_selection level set value $(level)

# Start iteration to call macros
execute store result score temp Temp run data get storage exigence:echo_selection echos 1
function exigence:ember/private/choose_echo_nodes_b2 with storage exigence:echo_selection

#function exigence:ember/private/choose_echo_nodes_c with storage exigence:echo_selection
