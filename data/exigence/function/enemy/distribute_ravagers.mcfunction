# In charge of distributing the ravagers to various MenaceNodes around the map.
# Currently, no additional logic, except that each MenaceNode will only start with one ravager near it.

# Clear tag that remembers which nodes have been ravagered
tag @e[type=minecraft:armor_stand,tag=Ravagered] remove Ravagered

# Select ravagers for distribution
execute as @e[type=minecraft:ravager] run function exigence:enemy/ravager/distribute
