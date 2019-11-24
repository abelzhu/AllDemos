import sys
import design_model
from tensorflow.keras.optimizers import RMSprop
import load_data

# load data
train_generator = load_data.load_data()
# design and load model
model = design_model.load_model()
# model.summary()

# compile model
model.compile(
    loss='binary_crossentropy',
    optimizer=RMSprop(lr=0.001),
    metrics=['acc']
    )
# train the model
history = model.fit_generator(
      train_generator,
      steps_per_epoch=8,  
      epochs=3,
      verbose=1)

model.export('horse_human.tflite','image_labels.txt')
# predict
# import numpy as np
# from google.colab import files
# from keras.preprocessing import image
 
# uploaded = files.upload()
 
# for fn in uploaded.keys():
 
#   # predicting images
#   path = '/content/' + fn
#   img = image.load_img(path, target_size=(300, 300))
#   x = image.img_to_array(img)
#   x = np.expand_dims(x, axis=0)
 
#   images = np.vstack([x])
#   classes = model.predict(images, batch_size=10)
#   print(classes[0])
#   if classes[0]>0.5:
#     print(fn + " is a human")
#   else:
#     print(fn + " is a horse")