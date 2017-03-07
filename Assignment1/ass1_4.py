import numpy as np
import matplotlib.pyplot as plt
import statistics
import math
import sys
import os

fileDir = os.path.dirname(os.path.realpath('__file__'))

def performance():

    perf = np.zeros(19)
    size = range(4, 23, 1)
    for i in range(0, 30):
        start = 4
        end = 22
        diff = 1
        j = 0
        while(start <= end):
            file_name = "../../com_turbo/com_opti/{}_{}".format(i, start)
            file_path = os.path.join(fileDir, file_name)
            f = open(file_path,'r')
            iterf = iter(f)
            line1 = next(iterf)
            line1 = line1.split("=")
            n = int(line1[1])
            next(iterf)
            line2 = next(iterf)
            line2 = line2.split(" ")
            perf[j] += float(line2[1])
            start+=diff
            j+=1

    ans = map(lambda x: x/30.0, perf)
    plt.plot(size, ans, color='r', linewidth=2.0, marker=(5, 0))
    plt.grid(True)
    ax = plt.gca()
    ax.set_xticks(np.arange(4,24, 1))
    label_x = ax.set_xlabel('Matrix Size (NxN)', fontsize = 15)
    label_y = ax.set_ylabel('Runtime(in cycles)', fontsize = 15, rotation='horizontal')
    ax.yaxis.set_label_coords(0.07,1.05)
    ax.xaxis.set_label_coords(0.94, -0.04)
    plt.show()

def runtime():
    perf = np.zeros(19)
    size = range(4, 23, 1)
    for i in range(0, 30):
        start = 4
        end = 22
        diff = 1
        j = 0
        while(start <= end):
            file_name = "../../com_turbo/com_opti/{}_{}".format(i, start)
            file_path = os.path.join(fileDir, file_name)
            f = open(file_path,'r')
            iterf = iter(f)
            line1 = next(iterf)
            line1 = line1.split("=")
            n = int(line1[1])
            next(iterf)
            line2 = next(iterf)
            line2 = line2.split(" ")
            perf[j] += float(line2[1])
            start+=diff
            j+=1

    ans = map(lambda x: x/30.0, perf)
    print len(size)
    i = 0
    for s in size:
        ans[i] = (8*(1<<s))/ans[i]
        i+=1
    plt.plot(size, ans)
    plt.show()


performance()
runtime()