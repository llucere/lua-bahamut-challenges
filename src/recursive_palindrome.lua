local function isPalindrome(str)
	if (#str <= 1) then return true end
	local firstChar, lastChar = string.sub(str, 1, 1), string.sub(str, -1, -1)
	if (firstChar == lastChar) then
		return isPalindrome(string.sub(str, 2, -2))
	else
		return false
	end
end

print(isPalindrome("tattarrattat"))