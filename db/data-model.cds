using {
    Currency,
    managed,
    cuid
} from '@sap/cds/common';


namespace my.fedex;

entity CompanyCodes: managed {
  key CompanyCode : String(4);
  title: String(20);
  description: String(255);
}

entity Suppliers: managed, cuid {
  key SupplierNumber : Integer @readonly;
  title : String(20);
  description: String(255);
  city: String;
  street: String;
}

entity POHeaders: managed, cuid {
  POHeaderNumber : Integer @readonly;
  title: String(20);
  description : String(255);
  price : Decimal;
  currency : String(3);
  companyCode : Association to CompanyCodes;
  supplier : Association to Suppliers;
  poItems: Association to many POItems on poItems.poHeader = $self;
}

entity POItems: managed, cuid {
  POItemNumber : Integer @readonly;
  title : String(20);
  description : String(255);
  tax : Integer;
  priceWithoutTax : Integer;
  priceOfTax : Integer @readonly;
  priceWithTax : Integer @readonly;
  poHeader : Association to POHeaders;
}

