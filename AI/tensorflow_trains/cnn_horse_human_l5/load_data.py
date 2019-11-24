from tensorflow.keras.preprocessing.image import ImageDataGenerator

def load_data():
  # All images will be rescaled by 1./255
  train_datagen = ImageDataGenerator(rescale=1./255)
  
  # Flow training images in batches of 128 using train_datagen generator
  train_generator = train_datagen.flow_from_directory(
          '/tmp/horse-or-human/',  # This is the source directory for training images
          target_size=(300, 300),  # All images will be resized to 150x150
          batch_size=128,
          # Since we use binary_crossentropy loss, we need binary labels
          class_mode='binary')
  return train_generator

if __name__ == '__main__':
    load_data()
    
