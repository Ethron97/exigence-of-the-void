#say Dust of appearnace looping

# Reveal closest block that hasn't been revealed
tag @e[type=minecraft:marker,tag=HiddenBlock,tag=ReflectionNO,tag=Appearing,tag=!Appeared,sort=nearest,limit=1] add NewAppeared
tag @e[type=minecraft:marker,tag=NewAppeared] add Appeared
tag @e[type=minecraft:marker,tag=NewAppeared] remove Appearing

execute as @e[type=minecraft:marker,tag=NewAppeared] at @s run function exigence:mirror/hidden_blocks/reveal_block

# Remove local tag
tag @e[type=minecraft:marker,tag=NewAppeared] remove NewAppeared

# If there are more to appear, iterate
execute if data storage exigence:dungeon {is_active:1} if entity @e[type=minecraft:marker,tag=Appearing] run schedule function exigence:hub/item_shop/frame/item/dust_of_appearance/private/trigger_loop 2t append
# If there are no more, schedule untrigger
#execute if data storage exigence:dungeon {is_active:1} unless entity @e[type=minecraft:marker,tag=Appearing] run schedule function exigence:vault/artifact/artifacts/dust_of_appearance/private/untrigger_loop 100t
