
function roguelike:character/loop
function roguelike:commands/loop

# Shield block sound
execute at @a[scores={SHIELD_BLOCKED=1..}] run playsound minecraft:item.shield.block master @a[distance=..30] ~ ~ ~ 1 0.96 0

# Reset Event Listeners
# THIS PROCEDURE MUST BE DONE FINALLY

scoreboard players set @a USED_CARROTSTICK 0
scoreboard players set @a DMG_TAKEN 0
scoreboard players set @a DMG_DEALT 0
scoreboard players set @a SHIELD_BLOCKED 0