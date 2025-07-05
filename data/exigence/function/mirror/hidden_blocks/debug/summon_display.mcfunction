$summon minecraft:block_display ~ ~ ~ {Tags:["HiddenBlockDebug","NewHiddenBlockDebug","$(mirror)"],block_state:{Name:"minecraft:lightning_rod"},Glowing:1b}
team join LightPurple @e[type=minecraft:block_display,tag=NewHiddenBlockDebug]
tag @e[type=minecraft:block_display,tag=NewHiddenBlockDebug] remove NewHiddenBlockDebug
