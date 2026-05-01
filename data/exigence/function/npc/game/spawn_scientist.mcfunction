say (D3) Spawn scientist
summon minecraft:villager -479.5 61.00 -196.5 {Offers:{Recipes:[]},Tags:["NPC_Scientist","Game","NPC"],NoAI:true,CustomName:{text:"Scientist",color:"light_purple",italic:false},VillagerData:{profession:"minecraft:librarian",type:"minecraft:taiga"},Invulnerable:1b}

#execute positioned -479.5 61.00 -196.5 run attribute @e[type=minecraft:villager,tag=NPC_Scientist,distance=..1,limit=1] movement_speed base set 0.0

# If bookshelf not matched, tp into mirror and give reflection tag
execute positioned -479.5 61.00 -196.5 if entity @a[tag=Predungeon,advancements={exigence:story/match_bookshelf=false}] run tag @e[type=minecraft:villager,tag=NPC_Scientist,distance=..1] add Reflection
execute positioned -479.5 61.00 -196.5 if entity @a[tag=Predungeon,advancements={exigence:story/match_bookshelf=false}] run tp @e[type=minecraft:villager,tag=NPC_Scientist,distance=..1] -470.5 61.00 -191.5