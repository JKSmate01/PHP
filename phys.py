import pygame
g = 9.80665/15
felh = 1/10
#1m = 10px
def Calc_speed():
    return g-felh

def PhysicsUpdate(x,y,width,orct,objs,statics):
    #print(Calc_speed())
    collision_detected = False
    for o in objs:
        if (objs.index(orct) != objs.index(o)):
            if (orct.rect.colliderect(o.rect)):
                print(objs.index(o))
                collision_detected = True
                break
    for s in statics:
        if (orct.rect.colliderect(s.rect)):
            collision_detected = True
            break
    #print(collision_detected)
    if (collision_detected == False):
        return y + Calc_speed()
    else:
        return y