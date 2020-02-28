#include "headers/geometry/geometry.h"

void draw_object(POBJECT o)
{
    int i;
    
    for(i = 0; i < o->geo->numpoints; i++)
    {
        pixel(o->posx + o->geo->px[i].x,o->posy + o->geo->px[i].y,1);
    }
}

void clear_object(POBJECT o)
{
        int i;
    
    for(i = 0; i < o->geo->numpoints; i++)
    {
        pixel(o->posx + o->geo->px[i].x,o->posy + o->geo->px[i].y,0);
    }
}

void move_object(POBJECT o)
{
    clear_object(o);
    
    o->posx += o->dirx;
    o->posy += o->diry;
    
    if(o->posx < 1)
    {
        o->dirx *= -1;
    }
    if( (o->posx + o->geo->sizex) > 128)
    {
        o->dirx *= -1;
    }
    if(o->posy < 1)
    {
        o->diry *= -1;
    }
    if( (o->posy + o->geo->sizey) > 64 )
    {
        o->diry *= -1;
    }
    
    draw_object(o);
}

void set_speed_object(POBJECT o, int speedx, int speedy)
{
    o->dirx = speedx;
    o->diry = speedy;
}