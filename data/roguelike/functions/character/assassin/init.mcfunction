function roguelike:character/reset_player
function roguelike:character/reset_tag

tag @s add assassin
tag @s add RP_spause2

scoreboard players set @s as_smoke 3
scoreboard players set @s as_pearl 1
scoreboard players reset @s temp
scoreboard players reset @s RP_USED_PEARL
scoreboard players set @s as_stack 0
# execute store result score @s as_stack_guage run data get storage roguelike:rp rp_stack_guage
scoreboard players set @s as_stack_down 0

item replace entity @s hotbar.0 with warped_fungus_on_a_stick
item modify entity @s hotbar.0 roguelike:character/assassin/jinwoldo
item replace entity @s weapon.offhand with warped_fungus_on_a_stick
item modify entity @s weapon.offhand roguelike:character/assassin/jinwolgyom
item replace entity @s hotbar.1 with ender_pearl{display:{Name:'{"text":"암살자의 엔더 진주","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"자동 충전형 엔더 진주이다.","color":"gray","bold":false,"italic":false}']}}
item replace entity @s hotbar.2 with lingering_potion{display:{Name:'{"text":"암살자의 연막탄","color":"light_purple","bold":false,"italic":false}',Lore:['{"text":"암살자의 주특기인 연막술을 펼친다.","color":"gray","bold":false,"italic":false}']},CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:130}],CustomPotionColor:3881787,smoke:1b}
function roguelike:character/assassin/give_smoke
