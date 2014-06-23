// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3.1
// Desc: Basic Scene Example
// Date: mm/dd/yy
// Auth: ?[esp]
//

  #include "colors.inc"
  #include "skies.inc"
  #include "shapes.inc"    
  #include "finish.inc"
  #include "glass.inc"
  #include "metals.inc"
  #include "stones.inc"
  #include "woods.inc"
  #include "textures.inc"
  #include "lens.inc"
  #include "hands.inc"
  #include "vmath.inc"  
  #include "consts.inc"  

global_settings
{
  assumed_gamma 1.0
}


#declare usekubecam = true;
#declare myclock = clock;

#macro debugf (fl,a,b)
#debug concat(str (fl,a,b),"\n")
#end

#macro debugfn (fl,a,b)
#debug str (fl,a,b)
#end

#macro debugv (vc,a,b)
#debug concat("<",str (vc.x,a,b),",",str (vc.y,a,b),",",str (vc.z,a,b),">","\n")
#end

#declare k6=floor(clock*6+0.5);
#if (usekubecam) 
    #include "kubecam.inc"
    kubecam(<0,2,0>,k6)
    debugf(k6,5,60)
    #declare myclock=0.2;
#end

sky_sphere { S_Cloud2 }

light_source 
{
  vaxis_rotate(<500,0,-50>,z,45)
  color rgb .6
}                                     
light_source 
{
  vaxis_rotate(<500,0,-50>,z,135)
  color rgb .2
}                                     
light_source 
{
  vaxis_rotate(<500,0,50>,z,45)
  color rgb 0.4
  shadowless
}                                     
light_source 
{
  vaxis_rotate(<500,0,-50>,z,45)
  color rgb 0.4
  shadowless
}                                     
light_source 
{
  vaxis_rotate(<500,0,50>,z,135)
  color rgb 0.4
  shadowless
}                                     
light_source 
{
  vaxis_rotate(<500,0,-50>,z,135)
  color rgb 0.4
  shadowless
}                                     

fog{
    color rgbt <.7,.7,.7,.25>
    fog_type 2
    fog_alt 0.5
    fog_offset 0
    distance 1.5
    turbulence <.15, .15, .15>
    omega 0.35
    lambda 1.25
    octaves 5
}
//fog {colour rgbft<1.0, 1.0, 1.0, 1.0, 0.3> distance 10}
// ----------------------------------------           
height_field {
  png "plasma2.png"       
  pigment { color <0.5,0.1,0.1> }
  normal {granite}
  translate -0.6
  scale <20,10,20>  
  //translate <0,-4,-4>
}                
