effect give @s[nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{tanker_shield:1b}}]}] slowness 2 10 true

tellraw @s[scores={RP_COOL1=1}] {"text":"[클래스 PVP] 단날 도끼의 번개 사용 가능","color":"gray","bold":false,"italic":false}

execute store result score @s pl_used_curse run data get entity @s SelectedItem.tag.move_curse

effect give @s[scores={pl_used_curse=1}] speed 2 1 false