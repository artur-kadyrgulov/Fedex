sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'poheaders/test/integration/FirstJourney',
		'poheaders/test/integration/pages/POHeadersList',
		'poheaders/test/integration/pages/POHeadersObjectPage'
    ],
    function(JourneyRunner, opaJourney, POHeadersList, POHeadersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('poheaders') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOHeadersList: POHeadersList,
					onThePOHeadersObjectPage: POHeadersObjectPage
                }
            },
            opaJourney.run
        );
    }
);