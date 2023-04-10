//namespace com.ShockwaveConsulting;
//using { managed } from '@sap/cds/common';

context com.ShockwaveConsulting {

  entity Driver {
    key DriverUID      : UUID @(Core.Computed : true);
        FName          : String(50);
        LName          : String(50);
        DLNumber       : String(10);
        DLExpirationDt : Date;
        DLState        : String(50);
        Title          : String(50);
        IsActive       : Integer;
        CreatedDt      : Date;
  }


  entity Insurance {
    key InsuranceUID : UUID @(Core.Computed : true);
        AgencyName   : String(50);
        CreatedDt    : Date;
  }

  entity Vehicle {
    key VehicleUID   : UUID @(Core.Computed : true);
        VIN          : String(50);
        LicensePlate : String(50);
        Driver       : String(50);
        Year         : Integer;
        Brand        : String(50);
        Model        : String(50);
        Color        : String(50);
        IsElectric   : Integer;
        CreatedDt    : Date;
  }

  entity Policy {
    key PolicyUID    : UUID @(Core.Computed : true);
        PolicyNumber : String(50);
        Insurance    : Association[1..1] to Insurance;
        Vehicle      : Association[1..1] to Vehicle;
        EffectiveDt  : Date;
        ExpirationDt : Date;
        CreatedDt    : Date;
  }

  entity Itinerary {
    key ItineraryUID    : UUID @(Core.Computed : true);
        Vehicle         : Association[0..1] to Vehicle;
        Driver          : Association[0..1] to Driver;
        InTime          : Time;
        OutTime         : Time;
        InCoordsLatLon  : String(20);
        OutCoordsLatLon : String(20);
        CreatedDt       : Date;
  }

}

