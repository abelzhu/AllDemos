import cv2
import numpy as np
from scipy import misc 
import matplotlib.pyplot as plt

i = misc.ascent()

plt.axis('off')
plt.grid(False)
plt.gray()
# plt.imshow(img)
# plt.show()

img_transformed = np.copy(i)
size_x = i.shape[0]
size_y = i.shape[1]

new_x = int(size_x/2)
new_y = int(size_y/2)
new_image = np.zeros([new_x, new_y])
for x in range(0, size_x, 2):
    for y in range(0, size_y, 2):
        pixels = []
        pixels.append(img_transformed[x,y])
        pixels.append(img_transformed[x,y+1])
        pixels.append(img_transformed[x+1,y])
        pixels.append(img_transformed[x+1,y+1])
        pixels.sort(reverse=True)
        new_image[int(x/2), int(y/2)] = pixels[0]

plt.imshow(new_image)
plt.show()
