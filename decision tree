from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split

# Input data with moderate separability
data = [
    [5.1, 3.5, 1.4, 0.2, 0],  # Iris Setosa
    [4.9, 3.0, 1.4, 0.2, 0],  # Iris Setosa
    [6.3, 2.5, 4.9, 1.5, 1],  # Iris Versicolor
    [6.5, 3.0, 5.2, 2.0, 2],  # Iris Virginica
    [5.7, 2.6, 3.5, 1.0, 1],  # Iris Versicolor
    [6.0, 2.2, 5.0, 1.5, 2],  # Iris Virginica
    [5.9, 3.0, 4.2, 1.5, 1],  # Iris Versicolor
    [6.2, 2.8, 4.8, 1.8, 2],  # Iris Virginica
]

# Separate features and target labels
X = [row[:-1] for row in data]
y = [row[-1] for row in data]

# Split data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Create a Decision Tree Classifier
clf = DecisionTreeClassifier()

# Fit the model to the training data
clf.fit(X_train, y_train)

# Make predictions on the test data
y_pred = clf.predict(X_test)

# Calculate accuracy
accuracy = accuracy_score(y_test, y_pred)
print(f"Accuracy: {accuracy:.2f}")

# New data point for prediction
new_data = [5.8, 2.7, 5.1, 1.9]  # You can change this data point

# Make a prediction using the trained model
prediction = clf.predict([new_data])

# Mapping of target labels
target_labels = ['Iris Virginica', 'Iris Versicolor', 'Iris Setosa']

# Print the prediction
predicted_label = target_labels[prediction[0]]
print(f"Predicted Label: {predicted_label}")
