# Calls subfunction based on if trial or crucible

execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=1},tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_pizzas_crucible
execute unless entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=1},tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_pizzas_trial
