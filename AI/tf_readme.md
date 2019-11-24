## tensorflow resources
# tf hub : https://tfhub.dev/
```
m = tf.keras.Sequential([
    hub.KerasLayer("https://tfhub.dev/google/imagenet/inception_v2/classification/4")
])
m.build([None, 224, 224, 3])  # Batch input shape
```
# android:
*  https://codelabs.developers.google.com/codelabs/recognize-flowers-with-tensorflow-on-android/#1
* retrain model: https://colab.research.google.com/github/tensorflow/examples/blob/master/community/en/flowers_tf_lite.ipynb