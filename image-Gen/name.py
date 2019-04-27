from PIL import Image, ImageDraw, ImageFont
 
img = Image.new('1', (128, 64))
 
fnt = ImageFont.truetype('Comic_Sans_MS.ttf', 15)
d = ImageDraw.Draw(img)
d.text((5,5), "first-ish ", font=fnt, fill=1)
d.text((6,20), "Second line", font=fnt, fill=1)
 
pixels = list(img.getdata())
width, height = img.size
pixels = [pixels[i * width:(i + 1) * width] for i in xrange(height)]
#import pdb;pdb.set_trace();
print("#include <stdint.h>")
print("const uint8_t namePixels[][2]={"),
count=0
for i in range(len(pixels)):
    for j in range(len(pixels[1])):
        if pixels[i][j]:
            print("{" + str(i) + ", " + str(j) + "},")
            count = count + 1
print("};")
print("const int numPixels = " + str(count) + ";")
