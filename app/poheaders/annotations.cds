using CatalogService as service from '../../srv/cat-service';
@odata.draft.enabled

annotate service.POHeaders with @(
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
                $Type  : 'UI.CollectionFacet',
                Label  : '{i18n>GeneralInformation}',
                ID     : 'Booking',
                Facets : [  
                    {
                        $Type: 'UI.ReferenceFacet', 
                        Label: '{i18n>POHeaderMainInfo}', 
                        Target: '@UI.FieldGroup#Main'
                    }
                ]
            }
            ,
            {
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>POItems}',
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

annotate service.POHeaders.poItems with @UI : {
      HeaderInfo  : {
      $Type : 'UI.HeaderInfoType',
      TypeName : '{i18n>POItemNumber}',
      TypeNamePlural : '{i18n>POItemNumber}',
  },

  LineItem : [
    {
        $Type : 'UI.DataField',
        Value: title,
        Label: '{i18n>POItemTitle}',
        ![@HTML5.CssDefaults] : {width : '100%'}
    },
    {
        $Type : 'UI.DataField',
        Value: tax,
        Label: '{i18n>POItemTax}',
        ![@HTML5.CssDefaults] : {width : '100%'}

    },
    {
        $Type : 'UI.DataField',
        Value: priceWithoutTax,
        Label: '{i18n>POItemPriceWithoutTax}',
        ![@HTML5.CssDefaults] : {width : '100%'}

    },
    {
        $Type : 'UI.DataField',
        Value: priceOfTax,
        Label: '{i18n>POItemPriceOfTax}',
        ![@HTML5.CssDefaults] : {width : '100%'}

    },
    {
        $Type : 'UI.DataField',
        Value: priceWithTax,
        Label: '{i18n>POItemPriceWithTax}',
        ![@HTML5.CssDefaults] : {width : '100%'}

    },
  ],
  HeaderFacets  : [
      {
          $Type             : 'UI.ReferenceFacet',
          Target            : '@UI.FieldGroup#AdministrativeData',
          Label             : '{i18n>POItemAdministrativeData}',
          ![@UI.Importance] : #Medium
      }
  ],
  FieldGroup #AdministrativeData : {Data : [
    {
        $Type : 'UI.DataField',
        Value : ID,
        Label : '{i18n>POItemID}'
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
            $Type : 'UI.DataField',
            Value: ID,
            Label: '{i18n>POItemID}'
        },
        {
            $Type : 'UI.DataField',
            Value: title,
            Label: '{i18n>POItemTitle}'
        },
        {
            $Type : 'UI.DataField',
            Value: tax,
            Label: '{i18n>POItemTax}'
        },
        {
            $Type : 'UI.DataField',
            Value: priceWithoutTax,
            Label: '{i18n>POItemPriceWithoutTax}'
        },
        {
            $Type : 'UI.DataField',
            Value: priceOfTax,
            Label: '{i18n>POItemPriceOfTax}'
        },
        {
            $Type : 'UI.DataField',
            Value: priceWithTax,
            Label: '{i18n>POItemPriceWithTax}'
        },

    ]
    }
};                 
                  
                  




