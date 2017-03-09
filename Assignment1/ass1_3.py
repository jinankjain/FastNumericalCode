import numpy as np
import matplotlib.pyplot as plt
import statistics
import math
import sys
import os

fileDir = os.path.dirname(os.path.realpath('__file__'))

def performance():

    perf = []
    for i in range(0, 15):
        perf.append([])

    size = range(100, 1600, 100)
    for i in range(0, 30):
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
            perf[j].append(float(line2[1]))
            start+=diff
            j+=1

    ans = []
    for a in perf:
        ans.append(min(a))

    plt.plot(size, ans, color='r', linewidth=2.0, marker=(5, 0))
    plt.grid(True)
    ax = plt.gca()
    ax.set_xticks(np.arange(100,1600,100))
    label_x = ax.set_xlabel('Matrix Size (NxN)', fontsize = 15)
    label_y = ax.set_ylabel('Runtime(in cycles)', fontsize = 15, rotation='horizontal')
    ax.yaxis.set_label_coords(0.07,1.05)
    ax.xaxis.set_label_coords(0.94, -0.04)
    plt.show()

def runtime():
    perf = []
    for i in range(0, 15):
        perf.append([])
    size = range(100, 1600, 100)
    for i in range(0, 30):
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
            perf[j].append(float(line2[1]))
            start+=diff
            j+=1

    ans = []
    for a in perf:
        ans.append(min(a))
    print len(size)
    i = 0
    for s in size:
        ans[i] = (2*(s**3)*100)/(ans[i]*8.0)
        i+=1
    plt.plot(size, ans, color='b', linewidth=2.0, marker=(5, 0))
    plt.axvline(x=60, color='k', linestyle='--')
    plt.text(10.3, 0.5,'  L1 Cache\n     32kB', fontsize = 15)
    plt.axvline(x=170, color='k', linestyle='--')
    plt.text(170.3, 0.4,'  L2 Cache\n    256kB', fontsize = 15)
    plt.axvline(x=836, color='k', linestyle='--')
    plt.text(700.3, 0.3,'  L3 Cache\n      6MB', fontsize = 15)
    plt.text(863.3, 0.3,' RAM', fontsize = 15)
    plt.grid(True)
    ax = plt.gca()
    ax.set_ylim([0,10])
    ax.set_xticks(np.arange(100,1600,100))
    label_x = ax.set_xlabel('Matrix Size (NxN)', fontsize = 15)
    label_y = ax.set_ylabel('Performance(flops/cycles)', fontsize = 15, rotation='horizontal')
    ax.yaxis.set_label_coords(0.09, 1.05)
    ax.xaxis.set_label_coords(0.94, -0.04)
    plt.show()


def percentage():
    perf = []
    for i in range(0, 15):
        perf.append([])
    size = range(100, 1600, 100)
    for i in range(0, 30):
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
            perf[j].append(float(line2[1]))
            start+=diff
            j+=1

    ans = []
    for a in perf:
        ans.append(min(a))
    print len(size)
    i = 0
    for s in size:
        ans[i] = (2*(s**3)*100)/(ans[i]*8)
        i+=1
    plt.plot(size, ans, color='b', linewidth=2.0, marker=(5, 0))
    plt.axvline(x=60, color='k', linestyle='--')
    plt.text(10.3, 0.5,'  L1 Cache\n     32kB', fontsize = 15)
    plt.axvline(x=170, color='k', linestyle='--')
    plt.text(170.3, 0.4,'  L2 Cache\n    256kB', fontsize = 15)
    plt.axvline(x=836, color='k', linestyle='--')
    plt.text(700.3, 0.3,'  L3 Cache\n      6MB', fontsize = 15)
    plt.text(863.3, 0.3,' RAM', fontsize = 15)
    plt.grid(True)
    ax = plt.gca()
    ax.set_ylim([0,10])
    ax.set_xticks(np.arange(100,1600,100))
    label_x = ax.set_xlabel('Matrix Size (NxN)', fontsize = 15)
    label_y = ax.set_ylabel('[%] of peak performance', fontsize = 15, rotation='horizontal')
    ax.yaxis.set_label_coords(0.09, 1.05)
    ax.xaxis.set_label_coords(0.94, -0.04)
    plt.show()    

performance()
runtime()
percentage()