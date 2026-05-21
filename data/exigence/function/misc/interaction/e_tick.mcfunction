# Called by game tick e tick bi-second

## CONSTRAINTS
#   AS/AT interaction

#====================================================================================================

execute if entity @s[tag=AltarInteract] run return run function exigence:altar/node/e_tick_interaction
execute if entity @s[tag=VaultHandle] run return run particle minecraft:glow ^ ^ ^-0.5 0.2 0.2 0.2 0 1
execute if entity @s[tag=DoorHandle] run return run particle minecraft:glow ^ ^2 ^ 0.3 0.2 0.3 0 1

particle minecraft:glow ~ ~ ~ 0.2 0.2 0.2 0 1