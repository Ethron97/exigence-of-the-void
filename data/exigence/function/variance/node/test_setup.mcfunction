# Call as single variance node
scoreboard players set @s[tag=VarianceNode] game.node.node_state 0
execute as @s[tag=VarianceNode] run function exigence:misc/node/pulse_state

# Generate and assign random values based on the max node state
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=2}] store result score @s game.node.node_state run random value 1..2
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=3}] store result score @s game.node.node_state run random value 1..3
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=4}] store result score @s game.node.node_state run random value 1..4
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=5}] store result score @s game.node.node_state run random value 1..5
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=6}] store result score @s game.node.node_state run random value 1..6
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=7}] store result score @s game.node.node_state run random value 1..7
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=8}] store result score @s game.node.node_state run random value 1..8
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=9}] store result score @s game.node.node_state run random value 1..9
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=10}] store result score @s game.node.node_state run random value 1..10
execute as @s[tag=VarianceNode,scores={Maxgame.node.node_state=11}] store result score @s game.node.node_state run random value 1..11

execute as @s[tag=VarianceNode] run function exigence:misc/node/pulse_state
