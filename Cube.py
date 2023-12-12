import pygame
import math
class Cuboid:
    #def __init__(self,x,y,w,h,weight,rel_speed,color):
    def __init__(self,weight,rel_speed,color, recten):
        #self.x = x
        #self.y = y
        #self.w = w
        #self.h = h
        self.wh = weight
        self.acc = rel_speed
        self.c = color
        self.rect = recten
class PolyCuboid:
    def __init__(self, center,a, color):
        self.center = center
        self.a = a
        self.c = color
    def create_rect(self, screen, rotation):
        #c1 = [self.center[0] - math.floor(math.sqrt(2*(self.a/2)**2)), self.center[1] - math.floor(math.sqrt(2*(self.a/2)**2))]
        #c2 = [self.center[0] + math.floor(math.sqrt(2*(self.a/2)**2)), self.center[1] - math.floor(math.sqrt(2*(self.a/2)**2))]
        #c3 = [self.center[0] + math.floor(math.sqrt(2*(self.a/2)**2)), self.center[1] + math.floor(math.sqrt(2*(self.a/2)**2))]
        #c4 = [self.center[0] - math.floor(math.sqrt(2*(self.a/2)**2)), self.center[1] + math.floor(math.sqrt(2*(self.a/2)**2))]
        r = math.floor(self.a/math.sqrt(math.pi)) *1.79
        #r2 = math.floor(math.sqrt(2*(self.a/2)**2))
        #pygame.draw.circle(screen,(0,255,120,120),[self.center[0],self.center[1]],r)
        points = []
        rot = 0
        for i in range(4):
            angle_rad = math.radians(rot+rotation)
            pt_x = self.center[0] + r * math.sin(angle_rad)
            pt_y = self.center[1] - r * math.cos(angle_rad)
            points.append([pt_x,pt_y])
            rot+=90
        #pygame.draw.circle(screen, (255, 0, 0), [pt_x, pt_y], 2)
        #pygame.draw.polygon(screen, self.c, [(c1[0], c1[1]), (c2[0], c2[1]), (c3[0], c3[1]), (c4[0], c4[1])])
        pygame.draw.polygon(screen, self.c, [(points[0][0], points[0][1]), (points[1][0], points[1][1]), (points[2][0], points[2][1]), (points[3][0], points[3][1])])
        pygame.draw.circle(screen, (255, 0, 0), [self.center[0],self.center[1]], 6)
        font = pygame.font.SysFont(None, 20)
        text = font.render(str("%.2f" % rotation), True, (255, 0, 0))
        screen.blit(text, text.get_rect(center=(self.center[0],self.center[1]+15)))
        pygame.draw.circle(screen, (255, 0, 0), [points[0][0], points[0][1]], 6)
        pygame.draw.circle(screen, (0, 255, 0), [points[1][0], points[1][1]], 6)
        pygame.draw.circle(screen, (0, 0, 255), [points[2][0], points[2][1]], 6)
        pygame.draw.circle(screen, (255, 0, 255), [points[3][0], points[3][1]], 6)
