@isTest
private class SwagReceiptsApiTest {
    /**
     * Convert a photo of a receipt into a CSV file containing structured information from the receipt
     *
     * Leverage Deep Learning to automatically turn a photo of a receipt into a CSV file containing the structured information from the receipt.
     */
    @isTest
    private static void receiptsPhotoToCSVTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagReceiptsApi api;
        Object response;
        Object expectedResponse;

        client = new SwagClient();
        api = new SwagReceiptsApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"{}"');
        expectedResponse = null;
        response = (Object) api.receiptsPhotoToCSV(params);
        System.assertEquals(expectedResponse, response);
    }
}