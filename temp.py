import datetime
dates = []
epochtime = 1542744000
numlines = 0


with open("/Users/babadoctor/Desktop/upload/code/parsed.sh") as ff:
    for i, l in enumerate(ff):
        pass
    numlines = i + 1

f = open("/Users/babadoctor/Desktop/upload/code/dates.txt","w+")



for i in range(numlines):#figure out how to get number of lines python
    dates.append(datetime.datetime.fromtimestamp(epochtime).isoformat())
    epochtime+=86400
    f.write(dates[i])
    f.write("\n")
    
f.close()


