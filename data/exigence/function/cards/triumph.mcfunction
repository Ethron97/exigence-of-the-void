# Triggers when you pick up any echo OR key

## CONSTRAINTS
#   None, applies to all players from here

#======================================================================================================

# If there are no triumph scores, return
scoreboard players set Total Triumph 0
scoreboard players operation Total Triumph += Elation Triumph
scoreboard players operation Total Triumph += Joy Triumph
scoreboard players operation Total Triumph += Gratification Triumph
scoreboard players operation Total Triumph += TrueAscension Triumph
execute if score Total Triumph matches 0 run return 1

# DEBUG
say Triumph!
# TODO announce effects?

# (Currently not affected by Heighten)

# Elation (Speed)
execute if score Elation Triumph matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/speed/add_effect_time {level:2,duration:1200}
execute if score Elation Triumph matches 2 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/speed/add_effect_time {level:2,duration:2400}
execute if score Elation Triumph matches 3 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/speed/add_effect_time {level:2,duration:3600}

# Joy (jump, ie jumping for joy AHAHAHHAHAHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHAHAHAHAHAHHA)
execute if score Joy Triumph matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time {effect:"jump",duration:600}
execute if score Joy Triumph matches 2 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time {effect:"jump",duration:1200}
execute if score Joy Triumph matches 3 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time {effect:"jump",duration:1800}

# Gratification (Saturation)
execute if score Gratification Triumph matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run effect give @s saturation 10

# True Ascension
execute if score TrueAscension Triumph matches 1 run execute as @e[type=minecraft:armor_stand,tag=Card,tag=Ascend] run function exigence:deck/play_ascend with entity @s equipment.mainhand.components."minecraft:custom_data"
