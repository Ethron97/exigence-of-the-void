# Calls subfunction based on if trial or crucible
#   When Skulls score on TrialTimer is 0

execute if entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=2},tag=Crucible] run function exigence:door/vault/dune/trial/skull/proc_skulls_crucible
execute unless entity @a[tag=ActivePlayer,scores={dead=0,game.player.vault_code=2},tag=Crucible] run function exigence:door/vault/dune/trial/skull/proc_skulls_trial
