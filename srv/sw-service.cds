using { com.ShockwaveConsulting as o} from '../db/schema';

@path: 'service/vehicle'
service VehicleService {

    @requires: 'authenticated-user'
    entity Driver       as projection on o.Driver;

    @requires: 'Admin'     
    entity Vehicle      as projection on o.Vehicle;

    entity Itinerary    as projection on o.Itinerary;
    entity Insurance    as projection on o.Insurance;
    entity Policy       as projection on o.Policy;

}