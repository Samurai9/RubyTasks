class Data_Sort
	
	@array
	@column_index

	def initialize(file)
		@array = init_array(file)
		@column_index = 0
	end

	def sort_by_number(number)
		tempIndex = number-1
		if (tempIndex < 0 or tempIndex > @array[0].length-1) then
			return puts "Wrong number, balbes"
		else
			sort_data(tempIndex)
			@column_index = tempIndex.to_i
		end 
	end

	def save_file(path = "./")
		# TODO проверка на path & @column_index, но надеюсь это не очень критично...
		file_name = "data_sorted_by_" + @array[0][@column_index].sub(" ", "_") + ".txt"

		file = File.new(path + file_name, "w")

		for i in 0...@array.length do
			for j in 0...@array[i].length do
				if (j == @array[i].length-1) then
					file.write(@array[i][j].to_s)
				else
					file.write(@array[i][j].to_s + ", ")
				end
			end
			file.write("\n")
		end
	end

	private

	def init_array(file)
		file_data = open file

		tempArray = Array.new()
		i = 0
		file_data.each {|line|
			tempArray[i] = line.split(", ")
			i += 1
		}

		tempArray.each {|secondArray|
			secondArray.each{|element|
				element.sub!("\r\n", "")
			}
		}
		return tempArray
	end

	def sort_data(index)
		if (@array[0].length < 1) then
			return puts "Empty array"
		end
		n = @array.length
		for i in 1...n do
			for j in 1...n-i do
				if(@array[j][index] > @array[j+1][index]) then
					temp = @array[j]
					@array[j] = @array[j+1]
					@array[j+1] = temp
				end
			end
		end
	end
end

puts("Number of column to sort")
column_number = gets.to_i

data = Data_Sort.new(File.new("./data_to_sort.txt"))
data.sort_by_number(column_number)
data.save_file()