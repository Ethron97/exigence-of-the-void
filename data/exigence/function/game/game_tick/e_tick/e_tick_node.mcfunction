# Tick on all node markers

## CONSTRAINTS
#   AS/AT marker NODE

#====================================================================================================

## SWITCH
execute if entity @s[tag=MenaceNode] run return run function exigence:menace/node/e_tick
execute if entity @s[tag=BerryNode] run return run function exigence:botany/node/e_tick
execute if entity @s[tag=AltarNode] run return run function exigence:altar/node/e_tick
execute if entity @s[tag=VaultNode] run return run function exigence:vault/node/e_tick
execute if entity @s[tag=BellNode] run return run function exigence:bell/node/e_tick
execute if entity @s[tag=BookshelfNode] run return run function exigence:mirror/bookshelf/node/e_tick
execute if entity @s[tag=DoorNode] run return run function exigence:door/node/e_tick
execute if entity @s[tag=BeaconNode] run return run function exigence:beacon/node/e_tick
execute if entity @s[tag=ExitNode] run return run function exigence:game/exit/node/e_tick
