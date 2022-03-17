# Captcha_Tensorflow

## Package
```python
import os
import random

from PIL import Image
from captcha.image import ImageCaptcha
from concurrent.futures import ThreadPoolExecutor

import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt
```
## Captcha

RGB Captcha
> shape ( 60, 160, 3)

![alt png](RGB/train/1QsB_640.png)

Gray Captcha
> shape ( 60, 160)

![alt png](Gray/Gray.png)


## Predict Result
RGB accuracy: 77.50%

![alt png](RGB/predict.png)

Gray accuracy: 79.90%

![alt png](Gray/predict.png)