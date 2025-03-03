@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee (Consumption)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #D,
    sizeCategory:   #M,
    dataClass:      #MASTER
}
define view entity /DMO/C_Employee_Qry
  as select from /DMO/R_Employee_Rel
  {
    key EmployeeId,
        FirstName,
        LastName,
        DepartmentId,

        _Department.Description         as DepartmentDescription,
        _Department._Assistant.LastName as AssistantName,

        /* Associations */
        _Department

  }
