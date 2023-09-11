def is_valid_assignment(assignment, var, color, neighbors):
    for neighbor in neighbors[var]:
        if neighbor in assignment and assignment[neighbor] == color:
            return False
    return True

def backtrack(assignment, variables, colors, neighbors):
    if len(assignment) == len(variables):
        return assignment
    
    var = select_unassigned_variable(assignment, variables)
    for color in colors:
        if is_valid_assignment(assignment, var, color, neighbors):
            assignment[var] = color
            result = backtrack(assignment, variables, colors, neighbors)
            if result is not None:
                return result
            del assignment[var]
    return None

def select_unassigned_variable(assignment, variables):
    for var in variables:
        if var not in assignment:
            return var
    return None

# Map with regions and their neighbors
regions = {
    'WA': ['NT', 'SA'],
    'NT': ['WA', 'SA', 'Q'],
    'SA': ['WA', 'NT', 'Q', 'NSW', 'V'],
    'Q': ['NT', 'SA', 'NSW'],
    'NSW': ['Q', 'SA', 'V'],
    'V': ['SA', 'NSW']
}

# Available colors
colors = ['R', 'G', 'B']

# Initialize assignment and variables
assignment = {}
variables = list(regions.keys())

solution = backtrack(assignment, variables, colors, regions)
if solution:
    print("Map coloring solution:")
    for region, color in solution.items():
        print(f"{region}: {color}")
else:
    print("No solution found")
