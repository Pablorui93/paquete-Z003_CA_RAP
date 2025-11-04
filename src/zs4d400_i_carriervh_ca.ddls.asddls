@AbapCatalog.sqlViewName: 'ZS4I_CARRIERVH'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ayuda de busqueda Carrier'
@Metadata.ignorePropagatedAnnotations: true
define view ZS4D400_I_CarrierVH_CA as select from /dmo/carrier  
{
@UI.lineItem: [ { position : 10 } ]
    key carrier_id as CarrierID,
 @UI.lineItem: [ { position : 20 } ]   
    name as name
}
