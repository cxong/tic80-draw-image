-- title:  Image draw demo
-- author: congusbongus
-- desc:   example of drawing an image
-- script: lua

img_values = {1,5,1,3,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,5,3,5,0,1,5,1,5,1,5,1,5,0,10,13,5,15,5,0,5,14,5,3,1,5,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,0,1,5,1,3,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,5,3,5,0,1,5,1,5,1,5,1,5,1,5,0,10,13,5,15,5,0,5,14,5,3,1,5,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,0,1,5,1,3,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,5,3,5,0,1,5,1,5,1,5,1,5,1,5,0,10,13,5,15,5,0,5,14,5,3,1,5,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,0,5,1,5,3,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,5,3,5,0,1,5,1,5,1,5,1,5,0,10,13,5,15,5,0,5,14,5,3,1,5,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,0,3,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,5,3,5,0,1,5,1,5,1,5,1,5,0,10,13,5,15,5,0,5,14,5,3,1,5,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,0,1,5,1,3,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,13,5,3,5,0,1,5,1,5,1,5,1,5,1,5,0,10,13,5,15,5,0,5,14,5,3,11,5,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,0,1,5,1,3,1,5,1,5,1,5,1,5,1,5,1,5,1,3,1,5,1,5,1,5,1,3,5,3,5,0,1,5,1,5,1,5,1,5,1,5,0,10,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,3,11,9,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,0,5,1,5,3,1,5,1,5,1,5,1,5,1,5,1,5,1,3,5,1,0,1,5,3,5,1,5,1,5,1,3,5,3,1,5,1,5,1,5,1,5,0,10,0,3,11,9,11,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,2,7,6,14,6,7,2,0,3,1,5,1,5,1,5,1,5,1,5,1,5,1,3,1,0,5,0,1,3,1,5,1,5,1,5,1,3,5,3,1,5,1,5,1,5,1,5,0,10,0,1,0,1,0,3,11,9,11,1,5,1,5,0,1,0,2,6,14,0,14,6,2,6,14,0,14,6,2,6,14,0,14,6,2,0,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,1,5,1,0,1,5,1,3,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,3,11,9,11,1,5,1,5,0,1,2,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,1,5,1,5,1,3,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,1,0,1,0,3,11,9,11,1,5,1,5,0,1,0,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,1,5,1,5,1,3,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,3,11,9,11,1,5,1,5,0,1,0,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,5,3,1,3,5,3,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,1,0,1,0,3,11,9,11,1,5,1,5,0,1,0,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,3,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,3,11,9,11,1,5,1,5,0,1,0,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,3,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,1,0,1,0,3,11,9,11,1,5,1,5,0,1,0,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,3,1,9,11,1,5,1,5,0,1,0,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,3,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,1,0,1,0,3,1,5,11,5,1,5,0,1,0,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,3,1,5,1,11,9,1,5,0,1,0,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,1,0,1,0,3,1,5,1,11,9,11,5,0,1,0,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,3,1,5,1,11,9,11,9,4,11,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,0,10,0,1,0,1,0,3,1,5,1,11,9,11,9,4,11,4,5,0,10,0,2,3,1,5,1,11,9,11,9,4,11,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,10,0,1,0,2,3,1,5,1,11,9,11,9,4,11,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,10,0,2,3,1,5,1,11,9,11,9,4,11,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,10,0,1,0,2,3,1,5,1,11,9,11,9,4,11,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,13,10,0,2,3,1,5,1,11,9,11,9,4,11,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,2,13,10,0,1,0,2,3,1,5,1,9,11,9,4,11,4,1,2,13,10,0,1,0,1,0,1,0,1,0,1,0,1,0,2,3,1,5,1,5,11,9,4,11,4,0,2,13,10,0,1,0,2,3,1,5,1,5,1,5,0,1,0,8,0,8,0,4,0,8,0,2,13,10,0,2,10,12,1,5,1,5,1,5,0,1,0,8,0,8,0,8,0,4,0,8,0,2,13,10,0,1,0,2,10,12,5,1,5,1,5,1,5,0,1,0,2,0,8,0,8,0,8,0,4,0,8,0,4,0,8,0,2,13,10,0,2,12,10,12,1,5,1,5,1,5,0,1,0,2,7,2,7,2,7,2,0,8,0,8,0,4,0,4,0,8,0,8,0,4,0,2,13,10,0,1,0,2,12,10,12,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,2,7,6,14,6,7,2,0,4,0,8,0,4,0,4,0,8,0,8,0,4,0,4,0,2,13,10,0,2,12,2,12,10,2,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,2,7,6,14,6,7,2,0,4,0,8,0,4,0,4,0,8,0,8,0,4,0,2,13,10,0,1,0,2,12,2,12,10,2,5,3,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,0,4,0,8,0,4,0,8,0,4,0,4,0,2,10,0,1,0,1,0,1,0,1,0,1,0,1,0,2,12,2,12,2,5,3,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,0,8,0,2,9,0,1,0,2,12,2,12,2,3,5,3,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,0,2,9,0,2,12,2,12,2,3,5,3,1,5,1,5,1,5,0,1,0,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,0,2,4,11,9,0,1,0,2,12,2,12,2,3,2,3,5,3,1,5,1,5,0,1,0,2,7,6,14,6,7,6,7,2,7,6,14,6,7,2,7,6,14,6,7,6,7,2,0,9,2,9,2,9,2,9,2,9,2,9,11,9,0,2,12,2,3,2,3,5,2,1,5,1,5,0,1,0,2,7,6,14,6,7,2,7,6,14,6,7,2,7,6,14,6,7,2,0,7,9,2,9,7,6,7,9,2,4,11,4,2,9,7,6,7,9,2,9,7,6,9,2,4,11,4,9,0,1,0,1,2,12,2,3,2,3,2,3,5,2,10,12,1,5,1,5,0,1,0,2,6,14,0,14,6,2,6,14,0,14,6,2,6,14,0,14,6,2,0,7,9,2,9,6,7,9,2,11,2,9,7,6,7,9,2,9,7,6,7,9,2,11,9,0,1,2,3,2,3,2,10,12,5,1,5,0,1,2,1,6,7,2,7,14,6,7,2,4,11,4,2,7,6,14,6,7,2,7,6,14,6,7,2,4,11,9,0,1,0,1,3,2,3,2,3,2,3,2,12,10,12,1,5,0,1,0,2,11,2,11,9,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,5,3,5,2,3,2,3,2,12,10,12,5,0,1,0,9,2,4,11,4,2,9,2,9,2,4,11,4,9,0,1,0,1,3,5,2,3,2,3,2,12,2,12,10,2,1,3,8,3,1,5,3,10,8,3,1,3,8,7,6,7,9,2,11,2,9,7,6,9,2,9,7,2,9,7,2,9,6,7,9,2,11,9,0,1,3,1,5,2,3,2,12,2,12,10,2,1,3,8,3,1,5,3,15,4,15,4,15,3,10,8,3,1,3,8,7,6,7,11,4,2,9,7,6,9,2,9,7,2,9,7,2,9,6,7,9,2,4,11,0,1,0,1,3,1,5,2,3,2,12,2,12,2,12,2,1,3,8,3,1,5,3,15,4,15,4,15,3,10,8,3,1,3,8,6,7,9,11,4,15,4,11,2,9,7,6,7,9,2,9,7,9,2,9,7,9,2,9,7,9,2,11,4,15,4,11,0,1,3,1,5,1,5,2,12,2,12,2,3,2,12,2,3,2,4,11,4,11,4,2,12,2,3,2,12,6,7,9,11,15,11,4,2,9,7,6,7,9,2,9,2,7,9,2,9,7,9,2,9,7,9,7,9,2,4,11,15,11,1,0,1,3,1,5,1,5,2,12,2,12,2,12,2,5,2,10,2,5,3,2,4,11,4,0,4,0,4,11,4,2,12,10,2,5,2,10,6,7,9,11,15,4,15,4,15,4,15,4,15,11,2,9,7,6,7,9,2,9,13,9,2,9,7,9,2,9,7,9,7,9,2,11,15,4,15,4,15,4,15,4,15,11,0,1,3,1,5,1,5,2,12,2,12,2,3,2,12,2,3,2,4,11,4,11,0,11,4,11,0,11,4,11,4,2,12,2,3,2,12,6,7,9,11,15,11,15,11,15,11,4,2,9,6,7,9,2,9,13,8,13,8,13,9,2,9,7,9,2,9,7,9,7,9,2,4,11,15,11,15,11,15,11,1,0,1,3,1,5,1,5,2,12,2,12,2,5,2,10,2,5,3,2,4,11,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,11,4,2,12,10,2,5,2,10,6,7,11,15,11,2,9,6,7,9,2,9,7,13,8,13,8,13,9,2,9,7,9,2,9,7,9,7,9,2,11,15,11,0,1,0,1,0,1,0,1,0,5,3,1,5,1,5,2,12,2,3,2,12,2,3,2,4,11,4,0,4,0,11,0,4,0,11,0,4,0,4,0,11,0,4,0,4,0,4,0,4,0,4,0,11,4,11,4,2,12,2,3,2,12,6,9,11,15,11,15,11,15,11,9,4,2,9,6,7,9,2,7,13,9,2,7,9,2,9,7,9,2,4,9,11,15,11,15,11,15,11,9,1,0,1,3,1,5,1,5,2,12,2,5,2,10,2,5,3,2,4,11,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,4,0,11,4,0,11,4,11,4,2,12,10,2,5,2,10,2,9,4,9,11,2,7,6,7,2,7,9,2,7,9,2,7,6,7,2,11,9,4,9,0,1,3,1,5,1,5,2,3,2,12,2,3,2,4,11,4,0,4,11,0,11,4,0,11,4,0,4,11,0,11,4,11,0,11,0,11,4,11,0,4,0,4,11,4,2,12,2,3,2,12,2,9,10,4,9,4,2,7,9,7,2,9,7,2,4,9,4,9,1,0,1,3,1,5,1,5,2,4,11,4,11,4,11,4,0,11,4,11,4,11,4,11,4,11,4,11,4,11,4,11,4,2,12,9,10,13,10,4,9,11,9,2,10,2,7,9,7,2,10,2,9,7,2,9,11,9,4,11,4,11,4,9,0,1,3,1,5,1,5,1,5,1,2,4,11,4,11,4,11,4,2,1,8,10,8,10,13,10,9,4,11,4,11,4,2,10,2,9,7,2,10,2,9,7,9,2,11,4,11,4,11,4,9,0,1,0,2,3,1,5,1,5,1,5,1,2,1,10,8,10,11,9,11,10,11,2,10,2,9,7,2,10,13,10,2,9,7,9,10,2,9,11,9,11,12,0,2,6,2,1,5,1,5,1,5,0,1,0,1,0,3,10,13,10,3,4,11,4,3,10,13,10,3,7,3,2,10,8,10,8,10,2,8,13,0,13,10,2,9,7,9,10,13,10,3,7,3,11,15,11,3,5,3,4,3,12,3,0,1,0,2,6,2,1,5,1,5,1,5,0,1,0,1,0,5,10,13,10,1,3,11,3,10,13,8,13,7,14,7,15,2,10,8,0,10,2,9,7,9,10,13,8,13,7,14,7,15,4,15,5,0,5,12,3,11,3,1,12,1,3,0,1,0,1,0,1,0,1,0,2,7,2,1,5,1,5,1,5,0,1,0,2,0,5,0,2,0,2,5,10,13,12,10,12,5,1,10,11,13,8,14,6,14,11,2,10,8,10,8,10,8,0,8,10,2,9,7,9,12,11,13,8,14,6,14,11,15,4,0,1,0,5,3,1,2,12,2,1,3,0,1,0,2,1,5,1,5,1,5,0,1,0,2,9,2,0,1,0,1,0,2,9,2,0,1,5,1,2,5,10,13,12,8,12,1,0,13,10,8,11,12,6,14,11,12,11,2,8,2,8,2,8,2,12,8,11,12,6,14,11,12,11,12,11,0,1,12,3,5,3,1,2,12,2,1,3,0,2,7,2,1,5,1,5,1,5,0,1,0,2,9,7,6,7,9,2,0,1,0,2,0,1,0,2,9,7,6,7,9,2,0,1,5,1,2,5,10,8,12,8,0,8,12,1,0,13,10,8,2,8,10,1,8,10,2,1,8,10,2,12,8,12,3,5,3,1,0,1,3,0,1,0,2,7,2,5,1,11,0,2,9,7,6,7,9,2,0,1,0,2,0,1,0,2,9,7,9,7,6,7,9,2,0,11,5,3,5,2,9,10,13,12,8,0,10,8,12,1,0,13,10,12,10,2,10,8,2,0,10,8,2,0,8,10,2,12,10,12,10,12,10,12,2,5,3,1,3,0,2,7,2,7,2,5,1,11,4,15,4,11,0,2,9,7,6,7,9,2,0,1,0,2,7,6,2,7,6,2,0,1,0,2,9,7,9,7,6,7,9,2,0,11,4,15,1,5,2,1,10,13,12,8,12,1,0,13,10,12,2,8,2,8,2,1,5,1,12,5,1,3,5,3,0,1,0,2,7,2,1,5,1,11,15,11,0,2,9,7,6,7,6,2,0,2,7,6,2,7,6,2,0,2,7,9,7,6,7,6,9,2,0,11,15,0,5,2,1,12,10,2,1,0,13,10,12,10,12,10,2,13,2,8,2,13,8,2,1,12,10,12,10,12,10,12,1,3,5,3,0,2,7,2,1,5,1,11,15,4,15,4,15,4,15,4,15,11,0,2,9,7,6,7,2,9,7,9,2,7,6,7,2,7,6,2,9,7,9,2,9,7,6,7,6,9,2,0,11,15,4,0,5,2,1,12,8,12,10,12,10,5,10,12,10,12,2,8,13,8,2,1,5,1,5,1,12,5,1,3,0,1,0,2,7,2,1,5,1,11,15,11,15,11,15,11,0,2,9,7,6,7,6,2,9,7,9,13,9,7,9,2,7,6,7,2,7,6,7,2,9,7,9,13,9,7,9,2,9,7,6,7,6,9,2,0,11,15,4,0,5,2,5,1,5,12,8,0,8,12,13,12,8,1,8,12,13,10,5,1,5,1,5,1,5,2,9,2,13,2,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,0,1,0,1,0,1,0,1,0,1,0,2,7,6,7,2,3,1,5,11,15,11,0,2,9,7,6,7,6,2,7,13,7,9,2,7,6,7,2,7,6,7,2,9,7,13,7,2,7,6,7,6,7,9,2,0,11,15,0,5,2,0,12,8,0,10,8,12,13,12,8,10,1,8,10,8,12,13,10,0,1,0,2,11,4,0,4,11,9,13,2,1,0,1,0,1,0,1,0,1,0,1,0,2,7,2,1,3,1,9,11,15,11,15,11,15,11,9,0,2,9,7,6,7,6,2,7,6,7,2,7,6,7,2,6,7,6,7,9,2,0,9,11,15,4,0,5,2,0,12,8,12,13,12,8,10,8,10,8,10,8,10,8,12,13,10,0,2,10,4,11,4,11,4,8,13,2,0,2,1,3,1,9,4,9,0,2,9,7,6,7,9,7,6,7,2,6,7,2,7,6,7,2,7,6,7,6,7,9,2,0,9,4,0,5,2,0,2,13,12,8,12,13,10,0,1,0,2,10,3,8,2,0,1,0,1,0,1,0,1,0,1,0,1,0,2,5,1,0,1,5,2,1,3,1,9,4,9,0,2,9,7,6,7,9,7,6,7,2,12,2,12,2,12,2,6,7,2,6,7,2,3,10,2,6,7,6,7,9,2,0,9,4,5,3,5,2,0,10,13,8,13,2,13,10,0,2,10,2,10,2,0,2,1,3,9,4,11,4,11,4,9,0,2,9,6,7,6,7,2,12,5,2,5,2,12,10,2,6,7,2,6,7,2,5,2,5,2,6,7,6,7,9,2,0,9,4,2,0,12,10,12,10,12,0,12,10,5,10,12,0,1,0,2,1,9,2,0,2,9,1,2,0,1,0,1,0,1,0,1,0,1,0,1,0,2,7,2,0,1,5,1,3,9,0,2,7,14,6,14,6,2,10,12,2,3,13,2,3,10,2,7,6,2,6,7,2,8,3,8,3,2,8,3,2,14,6,14,6,7,2,0,9,2,1,2,1,0,12,8,12,0,12,8,1,8,12,0,2,0,2,7,2,0,1,3,1,5,12,0,1,0,10,2,11,2,10,2,11,2,10,12,13,10,12,2,7,6,2,6,7,6,2,8,2,10,2,11,2,10,2,11,2,0,2,0,2,1,0,12,8,0,8,10,8,12,0,12,8,10,1,8,10,8,12,0,1,0,2,0,1,0,1,0,1,0,1,0,1,0,1,0,2,7,2,0,1,5,1,3,12,3,0,10,13,10,0,7,0,11,15,11,0,5,0,10,13,10,0,7,0,11,15,11,0,5,0,2,12,8,13,10,13,12,10,12,2,7,6,7,2,7,6,11,2,10,8,2,8,2,0,10,13,10,0,7,0,11,15,11,0,5,0,10,13,10,0,7,0,11,15,11,0,5,0,2,5,2,0,1,0,1,12,8,0,8,10,8,12,1,12,8,10,8,10,8,10,8,10,8,12,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,2,7,2,1,0,1,0,5,1,5,1,5,3,1,12,1,3,0,10,13,8,13,7,14,7,15,4,15,5,0,5,12,0,10,13,8,13,7,14,7,15,4,15,5,0,5,12,0,2,12,8,13,12,2,4,11,7,6,7,2,7,6,7,9,2,10,8,10,2,0,10,13,8,13,7,14,7,15,4,15,5,0,5,12,0,10,13,8,13,7,14,7,15,4,15,5,0,5,12,0,3,0,1,0,12,8,12,0,12,8,12,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,2,7,2,0,1,3,1,2,12,2,1,3,1,12,11,13,8,14,6,14,11,15,4,0,1,0,5,1,12,11,13,8,14,6,14,11,15,4,0,1,0,5,1,2,8,2,11,4,11,7,6,7,2,7,6,7,12,10,2,10,2,11,1,12,11,13,8,14,6,14,11,15,4,0,1,0,5,1,12,11,13,8,14,6,14,11,15,4,0,1,0,5,1,3,0,2,0,2,0,2,0,2,0,2,7,2,0,1,3,1,2,12,2,1,3,0,12,8,11,12,6,14,11,12,11,12,11,0,1,12,0,12,8,11,12,6,14,11,12,11,12,11,0,1,12,0,12,2,9,0,7,9,2,11,9,7,6,7,2,7,6,7,12,2,9,7,0,9,2,11,9,0,12,8,11,12,6,14,11,12,11,12,11,0,1,12,0,12,8,11,12,6,14,11,12,11,12,11,0,1,12,0,3,0,1,0,1,0,1,0,1,0,1,0,1,0,2,10,2,0,2,0,1,0,1,0,1,0,1,0,1,0,2,7,2,0,1,0,1,3,1,0,1,3,0,12,8,12,0,12,8,12,0,2,9,7,0,7,2,7,6,7,2,7,6,7,2,7,0,7,9,2,0,12,8,12,0,12,8,12,0,3,0,2,8,2,0,2,7,2,0,1,3,1,3,0,12,10,12,10,12,10,12,0,12,10,12,10,12,10,12,0,2,9,7,9,7,9,7,2,7,9,7,9,7,9,2,0,12,10,12,10,12,10,12,0,12,10,12,10,12,10,12,0,3,0,1,0,1,0,1,0,1,0,1,0,1,2,0,1,0,1,0,1,0,1,0,1,0,2,7,2,0,1,0,1,3,5,3,1,5,1,12,5,1,12,5,1,2,8,7,9,7,13,9,2,1,5,1,5,1,5,1,2,9,8,7,9,7,10,2,1,5,1,12,5,1,12,5,1,0,2,4,15,4,2,15,4,2,0,2,7,2,0,3,5,3,1,12,10,12,10,12,10,12,1,12,10,12,10,12,10,12,1,2,8,9,13,2,1,2,8,9,10,2,1,12,10,12,10,12,10,12,1,12,10,12,10,12,10,12,1,0,1,0,1,0,1,0,1,0,1,0,2,15,2,15,2,0,1,0,1,0,1,0,1,0,1,0,2,7,2,0,1,0,3,1,5,1,12,5,1,12,5,1,2,3,2,3,2,1,5,1,5,1,5,1,2,3,2,3,2,1,5,1,12,5,1,12,5,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,2,4,15,2,15,4,2,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,2,7,2,1,0,1,0,1,0,1,0,1,0,1,0,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,2,3,2,1,5,2,3,2,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,2,3,2,1,5,2,3,2,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,0,1,0,1,0,1,0,1,0,1,0,2,0,1,0,1,0,1,0,1,0,1,0,2,7,2,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,2,3,2,1,0,2,3,2,0,1,0,1,0,1,0,2,3,2,1,0,2,3,2,0,1,0,1,0,1,0,1,0,1,0,5,0,2,0,2,0,2,0,2,0,2,7,2,0,5,0,2,5,2,0,2,5,2,0,2,5,2,0,2,5,2,0,5,0,1,0,1,0,5,0,5,0,5,0,5,2,8,2,0,2,0,2,10,2,0,1,0,1,0,2,0,1,0,2,7,2,0,1,0,5,0,5,0,5,0,5,0,1,0,1,0,1,0,2,0,1,0,1,0,1,0,2,0,1,0,1,0,1,0,5,0,5,0,5,1,5,1,5,1,5,2,8,2,0,2,8,2,0,2,10,2,0,2,0,2,7,2,0,5,1,5,1,5,1,5,0,2,0,2,0,5,1,5,1,0,1,0,1,0,3,5,3,5,2,8,10,2,8,10,2,10,2,0,1,0,1,0,2,1,0,2,7,9,7,2,0,1,0,3,5,3,5,3,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,3,5,3,0,3,1,3,0,3,1,2,8,10,0,8,1,10,2,0,2,0,1,2,9,6,9,2,1,0,3,1,3,0,3,1,3,0,3,1,3,0,1,0,1,0,3,1,3,0,1,0,3,1,2,8,10,0,8,13,8,1,10,2,0,1,0,1,0,2,0,1,2,9,7,9,2,1,0,1,0,3,1,3,0,1,0,3,1,3,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,3,1,3,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,3,1,3,1,3,2,1,10,8,2,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,2,1,0,1,0,5,2,9,2,1,0,1,0,1,0,1,0,1,0,3,1,3,1,3,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,3,1,3,0,1,0,1,0,3,1,3,1,0,1,3,1,3,0,2,10,8,2,0,1,0,2,0,1,0,2,0,1,0,2,4,1,8,4,1,2,1,0,1,2,9,7,9,2,1,0,1,0,3,1,3,1,0,1,3,1,3,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,3,1,3,1,0,3,1,3,1,3,0,2,8,10,8,10,2,0,2,6,2,0,2,7,2,0,2,13,2,0,13,2,0,8,2,0,1,2,9,7,9,2,1,0,3,1,3,1,3,0,3,1,3,0,5,0,3,1,3,0,2,8,1,6,2,8,10,1,6,10,2,0,1,0,2,6,2,0,1,0,2,7,2,1,0,2,13,2,1,0,1,2,9,7,9,2,1,0,1,0,3,1,3,0,1,0,3,1,3,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,3,1,3,0,1,0,2,0,2,0,3,1,3,0,2,10,8,0,2,13,0,2,10,2,0,2,7,6,2,7,2,0,2,13,2,13,8,2,0,1,2,1,0,3,1,3,0,3,1,3,0,3,1,3,0,2,1,2,0,3,1,3,0,2,8,13,2,13,10,2,0,1,0,2,7,1,0,2,1,0,2,8,13,10,2,13,8,2,0,1,5,1,0,1,0,3,1,3,0,1,0,3,1,3,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,3,1,3,0,1,0,12,2,0,2,3,0,2,10,8,10,13,2,13,8,10,2,0,2,6,1,0,7,0,7,0,7,2,0,2,11,1,11,2,0,1,0,3,2,3,0,3,2,8,2,0,2,0,1,0,2,7,1,7,2,0,1,0,2,7,6,1,0,7,0,7,0,7,2,0,2,11,4,0,4,11,2,0,1,0,1,5,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,2,0,2,0,1,0,1,0,8,2,1,2,0,1,0,1,0,1,0,1,0,1,0,2,7,6,0,6,7,2,1,0,1,0,1,0,1,0,1,2,7,1,0,7,2,1,0,1,2,13,4,0,4,8,2,0,1,0,1,0,1,0,5,1,5,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,5,2,12,2,12,10,2,5,0,1,0,1,0,10,2,0,2,15,1,15,1,15,1,15,1,15,1,2,13,7,6,0,6,8,2,15,1,15,1,15,1,15,1,15,2,1,0,2,15,1,15,1,2,13,11,4,0,4,8,2,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,5,2,12,1,0,4,1,10,2,0,1,5,1,15,1,15,8,2,0,2,1,5,1,2,13,7,6,7,8,2,1,2,7,2,1,2,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,2,1,0,4,0,1,0,1,2,1,0,1,5,1,8,2,0,2,1,3,1,2,1,10,2,10,0,2,1,2,6,0,7,2,1,2,11,2,0,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,5,2,1,2,1,2,0,5,2,0,1,2,5,1,8,2,0,2,1,3,1,2,1,2,0,1,2,1,2,6,0,7,2,1,2,4,2,1,2,4,11,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,5,2,1,2,0,2,0,5,2,0,1,2,5,1,8,2,1,2,1,3,1,2,1,2,1,2,0,2,0,2,1,2,3,1,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,2,1,5,2,11,0,15,2,15,0,4,2,0,1,2,5,1,8,2,0,2,1,3,1,3,1,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,5,2,1,5,2,11,1,3,2,3,0,4,2,0,1,2,5,1,8,2,0,2,1,3,1,2,1,2,1,2,1,3,1,3,1,3,1,3,1,3,1,2,1,2,3,1,2,5,2,1,5,2,7,2,1,2,1,0,1,2,0,1,2,7,2,5,1,8,2,1,2,1,3,1,2,3,1,3,1,2,1,3,1,3,1,3,1,3,1,3,1,2,13,2,13,2,3,1,2,5,1,5,2,5,2,7,2,1,0,2,3,1,3,2,0,1,2,7,2,5,10,2,0,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,8,2,13,2,8,2,3,1,2,5,2,0,1,6,7,2,1,0,2,0,1,2,7,5,1,8,2,1,2,1,3,1,10,1,5,1,10,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,7,8,7,8,7,2,3,1,2,5,2,5,2,5,2,0,1,14,7,2,1,0,1,2,6,7,5,1,8,2,5,2,5,2,1,3,1,10,13,0,1,0,13,10,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,12,10,2,1,2,5,2,5,2,5,2,5,2,1,14,6,2,1,0,1,0,1,2,6,5,1,12,2,1,2,1,2,1,2,1,5,1,10,13,0,1,0,13,10,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,2,10,2,1,2,5,2,10,1,5,2,10,2,1,2,5,2,1,14,6,2,1,0,1,2,6,5,1,10,2,1,2,10,2,1,2,3,5,10,13,0,1,0,13,10,5,2,10,8,10,2,5,2,7,2,0,7,2,0,7,13,5,2,1,6,2,5,2,7,6,5,1,10,2,3,2,1,2,1,2,5,2,1,10,13,0,1,0,13,10,1,2,10,2,1,2,13,10,13,2,0,1,6,7,2,1,2,1,2,1,2,7,5,1,2,3,2,10,1,11,1,2,1,2,5,2,5,10,13,0,1,0,13,10,5,2,10,12,10,2,5,2,8,13,2,13,8,2,0,1,6,7,2,1,2,1,2,1,2,1,2,1,2,7,5,1,3,5,3,2,1,10,1,11,1,2,1,2,3,2,5,12,10,5,10,12,10,5,2,5,9,5,2,10,2,10,8,2,10,2,5,2,8,13,8,2,0,1,6,2,1,2,9,2,1,2,1,2,9,2,1,2,1,2,7,5,1,3,2,10,1,11,1,10,1,11,1,2,1,2,5,2,3,12,8,1,8,12,13,10,3,2,3,2,9,11,4,11,9,3,2,12,10,12,1,2,7,8,1,7,8,12,2,3,2,3,2,8,2,0,1,7,2,1,2,9,7,6,9,2,1,2,1,2,9,7,6,7,9,2,1,2,1,2,5,1,3,2,3,2,1,11,1,11,1,10,1,10,1,2,1,2,5,2,3,12,8,10,1,8,10,8,12,13,10,3,2,5,2,3,9,2,9,11,4,11,4,11,9,3,2,12,13,10,0,2,13,0,2,13,12,2,3,2,9,7,9,2,0,1,2,1,2,9,7,6,7,9,2,1,2,1,2,9,7,6,7,9,2,1,2,1,2,5,1,3,10,2,3,10,2,10,1,11,1,10,1,11,1,2,1,2,5,2,3,12,8,10,8,10,8,10,8,10,8,12,13,10,3,2,1,2,1,2,1,2,1,2,1,2,3,9,2,11,2,11,4,11,4,11,4,11,2,9,3,2,7,13,1,13,1,2,3,2,8,7,0,7,13,2,5,0,1,2,1,2,9,7,6,7,9,2,1,2,1,2,9,6,7,9,2,1,2,1,5,1,2,10,8,2,1,10,1,2,1,2,5,2,3,12,8,12,13,10,3,2,1,2,1,2,1,2,1,2,1,2,3,9,2,9,11,9,2,4,11,4,11,4,11,2,9,3,2,7,8,0,13,2,13,8,1,2,3,2,8,7,9,13,2,0,2,0,2,9,7,14,6,7,2,1,2,1,2,7,14,6,7,9,1,2,1,5,1,3,10,2,8,2,1,2,1,2,3,2,3,2,13,10,3,2,1,2,3,9,2,9,11,9,11,2,4,11,4,11,4,11,2,9,3,2,12,8,13,8,2,3,2,0,2,5,1,5,0,2,1,2,1,2,0,1,2,1,2,8,2,11,2,1,2,5,2,3,12,10,5,10,12,3,2,3,9,2,9,2,9,11,9,11,2,4,11,4,11,4,11,2,9,3,2,5,2,3,2,0,2,0,8,2,1,2,1,5,1,2,1,2,1,8,2,8,10,2,1,10,12,10,2,3,12,8,1,8,12,3,9,2,9,2,9,11,4,11,4,11,4,11,2,7,2,9,3,2,13,0,5,2,12,2,3,2,13,2,10,2,10,2,1,2,1,2,1,2,1,2,1,2,1,2,10,8,10,2,3,10,13,8,13,10,2,3,10,1,8,10,8,12,3,2,9,7,9,2,9,11,9,11,4,11,4,11,4,11,2,7,2,9,3,2,13,9,13,0,1,9,8,12,1,0,2,3,2,13,3,2,3,2,3,2,1,0,1,2,1,0,1,2,3,2,10,2,1,5,1,10,13,8,13,10,2,3,10,13,10,8,10,8,12,3,2,9,7,9,2,9,11,9,11,4,11,4,11,4,11,2,7,6,11,4,11,4,9,3,2,13,7,1,7,13,1,9,8,12,1,2,3,2,8,5,1,0,1,2,3,2,3,2,0,9,7,9,0,9,2,5,2,3,2,10,13,8,13,10,3,10,13,10,8,12,3,2,9,6,9,2,9,11,9,11,4,11,4,11,4,11,2,7,14,11,4,11,4,11,9,3,2,8,7,8,0,2,5,2,12,2,3,2,3,5,2,5,2,1,2,1,2,7,1,7,9,2,3,2,3,2,10,13,8,13,10,3,10,8,10,2,3,2,3,2,9,6,7,2,9,11,9,11,4,11,4,11,2,6,14,11,4,11,9,3,2,8,2,1,2,3,2,3,2,3,5,3,2,3,2,5,2,5,2,3,5,3,2,7,9,7,0,7,9,2,10,13,8,13,10,3,10,13,10,3,2,12,2,9,6,7,2,9,11,9,11,4,11,2,6,14,11,4,11,9,2,3,2,0,1,2,3,2,1,0,2,3,2,1,3,1,2,1,3,1,2,8,7,1,7,10,2,12,10,12,10,12,3,10,13,10,3,2,10,2,9,6,7,2,9,11,9,11,9,2,6,11,4,11,9,2,3,2,3,2,5,1,5,2,5,1,5,2,8,9,10,2,3,12,8,12,3,12,10,12,3,2,10,2,9,7,2,9,2,11,2,11,2,11,2,7,6,11,4,11,2,3,2,3,2,3,2,3,12,8,12,3,12,8,12,3,2,3,2,9,2,11,2,9,6,2,11,2,9,6,9,11,2,7,6,11,4,11,2,3,2,7,2,7,2,3,12,8,12,3,12,8,12,3,2,3,2,9,2,11,2,9,6,9,2,11,2,9,6,9,11,2,7,6,11,4,11,2,3,2,7,2,7,2,3,12,8,12,3,12,8,12,3,2,10,2,9,2,11,2,9,6,9,2,11,2,9,6,9,11,2,6,11,4,11,2,3,2,7,2,7,2,3,2,3,2,3,2,10,2,9,2,11,2,9,6,9,2,11,2,9,6,9,11,2,6,11,4,11,9,2,3,2,0,1,2,1,0,2,3,2,12,2,11,2,9,6,9,2,11,2,9,6,9,11,2,11,4,11,9,2,3,2,3,2,3,2,11,2,9,6,9,2,11,2,9,6,9,11,2,11,4,11,9,2,3}
img_runs = {3,1,1,1,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,6,1,2,1,3,1,3,1,3,1,3,2,3,1,3,1,3,1,3,1,3,1,1,1,1,3,1,6,1,1,1,2,1,8,2,1,16,5,9,1,2,1,16,5,4,4,1,1,2,1,16,5,9,1,2,8,2,1,2,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,1,6,1,2,1,2,1,3,1,3,1,3,1,1,1,3,1,3,1,3,1,3,1,3,1,1,1,1,4,1,5,1,1,1,2,1,8,2,1,15,5,10,1,2,1,15,5,5,4,1,1,2,1,15,5,10,1,2,8,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,6,1,2,1,1,1,3,1,3,1,3,1,2,1,3,1,3,1,3,1,3,1,3,1,1,1,1,5,1,4,1,1,1,2,1,8,2,1,14,5,11,1,2,1,14,5,6,4,1,1,2,1,14,5,11,1,2,8,1,3,1,1,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,4,1,6,1,2,1,4,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,1,6,1,3,1,1,1,2,1,8,2,1,13,5,12,1,2,1,13,5,7,4,1,1,2,1,13,5,12,1,2,8,6,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,6,1,2,1,3,1,3,1,3,1,3,2,3,1,3,1,3,1,3,1,3,1,1,1,1,7,1,2,1,1,1,2,1,8,2,1,12,5,13,1,2,1,12,5,8,4,1,1,2,1,12,5,13,1,2,8,2,1,2,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,1,1,5,1,2,1,2,1,3,1,3,1,3,1,1,1,3,1,3,1,3,1,3,1,3,1,1,1,1,8,1,1,1,1,1,2,1,8,2,1,11,5,14,1,2,1,11,5,9,4,1,1,2,1,11,5,14,1,2,8,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,6,2,1,3,1,3,1,3,1,6,1,2,1,1,1,3,1,3,1,3,1,2,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,2,1,1,2,1,8,2,1,10,5,15,1,2,1,10,5,10,4,1,1,2,1,10,5,15,1,2,8,1,3,1,1,2,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,2,1,1,1,1,3,1,3,1,4,8,2,1,4,1,3,1,3,1,3,1,3,1,16,1,1,1,1,9,1,1,1,2,1,8,2,1,9,5,16,1,2,1,9,5,16,1,2,1,9,5,16,1,2,8,6,1,1,3,1,3,1,3,1,3,1,3,1,3,1,2,1,2,1,2,1,2,1,3,1,3,1,1,1,9,1,3,1,3,1,3,1,3,2,3,1,6,1,7,1,1,1,1,1,2,8,1,1,1,2,1,8,2,1,8,5,17,1,2,1,8,5,17,1,2,1,8,5,17,1,2,8,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,1,1,2,1,1,2,1,1,3,1,3,1,15,1,3,1,3,1,3,1,1,1,3,1,16,1,1,1,3,7,1,1,1,2,9,104,9,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,1,6,1,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,1,3,1,6,1,7,1,1,1,1,1,4,6,1,1,1,2,1,120,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,1,1,6,1,1,1,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,5,1,1,1,2,1,120,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,1,1,1,6,1,1,1,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,2,3,1,6,1,7,1,1,1,1,1,6,4,1,1,1,2,1,120,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,6,2,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,3,1,16,1,1,1,7,3,1,1,1,2,1,120,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,8,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,1,3,1,6,1,7,1,1,1,1,1,8,2,1,1,1,2,1,120,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,2,6,2,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,16,1,1,1,9,1,1,1,1,2,1,120,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,4,1,2,1,4,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,2,3,1,6,1,7,1,1,1,1,1,10,1,1,1,2,1,120,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,3,6,4,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,3,1,16,1,1,1,1,9,1,1,1,2,1,120,1,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,11,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,2,1,3,1,6,1,7,1,1,1,1,1,2,8,1,1,1,2,1,120,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,7,1,1,1,2,1,120,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,2,3,1,6,1,7,1,1,1,1,1,4,6,1,1,1,2,1,120,81,3,1,13,3,1,1,1,5,5,1,1,1,2,1,14,2,2,1,1,5,1,1,3,1,6,4,1,5,2,3,2,2,1,2,1,2,2,1,2,3,2,2,5,3,3,3,2,2,1,5,2,4,1,2,13,84,1,6,1,6,1,3,1,1,6,4,1,1,1,2,1,14,3,1,1,1,2,4,1,1,1,1,1,7,2,2,2,4,2,1,2,1,2,1,2,1,3,1,1,1,2,1,2,1,2,4,2,1,2,1,2,1,2,1,2,1,2,4,2,4,2,13,84,1,13,1,3,1,1,7,3,1,1,1,2,1,14,5,1,4,2,5,7,2,2,4,2,2,4,5,1,5,1,2,1,2,1,2,4,2,1,2,1,2,4,2,1,4,3,3,2,2,13,84,1,6,1,6,1,3,1,1,8,2,1,1,1,2,1,14,2,1,2,1,2,4,2,1,2,7,2,2,2,4,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,4,2,1,2,1,2,1,2,1,2,1,2,7,2,16,84,1,13,1,3,1,1,9,1,1,1,1,2,1,14,2,2,1,1,5,1,1,3,1,7,2,2,5,2,3,2,2,1,2,1,2,2,1,2,3,2,5,2,3,3,4,1,2,1,5,1,4,2,2,13,78,6,1,6,1,6,1,3,1,1,10,1,1,1,2,1,120,77,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,10,1,1,1,2,1,120,77,1,6,1,6,1,6,3,1,1,1,10,1,1,1,2,1,120,40,2,4,14,2,2,11,2,1,6,1,13,2,1,1,1,2,9,1,1,1,2,1,120,40,2,2,1,2,13,2,2,11,2,1,6,1,6,1,6,1,3,1,1,1,1,8,1,1,1,2,1,8,104,8,40,2,2,1,2,2,3,2,4,2,2,2,11,2,1,6,1,13,1,1,3,1,2,1,7,1,1,1,2,1,8,2,32,2,32,2,32,2,50,2,1,2,1,2,1,2,1,2,1,2,1,2,15,1,6,1,6,1,6,2,1,3,1,2,1,6,1,1,1,2,1,8,2,1,16,5,9,1,2,1,16,5,9,1,2,1,16,5,9,1,2,8,40,2,4,2,2,1,2,1,2,1,2,1,2,2,11,2,1,6,1,13,1,1,1,1,3,1,2,1,5,1,1,1,2,1,8,2,1,15,5,10,1,2,1,15,5,10,1,2,1,15,5,10,1,2,8,40,2,2,4,2,1,2,1,2,1,2,5,11,2,1,6,1,6,1,6,2,1,1,1,1,1,1,1,2,1,4,1,1,1,2,1,8,2,1,14,5,11,1,2,1,14,5,11,1,2,1,14,5,4,5,2,1,2,8,40,2,2,5,3,2,4,2,2,2,11,2,1,7,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,1,2,1,3,1,1,1,2,1,8,2,1,13,5,12,1,2,1,13,5,12,1,2,1,13,5,5,5,2,1,2,62,2,21,1,6,7,1,6,2,1,1,1,1,1,3,1,2,1,2,1,1,1,2,1,8,2,1,12,5,4,7,2,1,2,1,12,5,13,1,2,1,12,5,6,5,2,1,2,85,1,6,14,1,1,1,1,3,1,3,1,2,1,1,1,1,1,2,1,8,2,1,11,5,5,7,2,1,2,1,11,5,14,1,2,1,11,5,7,5,2,1,2,8,78,4,1,1,7,1,6,2,1,1,1,1,1,1,1,3,1,2,2,1,1,2,1,8,2,1,10,5,6,7,2,1,2,1,10,5,15,1,2,1,10,5,8,5,2,1,2,8,3,2,13,2,8,2,21,2,21,2,1,6,1,15,2,1,3,1,1,1,3,1,2,1,1,1,2,1,8,2,1,9,5,16,1,2,1,9,5,16,1,2,1,9,5,16,1,2,8,2,1,2,1,1,5,5,1,2,2,1,5,2,1,10,3,6,1,2,1,15,4,1,2,2,1,4,1,7,1,7,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,8,2,1,8,5,17,1,2,1,8,5,17,1,2,1,8,5,17,1,2,8,2,1,2,1,5,6,1,2,8,2,1,9,3,7,1,2,1,14,4,1,1,2,7,1,16,1,4,1,1,1,2,3,1,1,1,1,2,9,104,8,2,1,2,1,4,7,1,2,6,1,1,2,1,8,3,8,1,2,1,13,4,2,1,2,6,1,1,7,1,7,2,1,2,1,1,1,1,1,1,1,3,1,1,1,2,1,120,20,8,48,7,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,3,1,3,1,1,2,1,120,18,2,2,1,5,2,9,26,9,2,2,1,4,1,7,1,7,2,1,2,2,1,1,1,1,1,1,1,3,1,15,1,15,1,4,1,53,1,4,1,15,1,11,2,5,10,1,2,8,2,1,5,2,1,2,7,3,2,7,3,2,1,2,5,1,2,7,1,16,1,1,1,2,2,1,3,1,1,1,1,1,16,1,15,1,4,1,1,1,1,47,1,1,1,1,4,1,15,1,11,1,5,8,13,1,2,1,4,3,1,2,6,4,2,6,4,2,1,1,6,1,2,2,12,1,1,7,2,1,1,3,2,1,1,1,1,1,1,1,1,16,1,15,1,4,1,1,1,1,47,1,1,1,1,4,1,15,1,11,5,4,4,1,1,10,1,2,2,1,3,3,1,1,2,5,4,1,2,5,4,1,2,1,7,1,2,2,1,10,1,1,9,1,1,1,1,1,2,4,1,1,1,2,16,1,15,1,4,2,1,1,47,1,1,2,4,1,15,1,11,4,5,4,1,12,1,1,2,1,2,3,2,1,2,4,2,2,2,2,4,4,2,2,1,1,3,3,1,2,1,1,12,1,1,7,2,1,1,1,2,2,2,1,1,1,1,1,1,16,1,15,1,4,1,1,1,1,3,5,12,5,22,1,1,1,1,4,1,15,1,11,3,6,4,1,1,1,1,1,4,1,1,1,1,2,2,1,1,3,3,1,2,2,6,2,2,3,4,3,2,1,1,3,3,1,2,2,1,1,1,1,4,1,1,1,1,1,9,1,1,1,1,3,2,2,1,1,1,2,16,1,15,1,4,2,1,1,3,2,1,2,12,2,1,2,22,1,1,2,4,1,15,1,11,2,7,4,1,2,1,6,1,2,1,1,2,1,3,4,1,2,2,1,2,1,1,1,2,2,2,4,4,2,1,1,3,3,1,2,1,1,2,1,6,1,2,1,1,7,2,1,1,1,4,2,2,1,1,1,1,16,1,15,1,4,1,1,1,1,5,1,3,2,2,3,6,1,3,2,2,1,1,1,1,1,2,2,2,1,1,1,3,1,1,1,1,4,1,15,1,11,1,12,1,12,2,2,1,2,5,1,2,1,1,2,1,1,1,1,2,2,1,4,5,2,1,1,3,3,1,2,2,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,2,2,1,2,16,1,15,1,4,2,1,1,5,1,2,1,2,1,1,1,2,1,5,1,2,1,2,1,1,1,1,1,1,1,1,4,1,2,1,3,1,1,2,4,1,15,1,11,13,1,1,2,1,4,1,2,1,1,1,2,1,1,6,1,2,2,6,2,2,4,6,2,1,7,1,2,1,1,1,2,1,4,1,2,1,1,1,7,2,1,1,1,6,2,2,1,1,16,1,15,1,4,1,1,1,1,5,1,2,1,2,1,1,1,2,1,5,1,2,1,2,1,1,1,1,1,1,1,1,1,3,1,1,1,4,1,1,1,1,4,1,15,1,11,13,1,12,1,1,2,1,7,1,2,3,7,2,3,7,2,1,7,1,2,1,1,12,1,9,1,1,1,1,7,2,3,16,1,15,1,4,2,1,1,5,1,2,1,2,1,1,3,1,5,1,2,1,2,1,1,1,1,1,1,1,1,1,2,2,1,5,1,1,2,4,1,15,1,11,13,1,9,3,1,1,13,2,7,1,4,7,1,13,1,1,12,1,1,7,2,1,1,1,8,2,41,1,1,5,1,3,2,2,1,2,6,1,3,2,3,1,1,1,3,2,2,1,5,1,1,34,13,1,1,7,1,2,2,1,8,1,2,2,1,7,1,2,2,1,6,2,2,11,1,2,2,1,4,1,2,2,9,1,1,1,1,9,4,2,1,34,1,1,1,13,1,33,1,1,1,33,6,1,7,1,7,1,3,2,1,1,1,5,1,4,1,6,1,1,4,1,5,2,1,2,1,4,1,4,1,2,12,1,1,7,2,1,1,1,10,3,2,1,34,53,33,15,7,1,5,1,2,1,4,1,5,4,1,1,1,2,2,1,1,4,2,2,1,1,1,9,1,7,2,13,1,2,1,1,1,10,1,1,1,2,1,34,53,33,14,1,7,1,1,2,1,1,2,1,1,1,1,1,1,1,5,1,1,1,1,2,2,1,1,1,1,1,3,2,2,1,1,1,1,1,1,1,1,1,1,1,3,4,3,2,3,3,1,6,1,2,1,1,1,10,1,1,1,2,1,34,53,33,7,8,7,1,1,1,3,1,1,1,1,1,1,1,1,1,1,3,8,3,1,1,3,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,3,2,3,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,10,1,1,1,2,1,7,34,3,32,3,34,7,4,3,1,6,1,7,1,1,1,5,1,1,1,1,1,1,1,1,2,1,2,2,2,2,2,1,1,1,2,2,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,2,2,2,1,1,2,1,6,4,1,1,10,1,1,1,2,1,7,2,30,2,3,1,30,1,3,2,30,2,7,1,1,1,1,3,1,6,1,7,1,1,1,4,1,1,1,1,1,1,1,1,1,2,1,2,2,3,3,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,4,1,1,1,9,1,2,1,1,1,10,1,1,1,2,1,7,2,1,10,5,13,1,2,3,1,2,26,2,1,3,2,1,10,5,13,1,2,7,1,1,1,1,3,1,6,1,2,3,2,1,1,1,4,1,9,1,1,1,1,2,1,1,1,1,1,11,1,12,1,1,3,1,1,6,1,1,2,1,5,2,2,2,1,6,12,5,2,1,9,5,14,1,2,3,1,2,26,2,1,3,2,1,1,3,5,5,14,1,2,5,2,1,1,1,1,3,1,6,1,2,3,1,1,1,1,1,4,5,1,3,1,1,1,1,1,1,1,2,1,2,1,10,1,4,1,4,1,2,1,1,3,1,8,1,7,1,2,2,2,1,1,4,1,1,10,1,1,4,2,1,8,5,15,1,2,3,1,2,2,7,3,2,7,3,2,2,1,3,2,1,1,3,4,5,15,1,2,4,1,1,1,2,1,1,3,1,6,1,7,1,1,1,4,1,8,1,4,1,7,1,7,1,1,14,1,4,2,4,2,3,1,4,1,6,1,1,1,3,1,12,1,4,2,1,7,5,15,1,7,2,2,6,4,2,6,4,2,2,7,1,3,3,5,15,1,1,2,4,1,2,2,1,1,3,1,6,9,1,1,4,3,1,4,1,1,1,2,1,1,2,3,1,1,10,1,2,1,4,1,4,1,5,1,6,1,8,1,6,1,2,1,2,1,1,1,1,1,4,1,1,1,1,1,4,2,1,6,5,15,2,1,5,1,5,4,4,1,2,5,4,5,1,5,1,2,2,2,5,15,2,1,2,4,1,1,2,1,1,1,3,1,7,1,1,1,4,3,4,1,4,6,1,1,5,1,2,1,1,7,1,1,14,1,4,8,3,1,4,1,6,1,3,1,1,1,2,1,6,1,2,1,4,2,1,5,5,15,1,1,1,1,1,1,1,3,4,1,3,4,2,2,4,4,1,1,4,3,1,1,1,1,1,1,2,1,5,15,3,1,2,4,1,2,1,1,1,1,1,1,1,1,2,3,2,1,1,1,4,3,4,1,3,1,1,1,1,1,1,1,1,2,4,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,3,1,1,12,1,4,2,1,4,5,15,3,1,1,3,3,3,1,3,4,3,2,3,4,3,1,3,3,3,1,1,3,5,15,3,1,1,2,4,1,2,2,1,1,3,1,2,3,1,1,1,1,1,4,1,2,2,1,1,1,3,1,1,1,5,1,1,1,1,1,1,1,2,1,1,7,1,7,1,7,1,7,1,7,1,4,1,6,1,1,1,3,1,1,2,1,4,1,2,1,1,4,2,1,3,5,15,1,15,2,4,4,2,2,4,4,15,4,15,3,2,1,2,4,1,1,1,1,1,1,1,3,1,7,1,1,1,1,1,1,1,1,2,1,2,1,1,3,1,6,1,1,1,1,1,1,1,2,1,1,45,8,2,1,2,1,12,1,4,2,1,2,5,6,7,2,3,1,14,4,5,2,1,4,5,12,1,5,15,3,3,1,2,4,1,2,2,1,1,3,9,1,1,11,1,3,1,1,1,4,1,1,5,2,1,1,1,7,1,7,1,7,1,7,1,7,1,4,1,1,2,1,1,1,1,3,1,1,1,12,1,4,2,1,1,5,7,7,1,3,2,1,3,1,4,1,2,2,3,6,2,4,6,1,3,7,1,5,15,3,4,1,2,4,1,2,1,1,1,1,3,1,5,1,3,13,3,1,7,1,2,2,2,1,48,6,5,1,2,2,1,4,1,2,2,4,2,1,5,15,3,3,1,1,1,3,1,2,1,3,1,2,7,2,3,7,6,1,3,1,1,4,15,3,5,1,2,4,2,1,4,3,1,5,1,5,1,1,1,4,3,4,1,1,1,4,1,1,1,1,2,1,1,1,1,1,1,7,1,7,1,7,1,7,1,7,1,6,1,2,1,1,4,1,1,1,12,5,2,1,4,15,3,3,1,1,1,1,2,1,1,2,5,1,7,1,2,2,7,1,2,1,1,2,1,1,2,2,3,15,3,6,1,2,5,2,1,1,1,1,3,1,11,1,1,1,4,3,4,1,6,10,48,1,2,1,2,6,1,3,1,2,2,1,7,1,5,1,9,1,5,1,6,1,1,7,4,1,1,6,2,2,1,7,1,1,11,5,1,5,1,9,1,5,1,3,7,1,1,1,1,3,1,2,3,4,1,1,1,1,1,4,1,2,2,1,1,1,1,1,5,8,2,1,7,1,7,1,7,1,7,1,7,1,6,1,2,1,3,2,1,3,4,2,3,6,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,2,2,1,1,2,2,1,6,2,1,2,7,2,1,1,1,4,3,2,1,3,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,1,1,1,1,1,1,1,7,1,1,1,1,1,1,1,1,2,3,3,2,1,1,1,1,1,1,1,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,3,2,3,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,4,4,1,1,1,4,2,2,2,6,2,1,2,2,1,6,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,3,1,3,1,11,1,1,1,11,1,1,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,6,1,2,1,5,4,1,1,2,2,2,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,4,3,1,1,1,3,2,3,2,5,2,3,1,1,2,4,3,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,7,13,1,13,11,2,4,2,45,1,2,1,6,3,1,1,1,4,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,3,1,1,1,2,2,2,4,2,4,2,4,1,1,1,3,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,3,1,7,1,7,1,7,1,7,1,7,1,1,1,1,1,2,3,6,1,7,1,7,1,7,1,7,1,6,1,2,1,5,1,1,2,1,1,6,1,1,4,1,12,1,2,1,12,1,4,1,1,1,1,5,1,3,2,5,2,3,2,5,1,5,1,1,1,1,4,1,12,1,2,1,12,1,4,1,45,1,1,6,45,1,2,1,8,1,1,8,1,4,1,4,1,4,1,2,1,2,1,4,1,4,1,2,1,4,1,1,1,1,2,1,2,24,2,1,2,1,1,1,1,4,1,4,1,4,1,2,1,2,1,4,1,4,1,2,1,4,1,3,1,7,1,7,1,7,1,7,1,7,1,10,5,1,7,1,7,1,7,1,7,1,6,1,2,1,5,1,3,1,2,4,2,3,1,1,14,1,1,14,1,3,1,1,1,1,2,2,1,1,2,1,7,1,7,1,3,1,1,2,2,1,1,1,1,2,1,1,14,1,1,14,1,4,44,2,1,1,1,2,1,1,1,44,1,2,1,10,1,6,1,5,1,2,1,4,1,4,1,2,1,2,1,4,1,4,1,4,1,1,4,2,1,24,1,2,4,1,1,4,1,2,1,4,1,4,1,2,1,2,1,4,1,4,1,5,3,1,7,1,7,1,7,1,7,1,7,3,2,3,1,3,4,1,7,1,7,1,7,1,7,1,6,1,2,1,5,1,4,8,3,1,1,14,1,1,14,1,4,1,1,4,1,1,3,1,7,1,7,1,4,1,1,4,1,1,3,1,1,14,1,1,14,1,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,7,1,7,1,7,1,7,1,7,12,4,1,7,1,7,1,7,1,7,1,6,1,2,1,5,1,7,1,7,1,7,1,7,1,7,1,7,1,4,1,1,1,1,1,1,1,1,3,1,7,1,7,1,4,1,1,1,1,1,1,1,1,3,1,7,1,7,1,7,1,7,1,23,18,2,3,2,10,2,3,23,6,10,1,2,1,13,18,26,1,2,1,2,1,2,1,22,1,2,1,2,1,2,1,26,13,3,1,7,1,6,1,1,1,14,1,1,1,1,3,2,1,8,1,2,3,1,7,1,7,1,4,10,1,1,6,1,2,1,5,1,6,1,1,1,14,1,1,1,5,1,7,1,7,1,3,10,2,1,7,1,7,1,3,10,2,1,7,1,7,1,6,1,1,1,29,1,1,1,14,1,1,1,1,5,1,1,3,1,2,1,1,5,1,19,12,7,1,2,1,12,1,1,1,14,1,1,1,26,8,24,8,26,1,1,1,11,3,1,7,1,6,1,1,16,1,1,6,1,3,1,1,3,7,1,6,1,7,1,3,12,1,5,1,1,2,1,1,4,1,6,1,1,16,1,1,5,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,6,1,1,12,18,1,1,1,14,1,1,1,5,1,2,7,1,6,1,17,14,4,1,1,1,2,1,1,1,10,1,1,1,14,1,1,1,92,1,1,1,14,1,7,1,6,1,1,1,6,1,7,1,1,1,4,1,3,5,1,2,1,5,1,6,1,7,1,2,14,4,1,1,1,2,1,1,1,3,1,6,1,1,1,6,1,7,1,1,1,5,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,6,1,1,1,6,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,16,1,1,5,2,1,9,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,1,1,1,1,1,1,4,1,2,1,1,1,1,1,1,1,1,1,1,1,16,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,3,1,7,1,6,1,1,1,1,12,1,1,1,1,5,1,1,10,1,3,1,2,2,3,1,3,2,2,1,2,5,1,1,2,1,1,2,1,4,1,1,1,2,1,1,1,3,1,6,1,1,1,1,12,1,1,1,1,5,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,6,1,1,1,1,28,1,1,16,1,1,5,1,3,4,1,3,1,6,1,1,1,6,1,1,1,4,3,1,2,1,2,1,1,1,1,5,1,1,1,2,1,1,1,10,1,1,16,1,1,92,1,1,12,1,32,2,1,1,1,5,1,3,1,1,1,1,1,1,1,1,1,3,1,2,1,2,1,1,1,3,1,2,1,1,2,3,9,1,1,4,1,1,1,2,1,1,1,3,1,6,1,1,1,6,1,7,1,1,1,5,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,6,1,1,1,6,1,5,1,30,1,2,1,1,1,4,1,1,3,1,2,2,1,1,1,1,6,1,1,1,7,2,1,3,4,2,3,2,1,2,5,1,4,1,11,1,1,1,14,1,1,1,92,1,1,1,12,1,30,1,2,1,1,1,4,1,4,3,2,2,1,2,2,1,3,1,1,2,7,1,1,3,3,1,1,1,1,2,1,3,5,2,1,3,4,1,6,1,1,1,6,1,7,1,1,1,5,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,6,1,1,1,6,1,4,1,1,30,3,3,4,1,1,3,1,2,1,2,1,2,1,6,1,2,1,1,1,3,1,1,1,1,5,2,2,1,1,2,8,6,11,3,14,3,92,3,11,1,1,30,1,2,1,7,4,2,1,1,5,3,1,3,1,1,1,1,1,1,3,1,1,1,1,4,1,1,3,1,1,1,2,1,1,5,2,1,3,4,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,1,3,3,4,4,1,7,1,4,1,1,30,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,2,1,1,1,1,1,1,1,1,1,1,2,1,7,1,1,1,1,1,1,2,3,1,2,2,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,1,3,1,11,1,1,1,1,1,1,1,30,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,2,2,1,1,1,1,1,1,1,1,1,1,1,2,7,1,1,1,1,1,1,2,1,2,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,5,1,9,1,1,1,1,1,1,1,1,30,1,2,1,7,1,2,3,1,2,2,1,10,2,4,3,6,10,9,1,15,1,15,1,15,1,15,1,15,1,15,1,14,1,1,2,2,1,3,1,2,1,1,8,1,1,1,4,1,1,30,1,2,1,8,2,1,2,1,1,2,1,11,1,2,3,1,1,8,1,1,4,2,1,9,1,15,1,15,1,15,1,15,1,15,1,15,1,13,1,1,1,1,1,5,1,1,3,10,1,1,1,3,1,1,30,1,2,1,9,1,1,3,1,1,1,12,1,2,3,1,1,8,1,1,1,1,1,1,1,1,10,1,15,1,15,1,15,1,15,1,15,1,15,1,13,1,1,1,1,1,5,1,1,1,12,1,1,1,3,1,1,30,1,2,1,9,2,3,2,14,1,2,1,1,1,9,2,1,2,2,11,1,15,1,15,1,15,1,15,1,15,1,15,1,6,6,1,3,1,1,2,1,2,1,2,1,11,1,2,1,2,1,1,30,1,2,1,15,1,13,8,10,1,15,1,15,1,15,1,15,1,15,1,15,1,14,2,6,2,4,1,3,1,1,1,3,1,1,2,1,11,1,2,1,2,1,1,30,1,2,1,9,7,14,6,9,7,11,1,15,1,15,1,15,1,15,1,8,2,3,2,1,13,1,10,1,2,1,1,1,1,1,2,1,4,1,2,12,1,1,1,1,1,1,1,1,30,1,2,1,10,5,1,15,1,14,5,12,1,15,1,15,1,15,1,15,1,8,1,1,3,1,1,1,13,1,3,1,6,1,3,1,1,1,1,1,1,1,4,1,1,13,1,1,1,1,2,1,1,30,1,2,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,8,1,1,1,1,1,1,1,1,12,1,12,1,1,1,1,1,1,1,1,8,13,1,1,2,1,1,1,1,30,1,2,1,1,5,1,1,1,5,1,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,8,1,1,1,1,1,1,1,1,12,1,2,1,3,1,5,1,1,1,1,1,1,1,22,1,1,1,1,1,1,1,1,3,23,4,1,2,1,1,1,4,1,1,1,4,1,1,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,7,1,1,6,2,11,2,1,2,2,2,2,1,2,1,1,1,1,1,1,1,20,1,1,1,2,1,1,1,1,3,1,21,1,4,1,2,1,1,1,4,1,1,1,4,1,1,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,6,1,10,1,10,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,22,1,1,2,1,1,1,1,3,3,19,1,4,1,2,2,1,4,1,1,1,4,1,119,1,7,1,4,1,10,1,1,1,1,2,2,1,1,1,1,2,1,2,1,24,1,1,1,1,1,1,5,1,1,19,1,4,1,1,1,2,1,4,1,1,1,4,1,119,1,12,1,10,1,9,1,1,1,1,1,1,1,1,11,1,10,1,1,1,2,1,1,1,7,2,3,9,1,4,1,4,1,1,1,2,1,4,1,1,1,4,1,118,1,8,1,5,1,9,1,1,2,3,3,1,1,2,1,1,1,1,1,9,1,1,1,8,2,1,1,1,1,1,1,1,1,8,1,1,1,9,1,4,1,4,1,1,1,2,1,4,3,4,1,2,54,1,3,21,37,1,4,3,1,1,3,2,1,9,2,1,5,1,2,3,1,1,1,2,1,7,1,1,1,1,1,6,1,2,1,1,1,1,1,1,9,2,2,1,3,1,3,1,1,4,1,4,1,1,1,2,1,4,3,4,1,1,1,27,11,17,1,2,1,19,1,1,36,1,1,2,1,1,1,1,2,1,1,1,1,1,10,1,1,2,4,2,4,1,1,1,1,1,1,3,3,1,1,1,1,1,1,1,2,2,1,1,1,1,1,2,1,1,1,2,1,5,3,3,1,1,1,1,1,1,1,6,1,4,1,1,1,2,1,4,1,2,2,1,1,1,1,1,27,1,9,1,17,1,1,1,1,10,7,2,1,1,36,1,1,2,1,1,2,2,1,1,1,1,1,10,3,1,5,1,1,3,1,1,2,1,1,2,3,1,1,1,1,1,1,1,1,1,2,2,1,1,2,1,1,1,1,1,3,1,1,2,2,1,1,3,3,1,3,1,1,4,1,4,1,1,1,2,1,1,1,1,1,1,2,1,2,1,1,1,1,27,1,1,1,1,1,1,1,1,1,1,1,16,1,1,1,1,1,10,1,5,1,2,1,1,1,36,1,1,1,1,8,1,1,10,1,2,1,3,2,2,1,1,1,1,1,2,1,1,1,3,2,1,1,1,1,1,1,1,2,3,1,1,2,1,2,1,1,2,1,6,1,8,1,8,1,4,1,1,1,2,1,11,1,1,1,27,1,1,1,1,1,1,1,1,1,1,1,15,1,1,1,1,1,1,10,1,5,1,2,1,1,1,36,1,1,1,1,4,1,2,1,1,1,10,1,2,5,1,2,1,2,1,2,1,1,1,3,3,1,1,1,1,1,1,1,2,3,1,1,2,1,2,1,1,1,1,2,3,3,17,1,4,1,1,1,2,13,1,1,27,1,9,1,14,1,2,1,1,1,1,1,9,1,5,1,2,1,2,1,36,1,2,1,5,1,2,11,11,3,1,1,1,1,9,1,1,1,1,1,8,2,1,4,1,8,1,17,1,4,1,1,1,4,1,4,3,4,1,27,11,13,1,1,1,1,1,1,2,1,1,8,1,5,1,2,1,2,1,36,4,4,3,12,2,2,1,2,1,1,5,1,1,2,11,1,12,1,4,4,2,2,1,1,11,6,1,6,1,4,1,4,3,4,1,50,1,1,2,1,3,1,10,1,5,1,2,1,1,1,1,1,34,1,5,3,1,1,1,8,4,1,1,1,2,1,2,1,5,1,10,3,1,1,7,3,2,1,4,1,1,5,1,1,12,1,5,1,5,1,1,1,9,2,2,1,1,1,50,1,1,1,1,1,1,1,1,1,10,1,5,1,2,1,1,1,1,10,25,1,1,3,1,2,1,1,1,1,1,6,1,4,1,1,1,2,1,2,6,1,11,2,1,1,8,2,1,1,5,2,4,2,8,1,4,1,5,1,5,1,1,1,1,7,3,1,2,1,1,49,2,1,1,1,1,1,1,1,1,10,1,5,1,2,1,1,1,1,1,6,1,2,2,23,1,1,1,1,1,1,2,2,1,1,6,1,5,1,2,1,2,6,2,1,14,1,11,1,5,1,2,1,1,1,1,6,1,1,6,1,5,1,5,1,2,1,7,1,6,1,49,2,1,1,1,1,1,1,1,1,10,1,5,1,2,1,1,1,1,1,6,1,3,1,1,22,1,1,3,1,2,1,1,1,1,6,6,1,2,2,8,2,1,13,1,10,7,4,1,1,1,1,5,1,1,6,1,5,1,5,1,2,1,7,1,7,48,1,1,1,1,1,1,1,1,1,1,1,10,7,2,1,1,1,1,10,1,1,1,23,1,3,4,1,2,13,1,3,2,1,2,1,2,2,1,13,1,10,2,1,2,1,1,1,1,2,1,1,1,14,1,5,1,5,1,2,1,7,1,55,1,1,1,1,1,1,1,1,1,1,1,19,1,1,1,1,1,9,1,2,1,23,1,1,1,1,2,1,1,1,1,14,5,1,2,1,31,1,2,1,1,2,2,1,1,1,14,1,5,1,5,1,2,1,7,1,55,1,1,1,1,1,1,1,1,1,1,9,12,1,2,1,10,1,1,1,23,10,14,5,1,2,1,31,1,2,1,1,2,4,1,1,13,1,11,1,2,1,7,1,55,1,1,1,1,2,1,1,1,3,6,1,1,11,1,1,1,1,10,1,2,24,8,19,6,29,13,14,1,11,1,2,1,7,1,55,1,1,1,3,2,3,1,3,2,1,1,1,7,2,1,1,1,1,1,1,10,1,1,94,1,1,1,1,1,15,1,11,1,2,1,7,1,55,1,1,1,3,1,3,1,3,2,1,1,1,1,6,2,2,1,1,1,1,1,10,1,1,94,1,1,1,1,1,15,1,11,1,2,1,7,1,55,1,1,1,2,1,3,1,3,2,2,1,1,1,5,2,4,1,1,1,1,10,1,1,94,1,1,1,1,1,15,13,2,9,55,1,1,1,1,1,3,1,3,2,3,1,1,1,4,2,5,1,1,1,1,10,1,1,1,92,1,1,1,1,1,1,1,93,1,1,2,3,1,3,2,4,1,1,1,3,2,7,1,1,1,10,1,1,1,93,5,94,1,1,1,3,1,3,2,5,1,1,1,2,2,8,1,1,1,10,1,1,1,92}
-- pal = f4f4f494b0c21a1c2c333c5738b764566c8641a6f63b5dc9ef7d5729366fb13e532571795d275dffcd7573eff7a7f070
pal = {244,244,244,148,176,194,26,28,44,51,60,87,56,183,100,86,108,134,65,166,246,59,93,201,239,125,87,41,54,111,177,62,83,37,113,121,93,39,93,255,205,117,115,239,247,167,240,112}

-- set palette
for i=0,16*3-1 do
	poke(0x3FC0+i,pal[i+1])
end

function TIC()
	cls(0)
	-- draw image
	local val_i=0
	local run=0
	for y=0,136-1 do
		for x=0,240-1 do
			if run==0 then
				val_i=val_i+1
				run=img_runs[val_i]
			end
			run=run-1
			pix(x,y,img_values[val_i])
		end
	end
end

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <PALETTE>
-- 000:140c1c44243430346d4e4a4f854c30346524d04648757161597dced27d2c8595a16daa2cd2aa996dc2cadad45edeeed6
-- </PALETTE>

