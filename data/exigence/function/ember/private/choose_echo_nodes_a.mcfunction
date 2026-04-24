# Calls the choose function for each level that has at least one echo node, inputting the number to be selected

#====================================================================================================

#$say (D3) choose echo nodes a, echos: $(Level1Echos),$(Level2Echos),$(Level3Echos),$(Level4Echos)

execute if score .level_1_echos game.dungeon.echo matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:1}
execute if score .level_2_echos game.dungeon.echo matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:2}
execute if score .level_3_echos game.dungeon.echo matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:3}
execute if score .level_4_echos game.dungeon.echo matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:4}
