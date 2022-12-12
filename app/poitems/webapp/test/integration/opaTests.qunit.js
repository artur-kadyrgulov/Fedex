sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'poitems/test/integration/FirstJourney',
		'poitems/test/integration/pages/POItemsList',
		'poitems/test/integration/pages/POItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, POItemsList, POItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('poitems') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOItemsList: POItemsList,
					onThePOItemsObjectPage: POItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);