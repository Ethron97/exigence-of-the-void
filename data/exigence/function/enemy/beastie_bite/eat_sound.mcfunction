## CONSTRAINTS
#   AS/AT ravager

#====================================================================================================

## SWITCH
execute if score @s game.ravager.eating_cookie matches 81.. run return run playsound entity.generic.eat hostile @a ~ ~ ~ 1 1
execute if score @s game.ravager.eating_cookie matches 61..80 run return run playsound entity.generic.eat hostile @a ~ ~ ~ 1 0.9
execute if score @s game.ravager.eating_cookie matches 41..60 run return run playsound entity.generic.eat hostile @a ~ ~ ~ 1 0.8
execute if score @s game.ravager.eating_cookie matches 21..40 run return run playsound entity.generic.eat hostile @a ~ ~ ~ 1 0.7
execute if score @s game.ravager.eating_cookie matches ..20 run return run playsound entity.generic.eat hostile @a ~ ~ ~ 1 0.6