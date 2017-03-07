import numpy as np
import matplotlib.pyplot as plt
import statistics
import math
import sys
import os

fileDir = os.path.dirname(os.path.realpath('__file__'))

def performance():

    perf = np.zeros(15)
    size = range(100, 1600, 100)
    for i in range(0, 2):
        start = 100
        end = 1500
        diff = 100
        j = 0
        while(start <= end):
            file_name = "../../sol/mmm/{}_{}".format(i, start)
            file_path = os.path.join(fileDir, file_name)
            f = open(file_path,'r')
            iterf = iter(f)
            line1 = next(iterf)
            line1 = line1.split("=")
            n = int(line1[1])
            next(iterf)
            line2 = next(iterf)
            line2 = line2.split(" ")
            print float(line2[1])
            perf[j] += float(line2[1])
            start+=diff
            j+=1

    for i in range(0, 15):
        perf[i] = perf[i]/2.0
    print perf
    plt.plot(size, perf, color='r', linewidth=2.0, marker=(5, 0))
    plt.grid(True)
    ax = plt.gca()
    ax.set_xticks(np.arange(100,1600,100))
    label_x = ax.set_xlabel('Matrix Size (NxN)', fontsize = 15)
    label_y = ax.set_ylabel('Runtime(in cycles)', fontsize = 15, rotation='horizontal')
    ax.yaxis.set_label_coords(0.07,1.05)
    ax.xaxis.set_label_coords(0.94, -0.04)
    plt.show()

def runtime():
    perf = np.zeros(15)
    size = range(100, 1600, 100)
    for i in range(0, 2):
        start = 100
        end = 1500
        diff = 100
        j = 0
        while(start <= end):
            file_name = "../../sol/mmm/{}_{}".format(i, start)
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

    ans = map(lambda x: x/2.0, perf)
    print len(size)
    i = 0
    for s in size:
        ans[i] = (2*(s**3))/ans[i]
        i+=1
    plt.plot(size, ans, color='b', linewidth=2.0, marker=(5, 0))
    plt.grid(True)
    ax = plt.gca()
    ax.set_xticks(np.arange(100,1600,100))
    label_x = ax.set_xlabel('Matrix Size (NxN)', fontsize = 15)
    label_y = ax.set_ylabel('Performance(flops/cycles)', fontsize = 15, rotation='horizontal')
    ax.yaxis.set_label_coords(0.09, 1.05)
    ax.xaxis.set_label_coords(0.94, -0.04)
    plt.show()


performance()
runtime()