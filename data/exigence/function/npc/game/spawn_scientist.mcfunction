say Spawn scientist
summon minecraft:villager -479.5 61.00 -196.5 {Offers:{Recipes:[]},Tags:["NPC_Scientist","Game","NPC"],NoAI:true,CustomName:{text:"Scientist",color:"light_purple",italic:false},VillagerData:{profession:"minecraft:librarian",type:"minecraft:taiga"},Invulnerable:1b,Attributes:[{Name:"generic.movement_speed", Base:0.001}]}

# If bookshelf not matched, tp into mirror and give reflection tag
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=false}] run tag @e[type=minecraft:villager,tag=NPC_Scientist] add Reflection
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=false}] run tp @e[type=minecraft:villager,tag=NPC_Scientist,tag=Reflection] -470.5 61.00 -191.5