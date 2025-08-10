# called by step on a schedule to open the door after climby starts to climb

#=============================================================================================================

# Return if score doesn't match expected
execute unless score Step Tutorial matches 1103 run return 1

fill 122 125 142 126 129 147 structure_void replace ice destroy

execute in exigence:tutorial run function exigence:tutorial/flow/step
