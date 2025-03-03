@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee (Consumption)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #D,
    sizeCategory:   #M,
    dataClass:      #MASTER
}
define view entity /DMO/C_Employee_Ann
  as select from /DMO/R_Employee_Ann
  {
    key EmployeeId,
        FirstName,
        LastName,
        BirthDate,
        EntryDate,
        DepartmentId,
        @Semantics.amount.currencyCode: 'CurrencyCode'
        AnnualSalary,
        CurrencyCode,
        CreatedBy,
        CreatedAt,
        LocalLastChangedBy,
        LocalLastChangedAt,
        LastChangedAt
  }
