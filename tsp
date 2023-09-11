from itertools import permutations

def tsp_brute_force(graph):
    nodes = list(graph.keys())
    route_length = len(nodes)
    minimum_distance = None
    minimum_route = None

    for route in permutations(range(1, route_length)):
        current_distance = graph[0][route[0]]
        for i in range(route_length - 2):
            current_distance += graph[route[i]][route[i+1]]
        current_distance += graph[route[-1]][0]

        if minimum_distance is None or current_distance < minimum_distance:
            minimum_distance = current_distance
            minimum_route = route

    return minimum_distance, minimum_route

# Example graph
graph = {
    0: {0: 0, 1: 10, 2: 15, 3: 20},
    1: {0: 10, 1: 0, 2: 35, 3: 25},
    2: {0: 15, 1: 35, 2: 0, 3: 30},
    3: {0: 20, 1: 25, 2: 30, 3: 0}
}

# Call the tsp_brute_force function with the example graph
distance, route = tsp_brute_force(graph)
print("Shortest route:", [0] + [x+1 for x in route] + [0])
print("Travel cost:", distance)
