# Called from game tick e tick node

## CONSTRAINTS
#   AS/AT vault node

#====================================================================================================

# Etick should be added to vault nodes when a key gets picked up, and then removed when the door is opened

particle enchant ~ ~ ~ 3 3 3 1 5
execute if entity @s[tag=Vault_tide] run particle enchant ~ ~5 ~ 3 3 3 1 5
