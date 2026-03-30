# Called by player who clicks tellraw to disable the currency warning from the predungeon

## CONSTRAINTS
#   AS player

#====================================================================================================

tellraw @s [{text:"Currency warning disabled. You can re-enable this setting anytime from the menu in the ",color:"gray"}\
,{text:"Profile Selector ",color:dark_aqua},{text:"room.",color:gray}]
execute at @s run playsound minecraft:ui.button.click ambient @s ~ ~100 ~ 100 1

# Reset trigger score
scoreboard players reset @s DisableCurrencyWarning

scoreboard players set @s career.settings.currency_warn 0