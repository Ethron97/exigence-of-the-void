# Check if this player should have step height qol

## CONSTRAINTS
#   AS player

## RETURN
#   1 = yes, 0 = no

#====================================================================================================

# Early return if they have no speed or jump
execute unless entity @s[predicate=exigence:effects/speed_or_jump] run return 0
#----------------------------------------------------------------------------------------------------

## SWITCH (in rough order of most common to least common)
# IF jump boost or speed 2+
execute if score @s game.player.effects.speed2 matches 1.. run return 1
execute if score @s game.player.effects.jump matches 1.. run return 1
#   OR they have ravager hoof artifact + speed 1
execute if score @s game.player.mod.ravager_hoof matches 1 if score @s game.player.effects.speed matches 1.. run return 1

execute if score @s game.player.effects.jump4 matches 1.. run return 1
execute if score @s game.player.effects.jump6 matches 1.. run return 1
execute if score @s game.player.effects.jump8 matches 1.. run return 1

execute if score @s game.player.effects.speed3 matches 1.. run return 1
execute if score @s game.player.effects.speed4 matches 1.. run return 1
execute if score @s game.player.effects.speed5 matches 1.. run return 1
execute if score @s game.player.effects.speed6 matches 1.. run return 1
execute if score @s game.player.effects.speed7 matches 1.. run return 1
execute if score @s game.player.effects.speed8 matches 1.. run return 1
execute if score @s game.player.effects.speed9 matches 1.. run return 1
execute if score @s game.player.effects.speed10 matches 1.. run return 1
