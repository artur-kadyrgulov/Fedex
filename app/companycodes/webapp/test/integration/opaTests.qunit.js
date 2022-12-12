sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'companycodes/test/integration/FirstJourney',
		'companycodes/test/integration/pages/CompanyCodesList',
		'companycodes/test/integration/pages/CompanyCodesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CompanyCodesList, CompanyCodesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('companycodes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCompanyCodesList: CompanyCodesList,
					onTheCompanyCodesObjectPage: CompanyCodesObjectPage
                }
            },
            opaJourney.run
        );
    }
);