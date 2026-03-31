# Calls subfunction based on if trial or crucible

execute if entity @a[scores={dead=0,game.player.vault_code=1},tag=ActivePlayer,tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_pizzas_crucible
execute unless entity @a[scores={dead=0,game.player.vault_code=1},tag=ActivePlayer,tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_pizzas_trial
