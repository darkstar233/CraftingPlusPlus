# 传送门
execute as @s[predicate=cpp:in_overworld,predicate=cpp:flower_portal_done] run function cpp:dim/flower_portal_in
execute as @s[predicate=cpp:in_flower,predicate=cpp:flower_portal_done] run function cpp:dim/flower_portal_out
# 体重
execute if block ~ ~ ~ heavy_weighted_pressure_plate run function cpp:misc/fatness
effect give @s[scores={cppFat=100..}] slowness 8
effect give @s[scores={cppFat=200..}] slowness 8 1
effect give @s[scores={cppFat=..-100}] weakness 8
effect give @s[scores={cppFat=..-200}] weakness 8 1
# 装备效果
execute as @s[predicate=cpp:inventory/stored_effects,predicate=!cpp:inventory/temperancer] run function cpp:rituals/effect/check
# 服饰
effect give @s[predicate=cpp:head/glow_hat] glowing 5
execute as @s[predicate=cpp:head/glass_helmet] anchored eyes unless block ~ ~ ~ water run effect give @s water_breathing 5
execute as @s[predicate=cpp:head/purple_eye,predicate=cpp:in_flower] run effect give @e[type=armor_stand,tag=cpp_wild_grass,distance=..100] glowing 5
execute as @s[predicate=cpp:feet/snow_boots] if block ~ ~-0.1 ~ #cpp:snows run effect give @s speed 2
# 连锁时间
execute as @s[scores={cppChainTick=1..}] run function cpp:chain/showtime
# 称号
execute as @s[predicate=cpp:mainhand/emerald] run function cpp:decor/mainhand_emerald
# 空岛
execute if score $skyislandMode cppConfig matches 1.. as @s[predicate=cpp:in_overworld] run function cpp:player/tick20_bsd
