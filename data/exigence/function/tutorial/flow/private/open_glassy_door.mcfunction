# called by step on a schedule to open the door after glassy crosses the glass pond

#=============================================================================================================

# Return if score doesn't match expected
execute unless score Step Tutorial matches 1308 run return 1

execute in exigence:tutorial run fill 195 129 81 198 133 78 structure_void replace ice destroy

execute in exigence:tutorial run function exigence:tutorial/flow/step
