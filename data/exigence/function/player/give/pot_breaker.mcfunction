# Give wooden sword that Can_Break decorated pots
give @s minecraft:wooden_sword[tooltip_display={hidden_components:["weapon","unbreakable"]},unbreakable={},can_break={blocks:'minecraft:decorated_pot'}\
,custom_name=[{text:"🔨 Pot Breaker 🔨",italic:false,color:"white"}],\
attribute_modifiers=[{type:'attack_damage',id:'exigence:no',amount:0.0,operation:'add_multiplied_base',slot:'mainhand'}]\
,lore=[[{text:"(Transient)",color:"dark_gray",italic:false}]]]

execute at @s run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~
