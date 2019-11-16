# https://codelabs.developers.google.com/codelabs/tensorflow-lab2-computervision/index.html
# https://github.com/zalandoresearch/fashion-mnist
import tensorflow as tf
import numpy as np
from tensorflow import keras
import fashion_mnist
import callbacks

print(tf.__version__)

callbacks = callbacks.myCallback()
# 1.load data

(training_images, trainnig_labels), (test_images, test_labels) = fashion_mnist.load_data()



# 2.design the model
model = keras.models.Sequential([keras.layers.Flatten(),
                                keras.layers.Dense(128, activation=tf.nn.relu),
                                keras.layers.Dense(10, activation=tf.nn.softmax)])

model.compile(optimizer=tf.train.AdamOptimizer(),
             loss='sparse_categorical_crossentropy',
             metrics=['accuracy'])
model.fit(training_images, trainnig_labels, epochs=5, callbacks=[callbacks])

# 3.compile the model
# 4.train the model
# 5.evaluate using model
model.evaluate(test_images, test_labels)
# 6.predict using model
