# Time Converter
# Convert total minutes into hours and minutes

minutes = int(input(""))

hours = minutes // 60            # integer division
remaining_minutes = minutes % 60 # modulo operator

print(f"{hours} hrs {remaining_minutes} mins")
