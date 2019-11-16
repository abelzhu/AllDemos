import tensorflow as tf
import numpy as np
from tensorflow import keras

data_x = np.arange(-1, 10,1);
data_y = data_x * 3 +1;

model = keras.Sequential([keras.layers.Dense(units=1, input_shape=[1])])
model.compile(optimizer='sgd', loss='mean_squared_error')

model.fit(data_x,data_y, epochs=50)

data_test = np.array([20,30,50])

data_result = model.predict(data_test)

# print(type(data_x))
# print(data_x)
# print(data_y)
print(data_result)

# keras.