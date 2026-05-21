## CONSTRAINTS
#   AS player

#====================================================================================================

execute store result score #random Random run random value 1..3

# 1/3 60 seconds of Beastsense
execute if score #random Random matches 1 run function exigence:player/effects/add_effect_time {effect:"beastsense",duration:1200}
execute if score #random Random matches 1 run tellraw @s [{text:"[Concordance] +60 seconds of ",color:"gray"},{text:"Beastsense",color:"yellow"}]

# 1/3 45 seconds of Glimmer
execute if score #random Random matches 2 run function exigence:player/effects/add_effect_time {effect:"glimmer",duration:900}
execute if score #random Random matches 2 run tellraw @s [{text:"[Concordance] +45 seconds of ",color:"gray"},{text:"Glimmer",color:"yellow"}]

# 1/3 30 seconds of Flicker
execute if score #random Random matches 3 run function exigence:player/effects/add_effect_time {effect:"flicker",duration:600}
execute if score #random Random matches 3 run tellraw @s [{text:"[Concordance] +30 seconds of ",color:"gray"},{text:"Flicker",color:"yellow"}]