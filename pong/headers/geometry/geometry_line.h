#ifndef GEOMETRY_LINE_H
#define GEOMETRY_LINE_H
#include "headers/geometry/geometry.h"

GEOMETRY line_geometry =
 {
     24,                                //numpoints
     2,12,                               //sizex,sizey
     {
         {0,0}, {1,0},
         {0,1}, {1,1},
         {0,2}, {1,2},
         {0,3}, {1,3},
         {0,4}, {1,4},
         {0,5}, {1,5},      // Points
         {0,6}, {1,6},
         {0,7}, {1,7},
         {0,8}, {1,8},
         {0,9}, {1,9},
         {0,10}, {1,10},
         {0,11}, {1,11},
         {0,12}, {1,12},
         {0,13}, {1,13},
         {0,14}, {1,14},
     }
 };
 
 static OBJECT line =
 {
     &line_geometry,    // geometri för en boll
     0,0,               // initiala riktningskoordinater
     2,0,               // initial startposition
     draw_object,
     clear_object,
     move_object,
     set_speed_object
 };
#endif