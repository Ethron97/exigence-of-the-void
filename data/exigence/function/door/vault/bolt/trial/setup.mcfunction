# Responsible for setting everything up required for the Bolt Trial/Crucible

#======================================================================================================

# DEBUG
#say Setup bolt trial

# Reset scores
scoreboard players set Bolt TrialTimer 0

# Clone ground
clone -419 125 -23 -409 125 -13 -419 151 -23

# Summon BoltThrower
#   Marker at center of the chamber whose rotation is used to spawn pizza
summon marker -413.5 152.1 -17.5 {Tags:["BoltTrialSetup","BoltThrower"]}
summon marker -410.43 152.1 -14.47 {Tags:["BoltTrialSetup","PizzaA"]}
summon marker -414.06 152.1 -22.46 {Tags:["BoltTrialSetup","PizzaB"]}

# Initialize pizza timer
scoreboard players set Pizza TrialTimer 70

# Replace end portal
fill -422 148 -26 -405 148 -10 end_portal replace black_concrete

# Set blue fire
execute if entity @a[scores={VaultCode=1},tag=Crucible] run fill -407 158 -25 -421 158 -11 minecraft:soul_soil replace minecraft:chiseled_tuff
