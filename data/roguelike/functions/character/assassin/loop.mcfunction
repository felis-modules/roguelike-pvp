


#execute as @a[nbt={SelectedItem:{id:"minecraft:lingering_potion",tag:{smoke:1b}}},tag=nuker] run scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:lingering_potion",tag:{smoke:1b}}},tag=nuker] smoker 5
#scoreboard players add @a[scores={linger_used=1..,smoker=1..},tag=nuker] nu_potion 1
#execute as @a[nbt={SelectedItem:{id:"minecraft:ender_pearl",tag:{pearl:1b}}},tag=nuker] run scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:ender_pearl",tag:{pearl:1b}}},tag=nuker] pearl_user 5
#scoreboard players add @a[scores={pearl_used=1..,pearl_user=1..},tag=nuker] pearl_count 1
#effect clear @a[tag=nuker] minecraft:blindness
#scoreboard players set @a pearl_used 0
#scoreboard players remove @a[scores={smoker=1..}] smoker 1
#scoreboard players remove @a[scores={pearl_user=1..}] pearl_user 1
