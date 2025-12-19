# Update display entities

## CONSTRAINTS
#   AT deck background

## INPUT
#   DATA deck_analysis

#=============================================================================================================

#say UPDATE SYSTEM IMPACT

## VALUES
# Get total
scoreboard players operation #total Temp = class.treasure.weighted deck.analysis
scoreboard players operation #total Temp += class.ember.weighted deck.analysis
scoreboard players operation #total Temp += class.deck.weighted deck.analysis
scoreboard players operation #total Temp += class.movement.weighted deck.analysis
scoreboard players operation #total Temp += class.survival.weighted deck.analysis
scoreboard players operation #total Temp += class.utility.weighted deck.analysis
scoreboard players operation #total Temp += class.other.weighted deck.analysis

# Get highest
scoreboard players operation #highest Temp = class.treasure.weighted deck.analysis
scoreboard players operation #highest Temp > class.ember.weighted deck.analysis
scoreboard players operation #highest Temp > class.deck.weighted deck.analysis
scoreboard players operation #highest Temp > class.movement.weighted deck.analysis
scoreboard players operation #highest Temp > class.survival.weighted deck.analysis
scoreboard players operation #highest Temp > class.utility.weighted deck.analysis
scoreboard players operation #highest Temp > class.other.weighted deck.analysis

# For each class, get fraction from either Total (% based) or Highest (ratio based)
scoreboard players operation #input Temp = class.treasure.weighted deck.analysis
execute as @n[distance=..5,type=block_display,tag=BarChart,tag=Treasure] run function exigence:hub/deck_analyzer/display/system_impact/private/update_bar
execute as @n[distance=..5,type=text_display,tag=SystemLabels,tag=Treasure] run function exigence:hub/deck_analyzer/display/system_impact/private/update_label
execute as @n[distance=..5,type=text_display,tag=SystemScores,tag=Treasure] run function exigence:hub/deck_analyzer/display/system_impact/private/update_score {class:"Treasure"}

scoreboard players operation #input Temp = class.ember.weighted deck.analysis
execute as @n[distance=..5,type=block_display,tag=BarChart,tag=Ember] run function exigence:hub/deck_analyzer/display/system_impact/private/update_bar
execute as @n[distance=..5,type=text_display,tag=SystemLabels,tag=Ember] run function exigence:hub/deck_analyzer/display/system_impact/private/update_label
execute as @n[distance=..5,type=text_display,tag=SystemScores,tag=Ember] run function exigence:hub/deck_analyzer/display/system_impact/private/update_score {class:"Ember"}

scoreboard players operation #input Temp = class.deck.weighted deck.analysis
execute as @n[distance=..5,type=block_display,tag=BarChart,tag=Deck] run function exigence:hub/deck_analyzer/display/system_impact/private/update_bar
execute as @n[distance=..5,type=text_display,tag=SystemLabels,tag=Deck] run function exigence:hub/deck_analyzer/display/system_impact/private/update_label
execute as @n[distance=..5,type=text_display,tag=SystemScores,tag=Deck] run function exigence:hub/deck_analyzer/display/system_impact/private/update_score {class:"Deck"}

scoreboard players operation #input Temp = class.movement.weighted deck.analysis
execute as @n[distance=..5,type=block_display,tag=BarChart,tag=Movement] run function exigence:hub/deck_analyzer/display/system_impact/private/update_bar
execute as @n[distance=..5,type=text_display,tag=SystemLabels,tag=Movement] run function exigence:hub/deck_analyzer/display/system_impact/private/update_label
execute as @n[distance=..5,type=text_display,tag=SystemScores,tag=Movement] run function exigence:hub/deck_analyzer/display/system_impact/private/update_score {class:"Movement"}

scoreboard players operation #input Temp = class.survival.weighted deck.analysis
execute as @n[distance=..5,type=block_display,tag=BarChart,tag=Survival] run function exigence:hub/deck_analyzer/display/system_impact/private/update_bar
execute as @n[distance=..5,type=text_display,tag=SystemLabels,tag=Survival] run function exigence:hub/deck_analyzer/display/system_impact/private/update_label
execute as @n[distance=..5,type=text_display,tag=SystemScores,tag=Survival] run function exigence:hub/deck_analyzer/display/system_impact/private/update_score {class:"Survival"}

scoreboard players operation #input Temp = class.utility.weighted deck.analysis
execute as @n[distance=..5,type=block_display,tag=BarChart,tag=Utility] run function exigence:hub/deck_analyzer/display/system_impact/private/update_bar
execute as @n[distance=..5,type=text_display,tag=SystemLabels,tag=Utility] run function exigence:hub/deck_analyzer/display/system_impact/private/update_label
execute as @n[distance=..5,type=text_display,tag=SystemScores,tag=Utility] run function exigence:hub/deck_analyzer/display/system_impact/private/update_score {class:"Utility"}

scoreboard players operation #input Temp = class.other.weighted deck.analysis
execute as @n[distance=..5,type=block_display,tag=BarChart,tag=Other] run function exigence:hub/deck_analyzer/display/system_impact/private/update_bar
execute as @n[distance=..5,type=text_display,tag=SystemLabels,tag=Other] run function exigence:hub/deck_analyzer/display/system_impact/private/update_label
execute as @n[distance=..5,type=text_display,tag=SystemScores,tag=Other] run function exigence:hub/deck_analyzer/display/system_impact/private/update_score {class:"Other"}
