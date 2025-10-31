# Triggers when you pick up any echo OR key

## CONSTRAINTS
#   None, applies to all players from here

#======================================================================================================

# If there are no triumph scores, return
scoreboard players set tri.Total game.triumph 0
scoreboard players operation tri.Total game.triumph += tri.Elation game.triumph
scoreboard players operation tri.Total game.triumph += tri.Joy game.triumph
scoreboard players operation tri.Total game.triumph += tri.Gratification game.triumph
scoreboard players operation tri.Total game.triumph += tri.TrueAscension game.triumph
execute if score tri.Total game.triumph matches 0 run return 1

# DEBUG
say Triumph!
# TODO announce effects?

# (Currently not affected by Heighten)

# Elation (Speed)
execute if score tri.Elation game.triumph matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/speed/add_effect_time {level:2,duration:1200}
execute if score tri.Elation game.triumph matches 2 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/speed/add_effect_time {level:2,duration:2400}
execute if score tri.Elation game.triumph matches 3 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/speed/add_effect_time {level:2,duration:3600}

# Joy (jump, ie jumping for joy AHAHAHHAHAHAHAHAHAHHAHAHAHAHAHAHAHHAHAHAHAHAHAHAHAHAHHA send help)
execute if score tri.Joy game.triumph matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time {effect:"jump",duration:600}
execute if score tri.Joy game.triumph matches 2 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time {effect:"jump",duration:1200}
execute if score tri.Joy game.triumph matches 3 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/effects/add_effect_time {effect:"jump",duration:1800}

# Gratification (Saturation)
execute if score tri.Gratification game.triumph matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run effect give @s saturation 10

# True Ascension
execute if score tri.TrueAscension game.triumph matches 1 run execute as @e[type=minecraft:armor_stand,tag=Card,tag=Ascend] run function exigence:deck/play_ascend with entity @s equipment.mainhand.components."minecraft:custom_data"
