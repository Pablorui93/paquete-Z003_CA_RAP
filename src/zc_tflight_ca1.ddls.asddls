@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZTFLIGHT_CA1'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_TFLIGHT_CA1
  provider contract transactional_query
  as projection on ZR_TFLIGHT_CA1
  association [1..1] to ZR_TFLIGHT_CA1 as _BaseEntity on $projection.CarrierID = _BaseEntity.CarrierID and $projection.ConnectionID = _BaseEntity.ConnectionID
{
    @Consumption.valueHelpDefinition: [ {
    entity.name: 'ZS4D400_I_CarrierVH_CA', 
    entity.element: 'CarrierID' 
    } ]
  key CarrierID,
  key ConnectionID,
  @Semantics: {
    amount.currencyCode: 'CurrencyCode'
  }
  Price,
  @Consumption: {
    valueHelpDefinition: [ {
      entity.element: 'Currency', 
      entity.name: 'I_CurrencyStdVH', 
      useForValidation: true
    } ]
  }
  CurrencyCode,
  DepartureAirport,
  DestinationAirport,
  CityF,
  CityT,
  Status,
  @Semantics: {
    user.createdBy: true
  }
  LocalCreateBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  LocalCreatedAt,
  @Semantics: {
    user.localInstanceLastChangedBy: true
  }
  LocalLastChangedBy,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LocalLastChangedAt,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  _BaseEntity
  
 
}
