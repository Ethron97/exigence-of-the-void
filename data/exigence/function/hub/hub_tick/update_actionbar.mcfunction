# Update action bar based on which zone the player is in

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Reset piggy tag
#tag @s[tag=PiggyBank,nbt=!{SelectedItem:{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}}] remove PiggyBank
# Add piggy tag if holding is
#tag @s[tag=!PiggyBank,nbt={SelectedItem:{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}}] add PiggyBank

execute as @s[predicate=exigence:level/hub] run title @s actionbar ["",{text:"",color:"white"}]
execute as @s[tag=ProfileSelecting] run title @s actionbar ["",{text:"[Profile Selection]",color:"dark_aqua"}]
execute as @s[tag=Invited,tag=!Joined] run title @s actionbar ["",{text:"Pending Co-op Invite",color:"green"}]
execute as @s[tag=Invited,tag=Joined] run title @s actionbar ["",{text:"Pending Co-op Profile Creation",color:"green"}]
execute as @s[tag=InviteSent] run title @s actionbar ["",{text:"Invite Sent",color:"green"}]
execute as @s[tag=MoneyShopping] run title @s actionbar ["",{text:"[Money Shop]",color:"gold"}]
execute as @s[tag=ItemShopping] run title @s actionbar ["",{text:"[Item Shop]",color:"gold"}]
execute as @s[tag=EmberShopping,tag=!CoopEmberShopping] run title @s actionbar ["",{text:"[Ember Shop]",color:"aqua"}]
execute as @s[tag=EmberShopping,tag=CoopEmberShopping] run title @s actionbar ["",{text:"[Ember Shop Coop]",color:"aqua"}]
execute as @s[tag=Lockerroom,tag=!Coop] run title @s actionbar ["",{text:"[Locker Room]",color:"light_purple"}]
execute as @s[tag=Lockerroom,tag=Coop] run title @s actionbar ["",{text:"[Locker Room] ",color:"light_purple"},{text:"Coop",color:"green"}]
execute as @s[tag=Predungeon] unless entity @s[tag=Coop,tag=!Lockerroom] run title @s actionbar ["",{text:"[Predungeon]",color:"dark_purple"}]
execute as @s[tag=Predungeon] if entity @s[tag=Coop,tag=!Lockerroom] run title @s actionbar ["",{text:"[Predungeon] ",color:"dark_purple"},{text:"Coop Leader",color:"green"}]
execute as @s[tag=Coop,tag=!Lockerroom] run title @s actionbar ["",{text:"[Predungeon] ",color:"dark_purple"},{text:"Coop",color:"green"}]
execute as @s[tag=EmberViewing,tag=!CoopViewing] run title @s actionbar ["",{text:"[Ember View]",color:"aqua"}]
execute as @s[tag=EmberViewing,tag=CoopViewing] run title @s actionbar ["",{text:"[Ember View Coop]",color:"aqua"}]
#execute as @s[tag=!MoneyShopping,tag=!EmberShopping,tag=!Lockerroom,tag=!Predungeon,tag=!EmberViewing,tag=!ItemShopping,tag=!PiggyBank,tag=!Coop] run title @s actionbar ["",""]

# Piggy bank
#execute as @s[tag=PiggyBank] run title @s actionbar ["",{text:"Piggy Bank",color:"gray",italic:false},{text:": ",color:"gray",italic:false},{"score":{"name":"@s","objective":"PiggyBank"},color:"gold"},{text:" coins",color:"gray",italic:false}]

# Exalting
execute as @s[tag=ActivePlayer,tag=Exalting] run title @s actionbar ["",{text:"Use the carrot on stick to return to hub",color:"aqua",italic:false}]
