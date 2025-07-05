# Responsible for setting everything up required for the Dune Trial/Crucible

#======================================================================================================

# DEBUG
say Setup Dune

# Reset scores
scoreboard players set Dune TrialTimer 0
scoreboard players set Skulls TrialTimer 70

# Summon DuneCenter
#   Marker at center of the chamber whose rotation is used to spawn stuff
summon marker -413.5 152.0 -1.5 {Tags:["DuneTrialSetup","DuneCenter"]}
summon marker -413.5 152.0 -1.5 {Tags:["DuneTrialSetup","DunePosA"]}
summon marker -413.5 152.0 -1.5 {Tags:["DuneTrialSetup","DunePosB"]}

# Replace end portal
fill -406 148 6 -422 148 -10 end_portal replace black_concrete

# Set blue fire
execute if entity @a[scores={VaultCode=2},tag=Crucible] run fill -407 158 -9 -421 158 5 minecraft:soul_soil replace minecraft:chiseled_tuff
