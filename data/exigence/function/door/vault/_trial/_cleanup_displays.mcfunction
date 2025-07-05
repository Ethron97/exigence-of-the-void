# Cleans up anti-chamber displays

## INPUT
#   INT vault_code
#   STR vault_name

#==============================================================================================================

# DEBUG
#$say Cleanup displays $(vault_name)

$kill @e[type=minecraft:text_display,scores={VaultCode=$(vault_code)}]
$kill @e[type=minecraft:block_display,scores={VaultCode=$(vault_code)}]
$kill @e[type=minecraft:interaction,scores={VaultCode=$(vault_code)}]

# Kill item displays
$function exigence:menu/unload_menu {menu_tag:'VaultDisplay$(vault_name)'}

# Add "ChooseLock" tag to the other altar so the interact particles go away
$tag @e[type=minecraft:armor_stand,scores={VaultCode=$(vault_code)}] add ChooseLock
