# Called from play if resources successful

# Tellraw
tellraw @a [{text:"   Recycled ",color:"gray"},{"score":{"name":"@a[tag=ActivePlayer,sort=arbitrary,limit=1]","objective":"cr_cardsSpellbound"},color:"gray"},{text:" ♻",color:"green"}]

# Switch to call recycles for each card spellbound
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=1..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=2..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=3..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=4..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=5..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=6..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=6..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=7..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=8..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=9..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=10..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=11..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=11..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=12..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=13..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=14..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=15..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=16..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=16..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=17..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=18..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=19..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=20..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=21..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=21..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=22..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=23..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=24..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=25..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=26..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=26..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=27..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=28..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=29..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={cr_cardsSpellbound=30..}] run function exigence:deck/recycle/try

