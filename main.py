import math
import pygame
import phys
import Cube
import time

pygame.init()
canvas = pygame.display.set_mode((1000,1000))
pygame.display.set_caption("Physics test")

#objs = [Cube.Cuboid(10,0,(255,255,255),pygame.Rect(200,200,20,20)),Cube.Cuboid(10,0,(100,255,255),pygame.Rect(260,220,40,40))]
objs = [Cube.PolyCuboid([250,250],100,(255,255,255)), Cube.PolyCuboid([550,500],150,(255,255,255))]
statics = [Cube.Cuboid(100,0,(139,69,19),pygame.Rect(0,450,500,50))]
border_color = (12,12,12,255)
selected_color = (22, 218, 73,255)
def draw_frame():
    canvas.fill((255, 255, 255))
    for o in objs:
        pygame.draw.rect(canvas, border_color, [o.rect.x-1, o.rect.y-1, o.rect.w+2, o.rect.h+2])
        if (objs.index(o)==selected):
            pygame.draw.rect(canvas, selected_color, o.rect)
        else:
            pygame.draw.rect(canvas, o.c, o.rect)
        #show_debug_points(o,3)
    for s in statics:
        pygame.draw.rect(canvas, border_color, [s.rect.x-1, s.rect.y-1, s.rect.w+2, s.rect.h+2])
        pygame.draw.rect(canvas, s.c, s.rect)

def Call_physics():
    for o in objs:
        o.rect.y = phys.PhysicsUpdate(o.rect.x,o.rect.y,o.wh,o,objs,statics)
#Debug values
grabbed = False
selected = 0
rot = 0
while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            break
        if event.type == pygame.KEYDOWN:
            #if event.key == pygame.K_w:
            #    objs[0].y += 50
            #if event.key == pygame.K_d:
            #    objs[0].x += 8
            #if event.key == pygame.K_a:
            #    objs[0].x -= 8
            if event.key == pygame.K_SPACE:
                if (grabbed):
                    grabbed = False
                else:
                    grabbed = True
            if event.key == pygame.K_e:
                if (selected < len(objs)-1):
                    selected+=1
                else:
                    selected = 0
            if event.key == pygame.K_q:
                if (selected > 0):
                    selected -= 1
                else:
                    selected = len(objs)-1
            if event.key == pygame.K_g:
                objs[0].a+=1
    #print(pygame.mouse.get_pos())
    if (grabbed):
        #objs[selected].rect.x, objs[selected].rect.y = pygame.mouse.get_pos()
        objs[0].center[0], objs[0].center[1] = pygame.mouse.get_pos()
    #else:
        #Call_physics()
        #pass
    #draw_frame()
    canvas.fill((0,0,0))
    objs[0].create_rect(canvas,rot)
    objs[1].create_rect(canvas,-rot)
    rot += 1 * 0.05
    pygame.draw.circle(canvas,(255,0,0),(objs[0].center[0],objs[0].center[1]),2)
    pygame.display.update()
