# Update objective title based on game state

#====================================================================================================

# Display VITAL objectives always
#   Echo shards
#   Beacon state

# Display all other objectives once a player has reached that level this run
# They remain until completed
#   Level keys
#   Level doors
#   Cart cache
#   Forgotten X (dropped void cards)
#   Void cache

# Oh also resources?

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

#tellraw @s [{text:"",color:"#0f5a0f"}]
#tellraw @s [{text:"",color:"#660e0e"}]
#tellraw @s [{text:"",color:"#236b6b"}]
# Get colors
data modify storage exigence:objective green set value 'dark_green'
data modify storage exigence:objective red set value 'dark_red'
data modify storage exigence:objective aqua set value 'aqua'
execute if score resource.green.consume deck.analysis matches 0 run data modify storage exigence:objective green set value '#0f5a0f'
execute if score resource.red.consume deck.analysis matches 0 run data modify storage exigence:objective red set value '#660e0e'
execute if score resource.aqua.consume deck.analysis matches 0 run data modify storage exigence:objective aqua set value '#236b6b'

function exigence:bossbar/objective/update_title_macro with storage exigence:objective
