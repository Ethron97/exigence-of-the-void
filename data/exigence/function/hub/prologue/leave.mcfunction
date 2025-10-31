# Called when the player finishes the prologue

## CONSTRAINTS
#   AS player

#=============================================================================================================

say Leaving prologue

tag @s remove Introducing

advancement grant @s only exigence:story/root
scoreboard players set @s career.prologue 1
