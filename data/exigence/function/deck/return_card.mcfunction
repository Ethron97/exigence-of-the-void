say DEPCRECATED
#say Return card
$execute positioned -384.5 37.00 -116.5 as @a[tag=PrimaryPlayer] run function exigence:player/give_from_item/give_card {card_name:'$(card_name)'}
