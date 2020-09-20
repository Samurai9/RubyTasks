puts("Введите число последовательности")
serialNumber = gets.to_i

array = []
number = 1
count = 1

for i in 0..serialNumber-1 do
	if i != 0 then
		temp = number.to_s
		tempRes = ""
		for j in 0..temp.length-1 do
			if j==temp.length-1 or temp[j] != temp[j+1] then
				tempRes += count.to_s + temp[j]
				count = 1
			else
				count += 1
			end
		end
		number = tempRes.to_i
	end
	array.append(number)
end

array.each do |n|
	puts(n)
end
