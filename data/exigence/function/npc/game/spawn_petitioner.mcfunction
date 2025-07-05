say Spawn petitioner
summon minecraft:villager -411.5 159.00 -56.5 {Offers:{Recipes:[]},Tags:["NPC_Petitioner","Game","NPC"],NoAI:true,CustomName:{text:"Petitioner",color:"light_purple",italic:false},VillagerData:{profession:"minecraft:cleric",type:"minecraft:taiga"},Invulnerable:1b,Attributes:[{Name:"generic.movement_speed", Base:0.001}]}

# add to enemy team so wardens dont kill em
team join Enemy @e[name=Petitioner,type=minecraft:villager]