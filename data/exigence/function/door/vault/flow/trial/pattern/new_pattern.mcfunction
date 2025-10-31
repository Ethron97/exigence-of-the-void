# Create new pattern

# Add 1 to #next speed
scoreboard players add #next PatternSpeed 1

# Get new random position
function exigence:door/vault/flow/trial/random_pos/rim_pos

# Select a random pattern
#execute store result score #random Random run random value 1..2
scoreboard players set #random Random 1

execute if score #random Random matches 1 run function exigence:door/vault/flow/trial/pattern/wave/new with entity @e[type=minecraft:marker,tag=FlowPosA,limit=1]
