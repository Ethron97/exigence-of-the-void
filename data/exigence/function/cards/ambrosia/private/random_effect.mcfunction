## CONSTRAINTS
#   AS player

#===========================================================================================================

execute store result score #random Random run random value 1..3

# 1/3 15 seconds Speed II
execute if score #random Random matches 1 run function exigence:player/effects/speed/add_effect_time {level:2,duration:300}

# 1/3 10 seconds Regen I
execute if score #random Random matches 2 run function exigence:player/effects/add_effect_time {effect:"regen",duration:200}

# 1/3 5 seconds Jump Boost II
execute if score #random Random matches 3 run function exigence:player/effects/add_effect_time {effect:"jump",duration:100}
