clear @s iron_ingot{tp:1b} 255

execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run tag @s add tp.offhand
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with iron_ingot{display:{Name:'{"text":"점멸 곡검","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"오른손에 들자마자 전방으로 7칸 점멸한다.","color":"gray","bold":false,"italic":false}','{"text":"가능한 경우 벽을 통과할 수 있다.","color":"gray","bold":false,"italic":false}']},CustomModelData:1109,tp:1b}
execute if entity @s[tag=!tp.offhand,nbt={Inventory:[{Slot:-106b}]}] run give @s iron_ingot{display:{Name:'{"text":"점멸 곡검","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"오른손에 들자마자 전방으로 7칸 점멸한다.","color":"gray","bold":false,"italic":false}','{"text":"가능한 경우 벽을 통과할 수 있다.","color":"gray","bold":false,"italic":false}']},CustomModelData:1109,tp:1b}
tag @s remove tp.offhand