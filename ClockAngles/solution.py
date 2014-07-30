import os
import math

def compute_angles(h,m,s):
    if h==12: h=0.0
    h = h*30.0 + m*30.0/60 + s*30.0/3600
    m = m*6.0 + s*6.0/60
    s = s*6.0
    return h,m,s

def angle(a):
    a = abs(a)
    if a>180: a = 360-a
    return "{0:.2f}".format(round(a,2))

f = open(os.path.join(os.path.dirname(__file__), 'SampleInput.txt'))

print f.readline().strip()
for line in f.readlines():
    l = line.split(':')
    hour,mn,sec = compute_angles(int(l[0]), int(l[1]), int(l[2]))
    x = []
    x.append(angle(hour-mn))
    x.append(angle(hour-sec))
    x.append(angle(sec-mn))
    print ', '.join(x)
