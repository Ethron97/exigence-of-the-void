# Call as ravager with game.ravager.eating_cookie score

## CONSTRAINTS
#   AS/AT ravager eating_cookie

#====================================================================================================

scoreboard players remove @s game.ravager.eating_cookie 1

# Animate particles
function exigence:enemy/beastie_bite/eat_particle

# Sound
scoreboard players operation #interval game.ravager.eating_cookie = @s game.ravager.eating_cookie
scoreboard players operation #interval game.ravager.eating_cookie %= 4 number
execute if score #interval game.ravager.eating_cookie matches 0 run function exigence:enemy/beastie_bite/eat_sound

# When eating cookie runs and they aren't pacified out, regain AI
execute if score @s game.ravager.eating_cookie matches 0 unless score @s game.enemy.stun_timer matches 1.. run data merge entity @s {NoAI:false}