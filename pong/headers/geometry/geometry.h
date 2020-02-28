 #ifndef GEOMETRY_H
 #define GEOMETRY_H
 
 #include "headers/graphicdisplay.h"

 #define MAX_POINTS 20

 typedef struct tPoint
 {
     uint8_t x;
     uint8_t y;
 } POINT;
 
 typedef struct tGeometry
 {
     int numpoints;
     int sizex;
     int sizey;
     POINT px[MAX_POINTS];
 } GEOMETRY, *PGEOMETRY;
 
 typedef struct tObj
 {
     PGEOMETRY geo;
     int dirx,diry;
     int posx,posy;
     void (* draw) (struct tobj *);
     void (* clear) (struct tobj *);
     void (* move) (struct tobj *);
     void (* set_speed) (struct tobj *, int, int);
 } OBJECT, *POBJECT;
 
 void draw_object(POBJECT o);
 void clear_object(POBJECT o);
 void move_object(POBJECT o);
 void set_speed_object(POBJECT o, int speedx, int speedy);
 
 #endif