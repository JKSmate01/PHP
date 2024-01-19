import math, pygame, Cube, time, pymunk
import pymunk.pygame_util
import random as r
pygame.init()
canvas = pygame.display.set_mode((1000,1000))
pygame.display.set_caption("Physics test")

def Create_object(mass,dynamic,pos, width, height):
    if dynamic:
        body = pymunk.Body(mass, pymunk.moment_for_box(mass, (width, height)) , body_type= pymunk.Body.DYNAMIC)
        body.position = pos
        shape = pymunk.Poly.create_box(body, (width, height))
        shape.color = pygame.Color(r.randint(0,255),r.randint(0,255),r.randint(0,255))
        shape.friction = 0.3
        space.add(body, shape)
        return pos
    else:
        body = pymunk.Body(mass, pymunk.moment_for_box(mass, (width, height)) , body_type=pymunk.Body.STATIC)
        body.position = pos
        shape = pymunk.Poly.create_box(body, (width, height))
        shape.friction = 0.3
        space.add(body, shape)
        return pos
def draw_objects(objs):
    for ot in objs:
        for obj in ot:
            pygame.draw.rect(canvas,(0,0,0),())

space = pymunk.Space() #Fizikai környezet létrehozása
space.gravity = (0,100) #Gravitáció megadása (h,v)
options = pymunk.pygame_util.DrawOptions(canvas)
spawning_s = False
spawning_d = False
spawning_bomb = False
spawning_size = (20,20)
d_objects = []
#d_objects.append(Create_object(10,True,(500,0),20,20))
s_objects = []
s_objects.append(Create_object(1000,False,(500,1000),1000,20))
s_objects.append(Create_object(1000,False,(1000,500),20,1000))
s_objects.append(Create_object(1000,False,(0,500),20,1000))
while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            break
        if event.type == pygame.KEYDOWN:
            #if event.key == pygame.K_w:
            #    objs[0].y += 50
            #if event.key == pygame.K_d:
            #    objs[0].x += 8
            if event.key == pygame.K_SPACE:
                spawning_d = True if spawning_d == False else False
            if event.key == pygame.K_LSHIFT:
                spawning_s = True if spawning_s == False else False
            if event.key == pygame.K_q:
                spawning_bomb = True if spawning_bomb == False else False
            if event.key == pygame.K_s and spawning_s:
                s_objects.append(Create_object(10,False,pygame.mouse.get_pos(),spawning_size[0],spawning_size[1]))
            if event.key == pygame.K_q and spawning_d:
                d_objects.append(Create_object(10,False,pygame.mouse.get_pos(),spawning_size[0],spawning_size[1]))
            if event.key == pygame.K_a and spawning_s or spawning_d:
                spawning_size = (spawning_size[0]-10, spawning_size[1]-10)
            if event.key == pygame.K_d and spawning_s or spawning_d:
                spawning_size = (spawning_size[0]+10, spawning_size[1]+10)
    if len(d_objects) > 0 and spawning_bomb:
        d_objects.append(Create_object(10,True,d_objects[-1],spawning_size[0],spawning_size[1]))
    canvas.fill((255,255,255))
    space.debug_draw(options)
    space.step(1/125)
    if spawning_s:
        pygame.draw.rect(canvas,(0,0,0),(pygame.mouse.get_pos(),spawning_size))
    if spawning_d:
        pygame.draw.rect(canvas,(255,0,0),(pygame.mouse.get_pos(),spawning_size))
    pygame.display.update()
