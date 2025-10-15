a = [1, 2, 2, 3, 4, 4, 5]

# Create an empty list to store unique values
res = []

# Iterate through each value in the list 'a'
for val in a:
  
    # Check if the value is not already in 'res'
    if val not in res:
      
        # If not present, append it to 'res'
        res.append(val)

print(res)
