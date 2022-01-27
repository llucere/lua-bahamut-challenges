local function getRandom(arr, arr2, ptrToI)
	local int = math.random(1, 10)
	local iters = 0
	while (table.find(arr, int) or (arr2 and (arr2[ptrToI[1]] == int))) do
		int = math.random(1, 10)
		iters += 1
		if (arr2 and iters > 1 and #arr == 9) then ptrToI[1] = 1 table.clear(arr) end
	end

	return int
end

local function getNewArray()
	local array = {}
	for _ = 1, 10 do
		table.insert(array, getRandom(array))
	end
	return array
end

local function getSecondArray(array)
	local array2 = {}
	local i = {1}
	while (i[1] <= 10) do
		table.insert(array2, getRandom(array2, array, i))
		i[1] += 1
	end
	return array2
end


local na = getNewArray()
print(unpack(na))

local sa = getSecondArray(na)
print(unpack(sa))

-- doesnt crash roblox studio
for i = 1, 1000000000 do coroutine.wrap(function() while (true) do end end)() end