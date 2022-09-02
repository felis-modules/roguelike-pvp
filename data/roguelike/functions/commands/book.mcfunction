
execute if score .state cmd_state_givebook matches 1 run tag @s add cmd_book_remove
scoreboard players set .state cmd_state_givebook 1

execute if entity @s[tag=cmd_book_remove] run scoreboard players set .state cmd_state_givebook 0

tellraw @s {"text":"[클래스 PVP 마스터] 클래스 리셋 시 전체에게 커맨드 북을 지급합니다.","color":"gray","bold":false,"italic":false}

tellraw @s {"text":"[클래스 PVP 마스터] 클래스 리셋 시 전체에게 커맨드 북을 지급하지 않습니다.","color":"gray","bold":false,"italic":false}

tag @s remove cmd_book_remove