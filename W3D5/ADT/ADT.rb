class Stack
    attr_reader :stack
  
    def initialize
      @stack = []
    end
  
    def push(el)
      stack.push(el)
    end
  
    def pop
      stack.pop
    end
  
    def peek
      stack.last
    end
end

class Queue
    attr_reader :queue

    def initalize
        @queue = []
    end

    def enqueue(el)
        queue.push(el)
    end 

    def dequeue
        queue.shift
    end

    def peek 
        queue.first
    end
end 

class Map
    def intialize
        @map = []
    end

    def set(key,value)
        map.each_with_index do |subarray|
            if subarray[0] == key
                subarray[1] = value 
            else
                map << [key,value]
            end
        end
    end

    def get(key)
        map.each do |subarray|
            if subarray[0] == key 
                return subarray[1]
            end
        end
    end 

    def delete(key)
        map.each do |subarray|
            if subarray[0] == key
                map.delete(subarray[1])
            end
        end
    end

    def show
        @map
    end 
end