# Call ambient noise and reset score

## CONSTRAINTS
#   AS/AT ExitNode

#====================================================================================================

#say (D3) Ambient noise

playsound minecraft:block.portal.ambient ambient @a ~ ~ ~ 2 0.8
execute store result score @s game.entity.ambient_noise_cooldown run random value 160..280