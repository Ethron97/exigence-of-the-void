# Reset advancement
advancement revoke @s only exigence:listener/pickup/vault_key

#say Pickup vault key

# Return if dungeon is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Add correct vault key item to inventory (switch)
execute if entity @s[nbt={Inventory:[{id:"minecraft:host_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"host"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:raiser_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"raiser"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:rib_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"rib"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:shaper_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"shaper"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:tide_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"tide"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:wayfinder_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"wayfinder"}

execute if entity @s[nbt={Inventory:[{id:"minecraft:sentry_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"sentry"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:snout_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"snout"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:wild_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"wild"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:vex_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"vex"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:coast_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"coast"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:ward_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"ward"}

execute if entity @s[nbt={Inventory:[{id:"minecraft:bolt_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"bolt"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:flow_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"flow"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:silence_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"silence"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:dune_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"dune"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:eye_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"eye"}
execute if entity @s[nbt={Inventory:[{id:"minecraft:spire_armor_trim_smithing_template",components:{"minecraft:custom_data":{vault_key_summoned:"true"}}}]}] run function exigence:vault/pickup_vault_key {key_name:"spire"}

stopsound @s neutral minecraft:block.beacon.ambient
