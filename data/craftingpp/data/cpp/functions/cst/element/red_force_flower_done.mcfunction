summon bat ~ ~ ~ {DeathLootTable:"cpp:misc/red_force_flower",NoAI:1b,Tags:["cpp_temp"]}
loot spawn ~ ~ ~ kill @e[type=bat,tag=cpp_temp,distance=..1,sort=nearest,limit=1]
execute as @e[type=bat,tag=cpp_temp,distance=..1,sort=nearest,limit=1] run function cpp:kill
kill @s
