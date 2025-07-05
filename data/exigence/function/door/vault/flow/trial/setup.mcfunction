# Responsible for setting everything up required for the Flow Trial/Crucible

#======================================================================================================

# Reset scores
scoreboard players set Flow TrialTimer 0
scoreboard players set #next PatternSpeed 0

# Summon setup markers
summon marker -355.5 152.00 -25.5 {Tags:["FlowTrialSetup","FlowCenter"]}
summon marker -355.5 152.00 -25.5 {Tags:["FlowTrialSetup","FlowPosA"]}

# Replace end portal
fill -347 148 -34 -364 148 -18 end_portal replace black_concrete

# Blue fire
execute if entity @a[scores={VaultCode=6},tag=Crucible] run fill -363 158 -19 -349 158 -33 minecraft:soul_soil replace minecraft:chiseled_tuff
