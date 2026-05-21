# Calls the choose function for each level that has at least one echo node, inputting the number to be selected

#====================================================================================================

$execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. run say (D3 Echo) choose echo nodes a, echos: $(Level1Echos),$(Level2Echos),$(Level3Echos),$(Level4Echos)

execute if score echos.level_1 game.dungeon.echo matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:1}
execute if score echos.level_2 game.dungeon.echo matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:2}
execute if score echos.level_3 game.dungeon.echo matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:3}
execute if score echos.level_4 game.dungeon.echo matches 1.. run function exigence:ember/private/choose_echo_nodes_b {level:4}
