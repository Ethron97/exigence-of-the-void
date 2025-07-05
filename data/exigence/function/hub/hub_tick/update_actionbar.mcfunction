# Update action bar based on which zone the player is in

# Reset piggy tag
#tag @a[tag=PiggyBank,nbt=!{SelectedItem:{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}}] remove PiggyBank
# Add piggy tag if holding is
#tag @a[tag=!PiggyBank,nbt={SelectedItem:{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}}] add PiggyBank

execute as @a[tag=!ActivePlayer,predicate=exigence:level/hub] run title @s actionbar ["",{text:"",color:"white"}]
execute as @a[tag=!ActivePlayer,tag=MoneyShopping] run title @s actionbar ["",{text:"[Money Shop]",color:"gold"}]
execute as @a[tag=!ActivePlayer,tag=ItemShopping] run title @s actionbar ["",{text:"[Item Shop]",color:"gold"}]
execute as @a[tag=!ActivePlayer,tag=EmberShopping,tag=!CoopEmberShopping] run title @s actionbar ["",{text:"[Ember Shop]",color:"aqua"}]
execute as @a[tag=!ActivePlayer,tag=EmberShopping,tag=CoopEmberShopping] run title @s actionbar ["",{text:"[Ember Shop Coop]",color:"aqua"}]
execute as @a[tag=!ActivePlayer,tag=Lockerroom,tag=!Coop] run title @s actionbar ["",{text:"[Locker Room]",color:"light_purple"}]
execute as @a[tag=!ActivePlayer,tag=Lockerroom,tag=Coop] run title @s actionbar ["",{text:"[Locker Room] ",color:"light_purple"},{text:"Coop",color:"green"}]
execute as @a[tag=!ActivePlayer,tag=Predungeon] unless entity @a[tag=Coop,tag=!Lockerroom] run title @s actionbar ["",{text:"[Predungeon]",color:"dark_purple"}]
execute as @a[tag=!ActivePlayer,tag=Predungeon] if entity @a[tag=Coop,tag=!Lockerroom] run title @s actionbar ["",{text:"[Predungeon] ",color:"dark_purple"},{text:"Coop Leader",color:"green"}]
execute as @a[tag=!ActivePlayer,tag=Coop,tag=!Lockerroom] run title @s actionbar ["",{text:"[Predungeon] ",color:"dark_purple"},{text:"Coop",color:"green"}]
execute as @a[tag=!ActivePlayer,tag=EmberViewing,tag=!CoopViewing] run title @s actionbar ["",{text:"[Ember View]",color:"aqua"}]
execute as @a[tag=!ActivePlayer,tag=EmberViewing,tag=CoopViewing] run title @s actionbar ["",{text:"[Ember View Coop]",color:"aqua"}]
#execute as @a[tag=!ActivePlayer,tag=!MoneyShopping,tag=!EmberShopping,tag=!Lockerroom,tag=!Predungeon,tag=!EmberViewing,tag=!ItemShopping,tag=!PiggyBank,tag=!Coop] run title @s actionbar ["",""]

# Piggy bank
#execute as @a[tag=!ActivePlayer,tag=PiggyBank] run title @s actionbar ["",{text:"Piggy Bank",color:"gray",italic:false},{text:": ",color:"gray",italic:false},{"score":{"name":"@s","objective":"PiggyBank"},color:"gold"},{text:" coins",color:"gray",italic:false}]

# Exalting
execute as @a[tag=ActivePlayer,tag=Exalting] run title @s actionbar ["",{text:"Use the carrot on stick to return to hub",color:"aqua",italic:false}]
