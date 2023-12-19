import pygame
g = 9.80665/10
felh = 1/10
#1m = 10px
def Calc_speed():
    return g-felh
def lpr(center,points,rot,solids):
    OG_center = center
    nodetection = True
    while nodetection:
        for s in range(len(solids)):
            for p in range(len(points)):
                if points[p].colliderect(solids[s]):
                    nodetection = False
        if nodetection:
            rot+=1
            center = OG_center
def PhysicsUpdate(center,points, objs, solids,rot):
    #print(Calc_speed())
    coll = False
    coll_points = []
    for s in range(len(solids)):
        for p in range(len(points)):
            if points[p].colliderect(solids[s]):
                coll = True
                coll_points.append(p)
    if not(coll):
        return center[1] + Calc_speed()
    else:
        if (len(coll_points) == 1):
            lpr(center,points,rot,solids)
        return center[1]
