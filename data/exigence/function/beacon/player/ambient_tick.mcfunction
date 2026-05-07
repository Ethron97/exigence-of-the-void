# Called by game tick - ambient tick

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score seconds.cooldown tick_counter matches 0 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/player/guide
execute if score seconds.cooldown tick_counter matches 5 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/player/guide
execute if score seconds.cooldown tick_counter matches 10 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/player/guide
execute if score seconds.cooldown tick_counter matches 15 if items entity @s weapon.mainhand #exigence:ardor run function exigence:beacon/player/guide
