# Update objective title based on game state

#====================================================================================================

# Display PRIMARY objectives always
#   Echo shards
#   Level keys
#   Level doors
#   Beacons
#   General

# Display SECONDARY objectives once a player has reached that level this run
#   Cart cache
#   Forgotten X (dropped void cards)
#   Void cache

# When you ASCEND past a level, remove the green key/level door icons on it

data modify storage exigence:objective level_1 set value [{text:""}]
data modify storage exigence:objective gap_1 set value [{text:""}]
data modify storage exigence:objective level_2 set value [{text:""}]
data modify storage exigence:objective gap_2 set value [{text:""}]
data modify storage exigence:objective level_3 set value [{text:""}]
data modify storage exigence:objective gap_3 set value [{text:""}]
data modify storage exigence:objective level_4 set value [{text:""}]

# These subfunctions will update the gaps if necessary
function exigence:bossbar/objective/level_1/get_title
execute if score game.difficulty game.state matches 2.. run function exigence:bossbar/objective/level_2/get_title
execute if score game.difficulty game.state matches 3.. run function exigence:bossbar/objective/level_3/get_title
execute if score game.difficulty game.state matches 4.. run function exigence:bossbar/objective/level_4/get_title

function exigence:bossbar/objective/update_title_macro with storage exigence:objective