# Handle possible lighting of giving spark

## CONSTRAINTS
#   AS player

#==============================================================================================================

# Validate that difficulty is 3 and primary player has not freed petitioner yet, and has talked to petiioner yet
execute if score Difficulty DungeonRun matches 3 if entity @a[tag=ActivePlayer,tag=PrimaryPlayer,advancements={exigence:story/light_altars=false,exigence:story/talk_to_petitioner=true}] run function exigence:player/give/spark
