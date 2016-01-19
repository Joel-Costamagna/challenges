#!/bin/bash
# l longueur
# w largeur
# h profondeur
#quantité de papier par cadeau = 2*l*w + 2*w*h + 2*h*l + w*h
# cadeau sous la forme lxwxh
import os
total = 0
ribbon = 0
for line in open('day2.txt'):
    l, w, h = line.split('x')
    l, w, h = int(l), int(w), int(h)
    aire = 2*l*w + 2*w*h + 2*h*l
    slack = min(l*w, w*h, h*l)
    wrap = 2 * min(l+w, w+h, h+l)
    bow = l*w*h
    ribbon += wrap + bow
    total += aire + slack

print("quantité de papier nécessaire : ",total,"square feet", "\n quanité de ruban : ", ribbon, "feet")
os.system("pause")
