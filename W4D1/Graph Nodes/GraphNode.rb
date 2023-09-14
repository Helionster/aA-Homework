class GraphNode
    attr_accessor :val, :neighbors

    def initalize(val)
        self.val = val 
        self.neighbors = []
    end

    def add_neighbor(node)
        self.neighbors << node
    end 
end

def bfs(starting_node,target_value)
    queue = [starting_node]
    visited = []

    until queue.empty?
        node = queue.shift
        if !visited.include?(node)
            return node.val if node.val == target_value
            visited << node 
            queue += node.neighbors
        end
    end

    nil
end 
