
class LinkedList
	include Enumerable 

	def initialize()
		@head = nil
		@size = 0
	end

	def add(value)
		if (@head==nil) then
			head = Node.new(value)
			@head = head
		else
			lastNode = get_last()
			tempNode = Node.new(value)
			lastNode.next = tempNode
		end
		@size += 1
		return true
	end

	def get_last()
		tempNode = @head
		for i in 0...@size do
			if (tempNode.next != nil) then
				tempNode = tempNode.next
			end
		end
		return tempNode
	end

	def each(&block)
		tempNode = @head 
		while (tempNode != nil)
			yield(tempNode.value.to_i)
			tempNode = tempNode.next
		end
	end

	def [](n)
		if (n < 0 or n >= @size) then
			return nil
		else
			tempNode = @head
			while (n != 0) do
				tempNode = tempNode.next
				n -= 1
			end
			return tempNode.value
		end
	end

	def []=(n, value)
		if (n < 0 or n >= @size) then
			return nil
		else
			tempNode = @head
			while (n != 0) do
				tempNode = tempNode.next
				n -= 1
			end
			result = tempNode.value
			tempNode.value = value
			return result
		end
	end

	def iter()
		tempNode = @head
		for i in 0...@size do
			puts(tempNode.value)
			tempNode = tempNode.next
		end
	end

	class Node
		def initialize(value)
			@value = value
			@next = nil
		end

		def value
			@value
		end

		def value=(newValue)
			@value = newValue
		end

		def next
			@next
		end

		def next=(nextEl)
			@next = nextEl
		end
	end
end

ll = LinkedList.new()
ll.add(5)
ll.add(10)
ll.add(15)
ll.add(20)
puts("Iterator - ")
ll.iter()
puts("Each - ")
ll.each {|n| puts n}
puts("[] - " + ll[3].to_s)
puts("=[] - " + ll[2]=6.to_s)
puts("Each - ")
ll.each {|n| puts n}


puts(ll.any?)
puts(ll.first)
puts(ll.max)