import sys

def is_ndrome(s,n):
    l = [s[i:i+n] for i in range(0, len(s),n)]
    return 1 if l==l[::-1] else 0

if __name__ == '__main__':
  if len(sys.argv) == 2:
    filename = sys.argv[1]
    f = open(filename)
    
    for line in f.readlines():
        s,n = line.split('|')
        n = int(n)
        print s +'|'+ str(n) +'|'+ str(is_ndrome(s,n))
    
    f.close()

  else:
    print 'You must specify a file in command line'
    