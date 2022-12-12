using my.fedex as my from '../db/data-model';

service CatalogService {
    entity CompanyCodes @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'FedexViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'FedexManager' ]
            }
    ]) as projection on my.CompanyCodes;
    annotate CompanyCodes with @odata.draft.enabled;

    entity Suppliers @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'FedexViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'FedexManager' ]
            }
    ]) as projection on my.Suppliers;
    annotate Suppliers with @odata.draft.enabled;

    entity POHeaders @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'FedexViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'FedexManager' ]
            }
    ]) as projection on my.POHeaders;
    annotate POHeaders with @odata.draft.enabled;

//    entity POItems @(restrict : [
//            {
//                grant : [ 'READ' ],
//                to : [ 'FedexViewer' ]
//            },
//            {
//                grant : [ '*' ],
//                to : [ 'FedexManager' ]
//            }
//    ]) as projection on my.POItems;
//    annotate POItems with @odata.draft.enabled;

}
