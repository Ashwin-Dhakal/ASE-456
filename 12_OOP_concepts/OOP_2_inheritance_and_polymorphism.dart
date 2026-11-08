void main(){
//   Car myNormalCar = Car();
//   print(myNormalCar.numberOfSeat);
//   myNormalCar.drive();
  
//   ElectricCar myTesla = ElectricCar();
//   myTesla.drive();
//   print(myTesla.batteryLevel);
//   myTesla.recharge();
//   print(myTesla.batteryLevel);
  
//   JacobsFlyingCar jacobscar = JacobsFlyingCar();
//   jacobscar.drive();
  
  JosephsSelfDrivingCar josephscar = JosephsSelfDrivingCar('Studio');
  josephscar.drive();
  
  
}

class Car {
  int numberOfSeat = 5;
  
  void drive (){
    print("wheels turn");
  }
}

class ElectricCar extends Car{
  int batteryLevel = 0;
  void recharge(){
    batteryLevel = 100;
  }
}

class JacobsFlyingCar extends Car{
  @override
  void drive(){
    print("glide forwards");
  }
  
}

class JosephsSelfDrivingCar extends Car{
  late String destination;
  JosephsSelfDrivingCar (String hisDestination){
    destination = hisDestination;
  }
  @override
  void drive(){
    super.drive();
    print ("steering towards the $destination");
  }
  
}
