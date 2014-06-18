f = open('SampleInput.txt')

x,y = 0,0
dir = 0
for line in f.readlines():
    l = line.split(' ')
    if l[0] == 'Move':
        d = int(l[1])
        if dir==0: y+=d
        if dir==1: x+=d
        if dir==2: y-=d
        if dir==3: x-=d
    if l[0] == 'Turn':
        d = l[1].strip()
        if d=='left':
            dir-=1
            if dir<0: dir=3
        if d=='right':
            dir+=1
            if dir>3: dir=0
print str(x)+','+str(y)