function table.find(tbl, val)
	for _, v in ipairs(tbl) do
		if (v == val) then return true end
	end
end

local function getRandom(arr, arr2, ind)
	local int = math.random(1, 10)
	while (table.find(arr, int) or (arr2 and (arr2[ind] == int))) do
		int = math.random(1, 10)
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
	for i = 1, 10 do
		table.insert(array2, getRandom(array2, array, i))
	end
	return array2
end

local na = getNewArray()
for i = 1, 10 do
	io.write(na[i], " ")
end

local sa = getSecondArray(na)
for i = 1, 10 do
	io.write(sa[i], " ")
end