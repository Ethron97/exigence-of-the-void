# Calls the choose function for each level that has at least one echo node, inputting the number to be selected
$say choose echo nodes a, echos: $(Level1Echos),$(Level2Echos),$(Level3Echos),$(Level4Echos)
execute if score Level1Echos DungeonRun matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:1}
execute if score Level2Echos DungeonRun matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:2}
execute if score Level3Echos DungeonRun matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:3}
execute if score Level4Echos DungeonRun matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:4}
