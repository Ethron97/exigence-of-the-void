# Summon a randomized firework ball

## CONSTRAINTS
#   AT location

#====================================================================================================

## SHAPE
execute store result score random Random run random value 1..100
# 30% small ball
execute if score random Random matches 1..30 run data modify storage exigence:firework shape set value "small_ball"
# 50% big ball
execute if score random Random matches 31..80 run data modify storage exigence:firework shape set value "large_ball"
# 12% burst
execute if score random Random matches 81..92 run data modify storage exigence:firework shape set value "burst"
# 7% star
execute if score random Random matches 93..99 run data modify storage exigence:firework shape set value "star"
# 1% creeper
execute if score random Random matches 100 run data modify storage exigence:firework shape set value "creeper"

## COLORS
execute store result score random Random run random value 1..2
execute if score random Random matches 1 run data modify storage exigence:firework colors set value 61183
execute if score random Random matches 2 run data modify storage exigence:firework colors set value 16761856

## FADE_COLORS
execute store result score random Random run random value 1..2
execute if score random Random matches 1 run data modify storage exigence:firework fade_colors set value 61183
execute if score random Random matches 2 run data modify storage exigence:firework fade_colors set value 16761856

## TRAIL?
execute store result score random Random run random value 1..10
execute if score random Random matches 1..9 run data modify storage exigence:firework has_trail set value false
execute if score random Random matches 10 run data modify storage exigence:firework has_trail set value true

## TWINKLE?
execute store result score random Random run random value 1..10
execute if score random Random matches 1..9 run data modify storage exigence:firework has_twinkle set value false
execute if score random Random matches 10 run data modify storage exigence:firework has_twinkle set value true

## LIFETIME
execute store result score random Random run random value 8..25
execute store result score randomB Random run random value 8..25
scoreboard players operation random Random += randomB Random
execute store result storage exigence:firework lifetime int 1 run scoreboard players get random Random

# Call summon
function exigence:game/other/exalt/summon_firework with storage exigence:firework
