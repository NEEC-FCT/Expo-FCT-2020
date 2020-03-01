class FlightStop {
  String from;
  String to;
  String price;
  String fromToTime;

  FlightStop(this.from, this.to, this.price,
      this.fromToTime);
}

class TicketFlightStop {
  String from;
  String fromShort;
  String to;
  String toShort;
  String flightNumber;

  TicketFlightStop(
      this.from, this.fromShort, this.to, this.toShort, this.flightNumber);
}
