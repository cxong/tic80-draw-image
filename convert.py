from PIL import Image
import numpy as np
im = Image.open("image.png")
# Quantize to 16 colors
im = im.convert('P', palette=Image.ADAPTIVE, colors=16)
indexed = np.array(im)
indices = [str(num) for row in indexed for num in row]
# Use RLE so the image hopefully doesn't exceed code size limits
values = []
runs = []
for index in indices:
    if not values or index != values[-1]:
        values.append(index)
        runs.append(1)
    else:
        runs[-1] += 1
print(f"img_values = {{{','.join(values)}}}")
print(f"img_runs = {{{','.join(str(run) for run in runs)}}}")
palette = im.getpalette()
print(f"pal = {{{','.join(str(p) for p in palette[:16*3])}}}")
print(f"-- pal = {''.join(f'{p:02x}' for p in palette[:16*3])}")
