local function foo(x)
  if x == nil or #arg == 0 then  -- Check if x is nil or if no arguments are provided
    return nil  -- Return nil if no argument provided
  end
  return x + 1
end

local y = foo(nil)
print(y)  -- Output: nil

local z = foo(10)
print(z)  -- Output: 11

-- Corrected behavior
local a = foo()
print(a) -- Output: nil

-- demonstrate the bugfix with a variadic function
local function bar(...)
  if select('#', ...) == 0 then
    return nil
  end
  local sum = 0
  for i = 1, select('#', ...) do
    sum = sum + select(i, ...)
  end
  return sum
end
print(bar()) -- nil
print(bar(1,2,3)) --6
