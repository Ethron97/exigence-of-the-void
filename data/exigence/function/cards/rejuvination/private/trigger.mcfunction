# Called from play if resources successful

# Tellraw
tellraw @a [{text:"   Recycled ",color:"gray"},{"score":{"name":"@a[tag=ActivePlayer,sort=arbitrary,limit=1]","objective":"profile.data.deck.cr.cards_spellbound"},color:"gray"},{text:" ♻",color:"green"}]

# Switch to call recycles for each card spellbound
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=1..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=2..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=3..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=4..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=5..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=6..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=6..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=7..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=8..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=9..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=10..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=11..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=11..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=12..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=13..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=14..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=15..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=16..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=16..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=17..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=18..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=19..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=20..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=21..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=21..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=22..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=23..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=24..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=25..}] run function exigence:deck/recycle/try
execute unless entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=26..}] run return 1
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=26..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=27..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=28..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=29..}] run function exigence:deck/recycle/try
execute if entity @a[tag=ActivePlayer,scores={profile.data.deck.cr.cards_spellbound=30..}] run function exigence:deck/recycle/try

