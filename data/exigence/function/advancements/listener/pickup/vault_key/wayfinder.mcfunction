# Reset advancement
advancement revoke @s only exigence:listener/pickup/vault_key/wayfinder

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Pickup vault key WAYFINDER (advancement listener)

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

stopsound @s neutral minecraft:block.beacon.ambient

function exigence:vault/pickup_vault_key {key_name:"wayfinder"}