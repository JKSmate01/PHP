import pygame
g = 9.80665/15
felh = 1/10
#1m = 10px
def Calc_speed():
    return g-felh

def PhysicsUpdate(center,points, objs, solids):
    #print(Calc_speed())
    coll = False
    for o in range(len(objs)):
        for p in range(len(points)):
            if (points[p].colliderect(objs[o])):
                coll = True
                break
    for s in range(len(solids)):
        for p in range(len(points)):
            if (points[p].colliderect(solids[s])):
                coll = True
                break

    return center[1] + Calc_speed()
