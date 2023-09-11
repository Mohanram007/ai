from itertools import permutations

def is_solution_valid(mapping, words, result):
    values = []
    for word in words + [result]:
        value = 0
        for char in word:
            value = value * 10 + mapping[char]
        values.append(value)
    return sum(values[:-1]) == values[-1]

def solve_cryptarithmetic(words, result):
    all_letters = set(''.join(words + [result]))
    if len(all_letters) > 10:
        return None  # There are more than 10 unique characters, not solvable

    for perm in permutations(range(10), len(all_letters)):
        mapping = dict(zip(all_letters, perm))
        if is_solution_valid(mapping, words, result):
            return mapping
    return None  # No valid mapping found

# Example: SEND + MORE = MONEY
words = ['SEND', 'MORE']
result = 'MONEY'

solution = solve_cryptarithmetic(words, result)

if solution:
    print("Solution found:")
    for char, digit in solution.items():
        print(f"{char}: {digit}")
else:
    print("No solution found.")
