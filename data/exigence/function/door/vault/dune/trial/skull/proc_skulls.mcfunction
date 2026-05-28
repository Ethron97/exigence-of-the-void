# Calls subfunction based on if trial or crucible
#   When Skulls score on TrialTimer is 0

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Proc skulls

execute if entity @s[tag=Crucible] run function exigence:door/vault/dune/trial/skull/proc_skulls_crucible
execute unless entity @s[tag=Crucible] run function exigence:door/vault/dune/trial/skull/proc_skulls_trial
