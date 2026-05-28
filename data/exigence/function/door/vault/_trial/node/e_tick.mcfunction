# Called from game tick e tick

## CONSTRAINTS
#   AS/AT Trial node

#====================================================================================================

## SWITCH
execute if entity @s[tag=Bolt] run return run function exigence:door/vault/bolt/trial/tick
execute if entity @s[tag=Dune] run return run function exigence:door/vault/dune/trial/tick
execute if entity @s[tag=Silence] run return run function exigence:door/vault/silence/trial/tick
execute if entity @s[tag=Eye] run return run function exigence:door/vault/eye/trial/tick
execute if entity @s[tag=Spire] run return run function exigence:door/vault/spire/trial/tick
execute if entity @s[tag=Flow] run return run function exigence:door/vault/flow/trial/tick