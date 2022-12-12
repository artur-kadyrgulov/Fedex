using { CatalogService } from './cat-service';

annotate CatalogService.CompanyCodes with @(
    UI: {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>CompanyCode}',
            TypeNamePlural : '{i18n>CompanyCodes}',
        },
        SelectionFields  : [
            CompanyCode
        ],
        LineItem  : [
            {
                Value: CompanyCode,
                Label: '{i18n>CompanyCode}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: title,
                Label: '{i18n>CompanyCodeTitle}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
            {
                Value: description,
                Label: '{i18n>CompanyCodeDescription}',
                $Type: 'UI.DataField',
                ![@HTML5.CssDefaults] : {width : '100%'}
            }
        ],
        HeaderFacets  : [
            {
                $Type             : 'UI.ReferenceFacet',
                Target            : '@UI.FieldGroup#AdministrativeData',
                Label             : '{i18n>CompanyCodeAdministrativeData}',
                ![@UI.Importance] : #Medium
            }

        ],
        FieldGroup #AdministrativeData : {Data : [
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
                Label: '{i18n>CompanyCodeMainInfo}', 
                Target: '@UI.FieldGroup#Main'
            }
        ],
        FieldGroup#Main: {
            Data: [
                {
                    Value: CompanyCode,
                    Label: '{i18n>CompanyCode}'
                },
                {
                    Value: title,
                    Label: '{i18n>CompanyCodeTitle}'
                },
                {
                    Value: description,
                    Label: '{i18n>CompanyCodeDescription}'
                }
            ]
        }

    }
);
