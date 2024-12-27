local function foo(x)
  if x == nil then
    return nil  -- Correct handling of nil
  end
  return x + 1
end

local y = foo(nil)
print(y)  -- Output: nil

local z = foo(10)
print(z)  -- Output: 11

-- Unexpected behavior
local a = foo( ) -- Calling foo() with no arguments
print(a) -- Output: 1, expected nil

