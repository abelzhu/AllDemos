import tensorflow as tf
from tensorflow import keras

def load_model():
    cnn_model = keras.models.Sequential([
        # The first conv
        keras.layers.Conv2D(16, (3,3), activation='relu', input_shape=(300,300,3)),
        keras.layers.MaxPool2D(pool_size=(2,2)),
        # The second conv
        keras.layers.Conv2D(32, (3,3), activation='relu'),
        keras.layers.MaxPool2D(pool_size=(2,2)),
        # The third conv
        keras.layers.Conv2D(64, (3,3), activation='relu'),
        keras.layers.MaxPool2D(pool_size=(2,2)),
        # The fourth conv
        keras.layers.Conv2D(64, (3,3), activation='relu'),
        keras.layers.MaxPool2D(pool_size=(2,2)),
        # The fifth conv
        keras.layers.Conv2D(64, (3,3), activation='relu'),
        keras.layers.MaxPool2D(pool_size=(2,2)),

        # flatten
        keras.layers.Flatten(),
        # hidden layer
        keras.layers.Dense(512, activation='relu'),
        keras.layers.Dense(1, activation='sigmoid')
        ])

    return cnn_model