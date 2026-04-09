def remove_duplicates(input_string):
    result = ""
    for char in input_string:
        if char not in result:
            result += char
    return result

# Test it
print(remove_duplicates("BANANA")) # Expected: BAN
