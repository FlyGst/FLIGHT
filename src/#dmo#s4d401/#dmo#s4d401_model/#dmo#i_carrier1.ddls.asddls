@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Carrier View'

define view entity /DMO/I_Carrier1
  as select from /dmo/carrier as Airline


  {
    key Airline.carrier_id    as AirlineID,
        Airline.name          as Name,

        Airline.currency_code as CurrencyCode,

        last_changed_at       as LastChangedAt,
        local_created_at      as LocalCreatedAt,
        local_created_by      as LocalCreatedBy,
        local_last_changed_at as LocalLastChangedAt,
        local_last_changed_by as LocalLastChangedBy

  }
