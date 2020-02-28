#ifndef GEOMETRY_BALL_H
#define GEOMETRY_BALL_H
#include "headers/geometry/geometry.h"
 
 GEOMETRY ball_geometry =
 {
     12,                                //numpoints
     4,4,                               //sizex,sizey
     {
         {0,1}, {0,2}, {1,0}, {1,1},
         {1,2}, {1,3}, {2,0}, {2,1},    //points
         {2,2}, {2,3}, {3,1}, {3,2}
     }
 };
 
 static OBJECT ball =
 {
     &ball_geometry,    // geometri för en boll
     0,0,               // initiala riktningskoordinater
     1,1,               // initial startposition
     draw_object,
     clear_object,
     move_object,
     set_speed_object
 };
 #endif