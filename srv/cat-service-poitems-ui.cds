using { CatalogService } from './cat-service';

annotate CatalogService.POItems with @(
    UI: {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>POItemNumber}',
            TypeNamePlural : '{i18n>POItemNumber}',
        },
        SelectionFields  : [
            POItemNumber
        ],
        LineItem  : [
            {
                Value: POItemNumber,
                Label: '{i18n>POItemNumber}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: poHeader.POHeaderNumber,
                Label: '{i18n>POHeaderNumber}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: tax,
                Label: '{i18n>POItemTax}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: priceWithoutTax,
                Label: '{i18n>POItemPriceWithoutTax}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: priceOfTax,
                Label: '{i18n>POItemPriceOfTax}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: priceWithTax,
                Label: '{i18n>POItemPriceWithTax}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            }            
        ],
        HeaderFacets  : [
            {
                $Type             : 'UI.ReferenceFacet',
                Target            : '@UI.FieldGroup#AdministrativeData',
                Label             : '{i18n>POItemrAdministrativeData}',
                ![@UI.Importance] : #Medium
            }

        ],
        FieldGroup #AdministrativeData : {Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : '{i18n>POItemID}'
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
                Label: '{i18n>POItemMainInfo}', 
                Target: '@UI.FieldGroup#Main'
            }
        ],
        FieldGroup#Main: {
            Data: [
                {
                    Value: POItemNumber,
                    Label: '{i18n>POItemNumber}'
                },
                {
                    Value: title,
                    Label: '{i18n>POItemTitle}'
                },
                {
                    Value: description,
                    Label: '{i18n>POItemDescription}'
                },
                {
                    Value: tax,
                    Label: '{i18n>POItemTax}'
                },
                {
                    Value: priceWithoutTax,
                    Label: '{i18n>POItemPriceWithoutTax}'
                },
                {
                    Value: priceOfTax,
                    Label: '{i18n>POItemPriceOfTax}'
                },
                {
                    Value: priceWithTax,
                    Label: '{i18n>POItemPriceWithTax}'
                }                                 
            ]
        }

    }
);
