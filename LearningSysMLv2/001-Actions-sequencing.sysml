part def bRcCar {
  part battery {
    attribute isFull : ScalarValues::Boolean;
  }
   
  action charCar {
     
     action plugInCharger;
     action chargeBattery;
    
    first start;
    then plugInCharger;
    
    first plugInCharger ;
    then decide;
      if battery.isFull then m1;
      else chargeBattery;
  
   
    first chargeBattery then m1;

	 merge m1;
    then done;

  
  }
}