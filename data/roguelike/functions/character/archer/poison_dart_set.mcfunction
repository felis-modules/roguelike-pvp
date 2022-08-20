tellraw @s {"text":"[클래스 PVP] 독 다트 사용 가능","color":"gray","bold":false,"italic":false}
#function roguelike:character/archer/poison_dart

scoreboard players set .query invparse 100031

function invparse:query_hotbar

data modify storage invparse:parsed Item.tag.ChargedProjectiles set value [{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:19b,Amplifier:2b,Duration:80,ShowParticles:1b}]}},{},{}]
data modify storage invparse:parsed Item.tag.Charged set value 1b

function invparse:update_hotbar

scoreboard players set @s ar_pdart 1