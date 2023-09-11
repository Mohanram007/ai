import heapq

class Node:
    def __init__(self, vertex, cost, heuristic):
        self.vertex = vertex
        self.cost = cost
        self.heuristic = heuristic

    def __lt__(self, other):
        return (self.cost + self.heuristic) < (other.cost + other.heuristic)

def a_star(graph, start, goal):
    open_set = []
    closed_set = set()
    
    heapq.heappush(open_set, Node(start, 0, heuristic[start]))
    parent = {}
    g_cost = {vertex: float('inf') for vertex in graph}
    g_cost[start] = 0
    
    while open_set:
        current = heapq.heappop(open_set).vertex
        
        if current == goal:
            path = []
            while current in parent:
                path.insert(0, current)
                current = parent[current]
            path.insert(0, start)
            return path, g_cost[goal]
        
        closed_set.add(current)
        
        for neighbor, cost in graph[current].items():
            if neighbor in closed_set:
                continue
            
            tentative_g_cost = g_cost[current] + cost
            if tentative_g_cost < g_cost[neighbor]:
                parent[neighbor] = current
                g_cost[neighbor] = tentative_g_cost
                heapq.heappush(open_set, Node(neighbor, tentative_g_cost, heuristic[neighbor]))
    
    return None, float('inf')

# Example graph represented by a dictionary (adjacency list)
graph = {
    'A': {'B': 10, 'C': 5},
    'B': {'A': 10, 'C': 15, 'D': 7},
    'C': {'A': 5, 'B': 15, 'D': 8},
    'D': {'B': 7, 'C': 8}
}

# Heuristic values for each vertex (manhattan distance to the goal)
heuristic = {
    'A': 15,
    'B': 10,
    'C': 5,
    'D': 0
}

start_vertex = 'A'
goal_vertex = 'D'

path, total_cost = a_star(graph, start_vertex, goal_vertex)

if path:
    print("Shortest Path:", path)
    print("Total Cost:", total_cost)
else:
    print("No path found from", start_vertex, "to", goal_vertex)
