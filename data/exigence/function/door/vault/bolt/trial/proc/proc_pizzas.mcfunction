# Calls subfunction based on if trial or crucible

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Proc pizzas

execute if entity @s[tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_pizzas_crucible
execute unless entity @s[tag=Crucible] run function exigence:door/vault/bolt/trial/proc/proc_pizzas_trial
