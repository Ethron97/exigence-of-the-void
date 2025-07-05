# Set base ember drops from echo difficulty

## CONSTRAINTS
#   AS EchoNode

#==============================================================================================================

# Level 0
scoreboard players set @s[scores={EchoDifficulty=1}] BaseEmberDrop 5

# Level 1
execute if score @s ObjectLevel matches 1 run function exigence:ember/setup/ember_drops/1

# Level 2
execute if score @s ObjectLevel matches 2 run function exigence:ember/setup/ember_drops/2

# Level 3
execute if score @s ObjectLevel matches 3 run function exigence:ember/setup/ember_drops/3

# Level 4
execute if score @s ObjectLevel matches 4 run function exigence:ember/setup/ember_drops/4