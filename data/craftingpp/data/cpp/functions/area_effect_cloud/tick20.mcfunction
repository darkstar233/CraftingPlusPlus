# 生成龙蛋
execute if block ~1 ~-3 ~ end_portal run function cpp:misc/kill_dragon_done
# 世界生成
execute as @s[predicate=cpp:in_flower,tag=cpp_generate] at @s run function cpp:generate/type
