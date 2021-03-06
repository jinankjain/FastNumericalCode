#General imports:

import sys
import os
import math
from matplotlib import rc
# rc('text', usetex=True) # this is if you want to use latex to print text. If you do you can create strings that go on labels or titles like this for example (with an r in front): r"$n=$ " + str(int(n))
from numpy import *
from pylab import *
import random
from matplotlib.font_manager import FontProperties
import matplotlib.pyplot as plt
import matplotlib.lines as lns

   
background_color = '#eeeeee' 
grid_color = 'white' #FAFAF7'
matplotlib.rc('axes', facecolor = background_color)
matplotlib.rc('axes', edgecolor = grid_color)
matplotlib.rc('axes', linewidth = 1.2)
matplotlib.rc('axes', grid = True )
matplotlib.rc('axes', axisbelow = True)
matplotlib.rc('grid',color = grid_color)
matplotlib.rc('grid',linestyle='-' )
matplotlib.rc('grid',linewidth=0.7 )
matplotlib.rc('xtick.major',size =0 )
matplotlib.rc('xtick.minor',size =0 )
matplotlib.rc('ytick.major',size =0 )
matplotlib.rc('ytick.minor',size =0 )


X_MIN=0.1
X_MAX=300.0
Y_MIN=0.1
Y_MAX=20.0
PEAK_PERF=[4.0, 32.0]
PEAK_BW=3.99
ASPECT_RATIO=0.5
LOG_X=1
LOG_Y=1


fig = plt.figure()
# Returns the Axes instance
ax = fig.add_subplot(111, aspect = ASPECT_RATIO)
ffont = {'family':'sans-serif','fontsize':10,'weight':'bold'}
ax.set_xticklabels(ax.get_xticks(),ffont)
ax.set_yticklabels(ax.get_yticks(),ffont)

#Log scale
if LOG_Y: ax.set_yscale('log')
if LOG_X: ax.set_xscale('log')

#formatting:
ax.set_title("Roofline Plots",fontsize=14,fontweight='bold')
ax.set_xlabel("Operational Intensity [Flop/Byte]", fontsize=12)
ax.set_ylabel("Performance [Flop/Cycle]", fontsize=12)


#x-y range
ax.axis([X_MIN,X_MAX,Y_MIN,Y_MAX])

labels = ['', '0.1','1', '10', '100', '1000']

xlocs, xlabels = xticks()
nXLabels = len(xlabels)
new_xlabels = [x.format(xlocs[i]) for i,x  in enumerate(labels[0:nXLabels])]
xticks(xlocs, new_xlabels)
ylocs, ylabels = yticks()
nYLabels = len(ylabels)
new_ylabels = [x.format(ylocs[i]) for i,x  in enumerate(labels[0:nYLabels])]
yticks(ylocs, new_ylabels)


# x, y  = loadtxt('input.dat',unpack=True, usecols=[0,1])
# ax.scatter([x[0],],[y[0],],15, color='blue', alpha= 0.95, label='Variant 0') 
# ax.scatter([x[1],],[y[1],],15, color='red', alpha = 0.95, label='Variant 1')


#Percentile boxes
#ax.boxplot((x[0,],y[0,]))


#Anotate 
# TODO: make it if anotate
# ax.annotate('Variant 0',
#          xy=(x[0], y[0]), xycoords='data',
#          xytext=(+3, +1), textcoords='offset points', fontsize=8)

# ax.annotate('Variant 1',
#          xy=(x[1],y[1]), xycoords='data',
#          xytext=(+3, +1), textcoords='offset points', fontsize=8)



#Peak performance line and text
ax.hlines(y=PEAK_PERF[0], xmin=1, xmax=100000, linewidth=1, color='red')
ax.text(X_MAX/10.0, PEAK_PERF[0]+0.9, "kernel3", fontsize=6, color='red')
ax.vlines(x=1, ymin=0, ymax = 4, linewidth=1, color='red', linestyle='--')
ax.text(0.3, 0.9975-0.4, "kernel1", fontsize=6, color='blue')
ax.hlines(y=PEAK_PERF[1], xmin=8, xmax=100000, linewidth=1, color='green')
ax.text(X_MAX/10.0, PEAK_PERF[1]+1.7, "kernel2", fontsize=6, color='green')
ax.vlines(x=8, ymin=0, ymax = 32, linewidth=1, color='green', linestyle='--', zorder=2)
ax.vlines(x=0.25, ymin=0, ymax = 0.9975, linewidth=1, color='blue', linestyle='--', zorder=2)

#BW line and text
x = np.linspace(0.01, X_MAX, X_MAX)
y = x*PEAK_BW 
ax.plot(x, y, linewidth=1, color='black')


l2 = array((0.01,0.01))
angle = 45*(ASPECT_RATIO+0.1)
trans_angle = gca().transData.transform_angles(array((angle,)),
                                               l2.reshape((1,2)))[0]

ax.text(X_MIN,25*X_MIN*PEAK_BW+0.3,'MemLoad ('+str(PEAK_BW)+' B/C)',fontsize=8,
           rotation=trans_angle)



#save file
fig.savefig("part3.pdf", dpi=250,  bbox_inches='tight')