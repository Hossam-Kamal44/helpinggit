package VehicleSystem {

    part def Battery{
        attribute capacity : Real;
        attribute  voltage : Real;         
        
    }
    part def  Engine{
        attribute MaxSpeed : Real;
        attribute Power : Real;
        
    }
    part def Wheel {
        attribute radius : Real;
        attribute pressure : Real;
    }
}