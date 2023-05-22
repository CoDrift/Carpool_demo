class Rides {
  late final String Model, From, To, Day, TND;

  Rides(model, lcpnum, clr, myear, cID) {
    this.Model = model;
    this.From = lcpnum;
    this.To = clr;
    this.Day = myear;
    this.TND = cID;
  }
}

final RidesList = <Rides>[];