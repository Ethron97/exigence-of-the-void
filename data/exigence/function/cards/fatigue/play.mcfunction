# Adds amount of menace equal to fatigue
# Increase fatigue by 1
#say I am play fatigue

execute store result storage exigence:menace amount int 1 run scoreboard players get Fatigue DungeonRun
data modify storage exigence:menace from set value 'fatigue'
function exigence:menace/trigger/from_ with storage exigence:menace

scoreboard players add Fatigue DungeonRun 1

# If Patience active, add treasure
execute if score Patience Modifiers matches 1.. run function exigence:treasure/queue/add_to_queue {source:"patience",amount:5}
execute if score Patience Modifiers matches 2.. run function exigence:treasure/queue/add_to_queue {source:"patience",amount:5}
execute if score Patience Modifiers matches 3.. run function exigence:treasure/queue/add_to_queue {source:"patience",amount:5}
