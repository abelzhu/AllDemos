import tensorflow as tf
import numpy as np
from tensorflow import keras
import sys
import os
sys.path.append(os.getcwd()+'/AI/tensorflow_trains')
import fashion_mnist


# print(sys.path)
# print(os.getcwd())

# load data
(train_images, train_labels),(test_images, test_labels) = fashion_mnist.load_data()
train_images = train_images.reshape(60000, 28, 28, 1)
train_images = train_images / 255.0
test_images = test_images.reshape(10000, 28, 28, 1)
test_images = test_images / 255.0


# Design the model
model = keras.models.sequential([keras.layers.Conv2D(filters=64, kernel_size=(3,3), activation='relu', input_size=(28,28,1))])