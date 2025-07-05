# Pulse a redstone block based on a nodes current NodeState
$execute at @s positioned ~$(pulse_state) ~ ~ run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:air
$execute at @s positioned ~$(pulse_state) ~ ~ run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:redstone_block