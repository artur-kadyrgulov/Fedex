const cds = require("@sap/cds");

class CatalogService extends cds.ApplicationService { async init(){

    const { CompanyCodes, Suppliers, POHeaders } = this.entities;

    this.before ('NEW', 'Suppliers', async (req) => {
        const { SupplierNumber } = await SELECT.one `max(SupplierNumber) as SupplierNumber` .from (Suppliers);
        req.data.SupplierNumber = SupplierNumber + 1;
    })

    this.before ('NEW', 'POHeaders', async (req) => {
        const { POHeaderNumber } = await SELECT.one `max(POHeaderNumber) as POHeaderNumber` .from (POHeaders);
        req.data.POHeaderNumber = POHeaderNumber + 1;
    })

    this.before ('NEW', 'POItems', async (req) => {
        const { POItemNumber } = await SELECT.one `max(POItemNumber) as POItemNumber` .from (POItems);
        req.data.POItemNumber = POHeaderNumber + 1;
    })

    this.before ('SAVE', 'CompanyCodes', async (req) => {
        const { title, description } = req.data;
        if (title == null) throw req.reject (400, 'Enter a title.')
        if (description == null) throw req.reject (400, 'Enter a description.')
    })

    this.before ('SAVE', 'Suppliers', async (req) => {
        const { title, city, street } = req.data;
        if (title == null) throw req.reject (400, 'Enter a title.')
        if (city == null) throw req.reject (400, 'Enter a city.')
        if (street == null) throw req.reject (400, 'Enter a street.')
    })

    this.before ('SAVE', 'POHeaders', async (req) => {
        const { title, description, supplier_SupplierNumber, companyCode_CompanyCode } = req.data;
        if (title == null) throw req.reject (400, 'Enter a title.')
        if (description == null) throw req.reject (400, 'Enter a description.')
        if (supplier_SupplierNumber == null) throw req.reject (400, 'Enter a supplierNumber.')
        if (companyCode_CompanyCode == null) throw req.reject (400, 'Enter a companyCodee.')    
    })

    await super.init()
}}
  
module.exports = { CatalogService }
