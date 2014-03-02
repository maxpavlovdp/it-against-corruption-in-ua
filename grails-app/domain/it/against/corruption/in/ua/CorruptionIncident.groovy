package it.against.corruption.in.ua

class CorruptionIncident {

    String location
    Date creationDate

    String corrupterName
    String corrupterTitle
    String description
    Date incidentDate


//    static scaffold = true
    static constraints = {
        description maxSize: 1000
    }


}
