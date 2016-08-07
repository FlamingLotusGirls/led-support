angle = 30;


module leg () {
  linear_extrude(height=5) 
       square([8,6],true);
}
module nleg () {
  rotate(a = angle, v = [0, 1, 0])  
  linear_extrude(height=5) 
       square([11,8],true);
}

module center () {
difference(){  
    cylinder(  5, 4, 4,false,$fn=200);
    cylinder(  5, 0.6, 0.6,false,$fn=200);
    
}
}
union(){
  
   rotate(a = 0, v = [0, 0, 1])
    translate ([5,0,0]) 
        difference(){  
            leg();
            translate ([1,0,3.5]) 
            nleg();
        }  
    rotate(a = 120, v = [0, 0, 1])
    translate ([5,0,0]) 
        difference(){  
            leg();
            translate ([1,0,3.5]) 
            nleg();
        }  
    rotate(a = 240, v = [0, 0, 1])
    translate ([5,0,0]) 
        difference(){  
            leg();
            translate ([1,0,3.5]) 
            nleg();
        }      
   center ();
}