#! /usr/bin/python3
# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.pyplot as plt

x = np.arange(4)
y = np.arange(4)
X, Y = np.meshgrid(x, y)
Z = np.array([[21, 30, 49],
	[32, 41, 36],
	[24, 36, 31]])

plt.pcolor(X, Y, Z, cmap="jet")
cbar = plt.colorbar(orientation='horizontal', ticks=[25, 30, 35, 40, 45])
cbar.set_label('Temperature [℃]')
plt.savefig('thermo_display.png')
plt.show()