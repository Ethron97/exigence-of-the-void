# Subfunction of update_title
#   If all echos found = true

execute if score Difficulty DungeonRun matches 1..3 run bossbar set exigence:objective name [{text:"Return to Start",color:"green"}]
execute if score Difficulty DungeonRun matches 4 run bossbar set exigence:objective name [{text:"Find the Exit Portal in the Mirror Mines",color:"green"}]
