def convert_minutes(total_minutes):
    hours = total_minutes // 60
    minutes = total_minutes % 60
    return f"{hours} hrs {minutes} minutes"

# Test it
print(convert_minutes(130)) # Expected: 2 hrs 10 minutes
