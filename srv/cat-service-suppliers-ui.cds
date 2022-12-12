using { CatalogService } from './cat-service';

annotate CatalogService.Suppliers with @(
    UI: {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>SupplierNumber}',
            TypeNamePlural : '{i18n>SupplierNumber}',
        },
        SelectionFields  : [
            SupplierNumber
        ],
        LineItem  : [
            {
                Value: SupplierNumber,
                Label: '{i18n>SupplierNumber}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: title,
                Label: '{i18n>SupplierTitle}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: description,
                Label: '{i18n>SupplierDescription}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: city,
                Label: '{i18n>SupplierCity}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: street,
                Label: '{i18n>SupplierStreet}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            }
        ],
        HeaderFacets  : [
            {
                $Type             : 'UI.ReferenceFacet',
                Target            : '@UI.FieldGroup#AdministrativeData',
                Label             : '{i18n>SupplierAdministrativeData}',
                ![@UI.Importance] : #Medium
            }

        ],
        FieldGroup #AdministrativeData : {Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : '{i18n>SupplierID}'
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt
            }
        ]},
        Facets: [
            {
                $Type: 'UI.ReferenceFacet', 
                Label: '{i18n>SupplierMainInfo}', 
                Target: '@UI.FieldGroup#Main'
            }
        ],
        FieldGroup#Main: {
            Data: [
                {
                    Value: SupplierNumber,
                    Label: '{i18n>SupplierNumber}'
                },
                {
                    Value: title,
                    Label: '{i18n>SupplierTitle}'
                },
                {
                    Value: description,
                    Label: '{i18n>SupplierDescription}'
                },
                {
                    Value: city,
                    Label: '{i18n>SupplierCity}'
                },
                {
                    Value: street,
                    Label: '{i18n>SupplierStreet}'
                }
            ]
        }

    }
);
