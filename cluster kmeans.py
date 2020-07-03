# -*- coding: utf-8 -*-
"""
Created on Mon May 13 14:33:01 2019

@author: HP
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans

x=np.random.uniform(0,1,5000)
y=np.random.uniform(0,1,5000)

df_a=pd.DataFrame(columns=['M','N'])
df_a.M=x
df_a.N=y

df_a.plot(x="M",y="N",kind="scatter")
z=KMeans(n_clusters=10).fit(df_a)
z.labels_
z.cluster_centers_
df_a.plot(x="M",y="N",c=z.labels_,kind="scatter",cmap=plt.cm.rainbow)
