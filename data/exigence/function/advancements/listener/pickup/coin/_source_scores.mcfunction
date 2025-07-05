# called by pickup/coin.mc to update scoreboards based on the source of the coin picked up

## CONSTRAINTS
#   AS player

#================================================================================================================

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'passive'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'passive'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'fallow_coffers'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'fallow_coffers'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'treasure_hunter'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'treasure_hunter'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'herbalism'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'herbalism'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'loot_and_fruit'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'loot_and_fruit'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'loot_and_scoot'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'loot_and_scoot'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'trust_fund'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'trust_fund'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'fatigue'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'fatigue'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'opulance'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'opulance'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'prosperity'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'prosperity'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'circulation'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'circulation'}

execute if data entity @s {Inventory:[{id:"minecraft:large_amethyst_bud",components:{"minecraft:custom_data":{source:'cash_crop'}}}]} run \
function exigence:advancements/listener/pickup/coin/macro {source:'cash_crop'}