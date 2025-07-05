# Called by game_on.mcfunction

# Call node activates
#   Resets, the set active
execute as @e[type=minecraft:armor_stand,tag=HazardNode] run function exigence:hazard/node/activate
