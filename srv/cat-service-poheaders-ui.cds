using { CatalogService } from './cat-service';

annotate CatalogService.POHeaders with @(
    UI: {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>POHeaderNumber}',
            TypeNamePlural : '{i18n>POHeaderNumber}',
        },
        SelectionFields  : [
            POHeaderNumber
        ],
        LineItem  : [
            {
                Value: POHeaderNumber,
                Label: '{i18n>POHeaderNumber}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: companyCode_CompanyCode,
                Label: '{i18n>CompanyCode}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: supplier_SupplierNumber,
                Label: '{i18n>SupplierNumber}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: price,
                Label: '{i18n>POHeaderPrice}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: currency,
                Label: '{i18n>POHeaderCurrency}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            }
        ],
        HeaderFacets  : [
            {
                $Type             : 'UI.ReferenceFacet',
                Target            : '@UI.FieldGroup#AdministrativeData',
                Label             : '{i18n>POHeaderAdministrativeData}',
                ![@UI.Importance] : #Medium
            }
        ],
        FieldGroup #AdministrativeData : {Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : '{i18n>POHeaderID}'
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
                Label: '{i18n>POHeaderMainInfo}', 
                Target: '@UI.FieldGroup#Main'
            },
            {
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>po_items}',
                Target : 'poItems/@UI.LineItem'
            }
        ],
        FieldGroup#Main: {
            Data: [
                {
                    Value: POHeaderNumber,
                    Label: '{i18n>POHeaderNumber}'
                },
                {
                    Value: title,
                    Label: '{i18n>POHeaderTitle}'
                },
                {
                    Value: description,
                    Label: '{i18n>POHeaderDescription}'
                },
                {
                    Value: companyCode_CompanyCode,
                    Label: '{i18n>CompanyCode}'
                },
                {
                    Value: supplier_SupplierNumber,
                    Label: '{i18n>SupplierNumber}'
                },
                {
                    Value: price,
                    Label: '{i18n>POHeaderPrice}'
                },
                {
                    Value: currency,
                    Label: '{i18n>POHeaderCurrency}'
                }                                 
            ]
        }
    }
);
