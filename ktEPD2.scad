//
// ktEPD2
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;


body_x = 170.2+1.0;
body_y = 111.5;
body_z = 1.2+0.5;
body_d = 2.7;

waku_x = 190;
waku_y = 10;
waku_z = 11;

bwaku_x = 80+10;
bwaku_y = 50;
poll1 = 6;
poll2 = 9;

stand_z = 50;
side_z = 10;

A = 1;


if(A)
{
    difference()
    {
        union()
        {
            rotate( [-9, 0, 0] )
            difference()
            {
                translate( [(waku_x-(body_x+2))/2, 0, 0] )
                cube( [body_x+2, waku_y, th+waku_z] );
                
                translate( [(waku_x-body_x)/2, waku_y/2-body_z/2, th] )
                cube( [body_x, body_z, body_y] );
            }
            translate( [waku_x/2-bwaku_x/2-5, 10, 0] )
            cube( [bwaku_x+8, bwaku_y, th] );
            translate( [waku_x/2-bwaku_x/2-5, 50, th] )
            cube( [th, 10, 10] );
            translate( [waku_x/2+bwaku_x/2+3-th, 50, th] )
            cube( [th, 10, 10] );
        }

        translate( [waku_x/2-25/2-2, waku_y/2-body_z/2+0.3, 0.66] )
        cube( [25, 30, 0.6] );
        translate( [waku_x/2-25/2-2, waku_y/2-body_z/2+0.9, 0.8-gap1] )
        cube( [25, 30, 3+gap2] );
        translate( [waku_x/2-25/2-2, waku_y/2-body_z/2+1.8, 3.8-gap1] )
        cube( [25, 10, 5+gap2] );
        translate( [waku_x/2-25/2-2, waku_y/2-body_z/2+2.5, 8.8] )
        cube( [25, 10, 5] );
        translate( [-gap1, 0, -10] )
        cube( [waku_x+gap2, 50, 10] );
        
        translate( [50, 15, -10] )
        cube( [10, 35, 50] );
        translate( [70, 15, -10] )
        cube( [9, 35, 50] );
        translate( [78, 36, -10] )
        cube( [40, 14, 50] );
        translate( [107, 15, -10] )
        cube( [11, 35, 50] );
        translate( [128, 15, -10] )
        cube( [10, 35, 50] );
    }
    
    translate( [waku_x-bwaku_x-6, 30, th] )
    {
        translate( [58/2, 0, poll1/2] )
        cylinder( h=poll1, r=5/2, center=true );
        translate( [58.25/2, 0, poll2/2] )
        cylinder( h=poll2, r=2.5/2, center=true );
        translate( [-58/2, 0, poll1/2] )
        cylinder( h=poll1, r=5/2, center=true );
        translate( [-58/2, 0, poll2/2] )
        cylinder( h=poll2, r=2.5/2, center=true );
        translate( [58/2, 23, poll1/2] )
        cylinder( h=poll1, r=5/2, center=true );
        translate( [58/2, 23, poll2/2] )
        cylinder( h=poll2, r=2.5/2, center=true );
        translate( [-58/2, 23, poll1/2] )
        cylinder( h=poll1, r=5/2, center=true );
        translate( [-58/2, 23, poll2/2] )
        cylinder( h=poll2, r=2.5/2, center=true );
    }
}
