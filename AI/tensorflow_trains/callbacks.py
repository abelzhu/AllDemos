import tensorflow as tf


class myCallback(tf.keras.callbacks.Callback):
    def on_epoch_end(self, epoch, logs={}):
        if(logs.get('acc')>0.25):
            print("\nReached 25% accuracy so cancelling training!")
            self.model.stop_training = True
