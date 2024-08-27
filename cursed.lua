-- string + number
-- square bracket for string
local a = 2
local b = [[1]]
local c = a + b
print(c)

-- silly escape character stuff with strings
local tbl = {}
tbl["\"\"\"\"\""] = 10
print(tbl["\"\"\"\"\""])

-- null characters, it will look the exact same, but it isnt
local str1 = "this is a string\0"
local str2 = "this is a string\01"
print(str1 == str2) -- not equal
print("\""..str1.."\"") -- no visible trailing characters
print("\""..str2.."\"") -- no visible trailing characters
print(str1:len(), str2:len()) -- same length

-- not really cursed, but a cool metatable thing
local myFunction = setmetatable({alt = function()
    print("alt")
end}, {__call = function()
    print("function called")
end})

myFunction()
myFunction.alt()
