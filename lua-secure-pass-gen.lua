-- Function to generate a random password
function generatePassword(length)
    local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-=[]{}|;:,.<>?"
    local password = ""
    
    -- Seed the random number generator
    math.randomseed(os.time())
    
    -- Generate the password
    for i = 1, length do
        local rand = math.random(#charset)
        password = password .. string.sub(charset, rand, rand)
    end
    
    return password
end

-- Main program
print("Random Password Generator")
print("------------------------")

-- Ask for the desired password length
io.write("Enter the desired password length: ")
local length = tonumber(io.read())

-- Generate and display the password
if length and length > 0 then
    local password = generatePassword(length)
    print("Your generated password is: " .. password)
else
    print("Invalid input. Please enter a positive number.")
end
