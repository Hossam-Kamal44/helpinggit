package VehicleSystem {

item def voltage;
part def Engine{
    attribute MaxSpeed : Real;
    attribute Power : Real;
    
}
part def Battery{
    attribute capacity : Real;
    attribute isCharging : Boolean;
    port Supply_IN ;
}

part def Wheel {
    attribute radius : Real;
    attribute pressure : Real;
    port getSignal;
}


part def Controller{
    part battery_controller:Battery;
    port supply_out ;
    port giveSignal;
}

// sturcture
part def Car {

    attribute Model_Name : String;
    attribute numberOfWheels : Integer;
    attribute numberOfDoors : Integer;
    attribute isElectric : Boolean;
    
    part battery :Battery;
    part controller:Controller;
    part wheels : Wheel[4]; 
    // learn multiplicity

// ports and connections usage not def
    connect battery.Supply_IN to controller.supply_out;
    connect controller.giveSignal to wheels.getSignal;

}

/// behavior
action  def StartCar {
    action checkBattery {
        in voltage : Real;
        in capacity : Real;
        out batteryOK : Boolean;
    };
    action sendSignal;
    action startEngine{
        in batteryOK : Boolean;
        
    };

    first checkBattery then sendSignal;
    first sendSignal then startEngine;
    
}


}