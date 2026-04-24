# At the start of the game, a set number of hazards on each level are automatically fully engaged
# This is to give more randomness at the start of the run without needing to crank hazard rates

# This function is responsible for SELECTING, but not TRIGGERING, the base starting hazard noes

# startin_hazard/increase/# can also be called from instant cards

#====================================================================================================

## CORE / DEFAULT
# On each level, pick limit=X active hazard nodes to be on at the start of the game.
execute if score game.difficulty game.state matches 1.. run function exigence:hazard/starting_hazard/increase/1
execute if score game.difficulty game.state matches 1.. run function exigence:hazard/starting_hazard/increase/1
execute if score game.difficulty game.state matches 1.. run function exigence:hazard/starting_hazard/increase/1

execute if score game.difficulty game.state matches 2.. run function exigence:hazard/starting_hazard/increase/2
execute if score game.difficulty game.state matches 2.. run function exigence:hazard/starting_hazard/increase/2
execute if score game.difficulty game.state matches 2.. run function exigence:hazard/starting_hazard/increase/2

execute if score game.difficulty game.state matches 3.. run function exigence:hazard/starting_hazard/increase/3
execute if score game.difficulty game.state matches 3.. run function exigence:hazard/starting_hazard/increase/3
execute if score game.difficulty game.state matches 3.. run function exigence:hazard/starting_hazard/increase/3

execute if score game.difficulty game.state matches 4.. run function exigence:hazard/starting_hazard/increase/4
execute if score game.difficulty game.state matches 4.. run function exigence:hazard/starting_hazard/increase/4
execute if score game.difficulty game.state matches 4.. run function exigence:hazard/starting_hazard/increase/4

## WARDS
# +1 hazard on level 4 for each Ward destroyed
#execute if score game.difficulty game.state matches 4.. if score ward.Emerald game.story.wards matches 0 run function exigence:hazard/starting_hazard/increase/4
#execute if score game.difficulty game.state matches 4.. if score ward.Sapphire game.story.wards matches 0 run function exigence:hazard/starting_hazard/increase/4
#execute if score game.difficulty game.state matches 4.. if score ward.Ruby game.story.wards matches 0 run function exigence:hazard/starting_hazard/increase/4
#execute if score game.difficulty game.state matches 4.. if score ward.Topaz game.story.wards matches 0 run function exigence:hazard/starting_hazard/increase/4
#execute if score game.difficulty game.state matches 4.. if score ward.Amethyst game.story.wards matches 0 run function exigence:hazard/starting_hazard/increase/4
