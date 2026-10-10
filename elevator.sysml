
package ElevatorSystem {


import ScalarValues::*;
item def floor_number;

    part def Motor{
        port Motor_signal;

    }

    part def Controller {
        port Controller_command;

    }

    part def Door {
        attribute isOpen : Boolean;
        port Door_signal;

    }

    part def Cabin {

    }
    
    part def Floor {

    }

    part def Sensor{

    }

    part def Elevator {

        part elevator_controller : Controller;
        part elevator_motor : Motor;
        part door : Door;
        part cabin : Cabin;
        part floor[2] : Floor;
        part sensor[2] : Sensor;

        connect elevator_controller.Controller_command to elevator_motor.Motor_signal;
        connect  elevator_controller.Controller_command  to door.Door_signal;

        // requirement REQ001 : ElevatorRequirement {
        // }
        
        // requirement REQ002 : ElevatorRequirement {
        // }
        
        // requirement REQ003 : ElevatorRequirement {
        // }
        
        // requirement REQ004 : ElevatorRequirement {
        // }

        

    }

    action ElevatorAction {
        action CallElevator {
            in floor_number : Integer;
            
        }
        action checkDoor {
            
        }
        action closeDoor {
            
        }
        action StartMotor {
            
        }
        action ReachRequestedFloor{

        }
        action StopMotor {
            
        }
        action OpenDoor {
            
        }
        first CallElevator then checkDoor;
        first checkDoor then closeDoor;
        first closeDoor then StartMotor;
        first StartMotor then ReachRequestedFloor;
        first ReachRequestedFloor then StopMotor;
        first StopMotor then OpenDoor;
    }

    // Requirements

    requirement def ElevatorRequirement {
    }
    
    requirement REQ001 : ElevatorRequirement {
        doc /* The elevator shall reach the requested floor. */
    }
    
    requirement REQ002 : ElevatorRequirement {
        doc /* The elevator shall not start moving while the door is open. */
    }
    
    requirement REQ003 : ElevatorRequirement {
        doc /* The elevator shall stop when it reaches the requested floor. */
    }
    
    requirement REQ004 : ElevatorRequirement {
        doc /* The elevator shall open the door after stopping at the requested floor. */
    }

  
}