import math, pygame, Cube, time, pymunk
import pymunk.pygame_util
pygame.init()
canvas = pygame.display.set_mode((1000,1000))
pygame.display.set_caption("Physics test")

def Create_object(mass,dynamic,pos, width, height):
    if dynamic:
        body = pymunk.Body(mass, pymunk.moment_for_box(mass, (width, height)) , body_type= pymunk.Body.DYNAMIC)
        body.position = pos
        shape = pymunk.Poly.create_box(body, (width, height))
        shape.friction = 0.3
        space.add(body, shape)
        return shape
    else:
        body = pymunk.Body(mass, pymunk.moment_for_box(mass, (width, height)) , body_type=pymunk.Body.STATIC)
        body.position = pos
        shape = pymunk.Poly.create_box(body, (width, height))
        shape.friction = 0.3
        space.add(body, shape)
        return shape
def draw_objects(objs):
    for ot in objs:
        for obj in ot:
            pygame.draw.rect(canvas,(0,0,0),())

space = pymunk.Space() #Fizikai környezet létrehozása
space.gravity = (0,100) #Gravitáció megadása (h,v)
options = pymunk.pygame_util.DrawOptions(canvas)
spawning = False
spawning_size = (20,20)
d_objects = []
d_objects.append(Create_object(10,True,(500,0),20,20))
s_objects = []
s_objects.append(Create_object(1000,False,(500,1000),1000,20))
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
                spawning = True if spawning == False else False
            if event.key == pygame.K_s and spawning:
                d_objects.append(Create_object(10,True,pygame.mouse.get_pos(),spawning_size[0],spawning_size[1]))
            if event.key == pygame.K_a and spawning:
                spawning_size = (spawning_size[0]-1, spawning_size[1]-1)
            if event.key == pygame.K_d and spawning:
                spawning_size = (spawning_size[0]+1, spawning_size[1]+1)
    canvas.fill((255,255,255))
    space.debug_draw(options)
    space.step(1/125)
    if spawning:
        pygame.draw.rect(canvas,(0,0,0),(pygame.mouse.get_pos(),spawning_size))
    pygame.display.update()
