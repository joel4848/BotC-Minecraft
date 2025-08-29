# generate_assign_functions.py

for i in range(1, 17):  # from 1 to 16 inclusive
    filename = f"assign_p{i}.mcfunction"
    with open(filename, "w") as f:
        f.write(f"scoreboard players set @s Player -{i}\n")
        f.write("scoreboard players set @s Alive 1\n")
        f.write("scoreboard players set @s Storyteller 0\n")
    print(f"Generated {filename}")
