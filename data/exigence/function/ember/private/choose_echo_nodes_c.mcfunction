# Execute bounded difficulty to select a single echo at a time

## INPUT
#   chosen_difficulty
#   level

#==========================================================================================================

# DEBUG
#$say Choosing difficulty $(min_difficulty)..$(max_difficulty) for $(echos) echos
$say Choosing difficulty $(chosen_difficulty)

$execute if score Difficulty DungeonRun matches 1.. run tag @e[type=minecraft:armor_stand,tag=EchoNode,scores={EchoDifficulty=$(chosen_difficulty),ObjectLevel=$(level)},sort=random,limit=1] add ChosenEchoNode
execute if score Difficulty DungeonRun matches 0 run tag @e[type=minecraft:armor_stand,tag=EchoNode,scores={EchoDifficulty=1},sort=random,limit=1,tag=L0] add ChosenEchoNode
