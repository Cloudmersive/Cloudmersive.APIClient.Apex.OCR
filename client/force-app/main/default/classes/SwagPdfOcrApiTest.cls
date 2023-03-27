@isTest
private class SwagPdfOcrApiTest {
    /**
     * Returns the result of the Async Job - possible states can be STARTED or COMPLETED
     *
     * 
     */
    @isTest
    private static void pdfOcrGetAsyncJobStatusTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'asyncJobID' => 'asyncJobID_example'
        };

        SwagClient client;
        SwagPdfOcrApi api;
        SwagPdfToTextResponse response;
        SwagPdfToTextResponse expectedResponse;

        client = new SwagClient();
        api = new SwagPdfOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "OcrPages" : [ {\r\n    "TextResult" : "TextResult",\r\n    "PageNumber" : 0,\r\n    "MeanConfidenceLevel" : 6.0274563\r\n  }, {\r\n    "TextResult" : "TextResult",\r\n    "PageNumber" : 0,\r\n    "MeanConfidenceLevel" : 6.0274563\r\n  } ],\r\n  "AsyncJobID" : "AsyncJobID",\r\n  "Successful" : true,\r\n  "AsyncJobStatus" : "AsyncJobStatus"\r\n}');
        expectedResponse = SwagPdfToTextResponse.getExample();
        response = (SwagPdfToTextResponse) api.pdfOcrGetAsyncJobStatus(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert a PDF into text lines with location
     *
     * Converts a PDF into lines/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.
     */
    @isTest
    private static void pdfOcrPdfToLinesWithLocationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents'),
            'language' => 'language_example',
            'preprocessing' => 'preprocessing_example'
        };

        SwagClient client;
        SwagPdfOcrApi api;
        SwagPdfToLinesWithLocationResult response;
        SwagPdfToLinesWithLocationResult expectedResponse;

        client = new SwagClient();
        api = new SwagPdfOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "OcrPages" : [ {\r\n    "PageNumber" : 0,\r\n    "Successful" : true,\r\n    "Lines" : [ {\r\n      "LineText" : "LineText",\r\n      "Words" : [ {\r\n        "ConfidenceLevel" : 7.061401241503109,\r\n        "XLeft" : 1,\r\n        "YTop" : 5,\r\n        "ParagraphNumber" : 3,\r\n        "PageNumber" : 2,\r\n        "WordNumber" : 6,\r\n        "Height" : 2,\r\n        "WordText" : "WordText",\r\n        "BlockNumber" : 9,\r\n        "Width" : 5,\r\n        "LineNumber" : 0\r\n      }, {\r\n        "ConfidenceLevel" : 7.061401241503109,\r\n        "XLeft" : 1,\r\n        "YTop" : 5,\r\n        "ParagraphNumber" : 3,\r\n        "PageNumber" : 2,\r\n        "WordNumber" : 6,\r\n        "Height" : 2,\r\n        "WordText" : "WordText",\r\n        "BlockNumber" : 9,\r\n        "Width" : 5,\r\n        "LineNumber" : 0\r\n      } ]\r\n    }, {\r\n      "LineText" : "LineText",\r\n      "Words" : [ {\r\n        "ConfidenceLevel" : 7.061401241503109,\r\n        "XLeft" : 1,\r\n        "YTop" : 5,\r\n        "ParagraphNumber" : 3,\r\n        "PageNumber" : 2,\r\n        "WordNumber" : 6,\r\n        "Height" : 2,\r\n        "WordText" : "WordText",\r\n        "BlockNumber" : 9,\r\n        "Width" : 5,\r\n        "LineNumber" : 0\r\n      }, {\r\n        "ConfidenceLevel" : 7.061401241503109,\r\n        "XLeft" : 1,\r\n        "YTop" : 5,\r\n        "ParagraphNumber" : 3,\r\n        "PageNumber" : 2,\r\n        "WordNumber" : 6,\r\n        "Height" : 2,\r\n        "WordText" : "WordText",\r\n        "BlockNumber" : 9,\r\n        "Width" : 5,\r\n        "LineNumber" : 0\r\n      } ]\r\n    } ]\r\n  }, {\r\n    "PageNumber" : 0,\r\n    "Successful" : true,\r\n    "Lines" : [ {\r\n      "LineText" : "LineText",\r\n      "Words" : [ {\r\n        "ConfidenceLevel" : 7.061401241503109,\r\n        "XLeft" : 1,\r\n        "YTop" : 5,\r\n        "ParagraphNumber" : 3,\r\n        "PageNumber" : 2,\r\n        "WordNumber" : 6,\r\n        "Height" : 2,\r\n        "WordText" : "WordText",\r\n        "BlockNumber" : 9,\r\n        "Width" : 5,\r\n        "LineNumber" : 0\r\n      }, {\r\n        "ConfidenceLevel" : 7.061401241503109,\r\n        "XLeft" : 1,\r\n        "YTop" : 5,\r\n        "ParagraphNumber" : 3,\r\n        "PageNumber" : 2,\r\n        "WordNumber" : 6,\r\n        "Height" : 2,\r\n        "WordText" : "WordText",\r\n        "BlockNumber" : 9,\r\n        "Width" : 5,\r\n        "LineNumber" : 0\r\n      } ]\r\n    }, {\r\n      "LineText" : "LineText",\r\n      "Words" : [ {\r\n        "ConfidenceLevel" : 7.061401241503109,\r\n        "XLeft" : 1,\r\n        "YTop" : 5,\r\n        "ParagraphNumber" : 3,\r\n        "PageNumber" : 2,\r\n        "WordNumber" : 6,\r\n        "Height" : 2,\r\n        "WordText" : "WordText",\r\n        "BlockNumber" : 9,\r\n        "Width" : 5,\r\n        "LineNumber" : 0\r\n      }, {\r\n        "ConfidenceLevel" : 7.061401241503109,\r\n        "XLeft" : 1,\r\n        "YTop" : 5,\r\n        "ParagraphNumber" : 3,\r\n        "PageNumber" : 2,\r\n        "WordNumber" : 6,\r\n        "Height" : 2,\r\n        "WordText" : "WordText",\r\n        "BlockNumber" : 9,\r\n        "Width" : 5,\r\n        "LineNumber" : 0\r\n      } ]\r\n    } ]\r\n  } ],\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagPdfToLinesWithLocationResult.getExample();
        response = (SwagPdfToLinesWithLocationResult) api.pdfOcrPdfToLinesWithLocation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert a PDF into words with location
     *
     * Converts a PDF into words/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.
     */
    @isTest
    private static void pdfOcrPdfToWordsWithLocationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents'),
            'language' => 'language_example',
            'preprocessing' => 'preprocessing_example'
        };

        SwagClient client;
        SwagPdfOcrApi api;
        SwagPdfToWordsWithLocationResult response;
        SwagPdfToWordsWithLocationResult expectedResponse;

        client = new SwagClient();
        api = new SwagPdfOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "OcrPages" : [ {\r\n    "PageNumber" : 0,\r\n    "Words" : [ {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 1,\r\n      "YTop" : 5,\r\n      "ParagraphNumber" : 3,\r\n      "PageNumber" : 2,\r\n      "WordNumber" : 6,\r\n      "Height" : 2,\r\n      "WordText" : "WordText",\r\n      "BlockNumber" : 9,\r\n      "Width" : 5,\r\n      "LineNumber" : 0\r\n    }, {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 1,\r\n      "YTop" : 5,\r\n      "ParagraphNumber" : 3,\r\n      "PageNumber" : 2,\r\n      "WordNumber" : 6,\r\n      "Height" : 2,\r\n      "WordText" : "WordText",\r\n      "BlockNumber" : 9,\r\n      "Width" : 5,\r\n      "LineNumber" : 0\r\n    } ],\r\n    "Successful" : true\r\n  }, {\r\n    "PageNumber" : 0,\r\n    "Words" : [ {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 1,\r\n      "YTop" : 5,\r\n      "ParagraphNumber" : 3,\r\n      "PageNumber" : 2,\r\n      "WordNumber" : 6,\r\n      "Height" : 2,\r\n      "WordText" : "WordText",\r\n      "BlockNumber" : 9,\r\n      "Width" : 5,\r\n      "LineNumber" : 0\r\n    }, {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 1,\r\n      "YTop" : 5,\r\n      "ParagraphNumber" : 3,\r\n      "PageNumber" : 2,\r\n      "WordNumber" : 6,\r\n      "Height" : 2,\r\n      "WordText" : "WordText",\r\n      "BlockNumber" : 9,\r\n      "Width" : 5,\r\n      "LineNumber" : 0\r\n    } ],\r\n    "Successful" : true\r\n  } ],\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagPdfToWordsWithLocationResult.getExample();
        response = (SwagPdfToWordsWithLocationResult) api.pdfOcrPdfToWordsWithLocation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Converts an uploaded PDF file into text via Optical Character Recognition.
     *
     * 
     */
    @isTest
    private static void pdfOcrPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents'),
            'recognitionMode' => 'recognitionMode_example',
            'language' => 'language_example',
            'preprocessing' => 'preprocessing_example'
        };

        SwagClient client;
        SwagPdfOcrApi api;
        SwagPdfToTextResponse response;
        SwagPdfToTextResponse expectedResponse;

        client = new SwagClient();
        api = new SwagPdfOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "OcrPages" : [ {\r\n    "TextResult" : "TextResult",\r\n    "PageNumber" : 0,\r\n    "MeanConfidenceLevel" : 6.0274563\r\n  }, {\r\n    "TextResult" : "TextResult",\r\n    "PageNumber" : 0,\r\n    "MeanConfidenceLevel" : 6.0274563\r\n  } ],\r\n  "AsyncJobID" : "AsyncJobID",\r\n  "Successful" : true,\r\n  "AsyncJobStatus" : "AsyncJobStatus"\r\n}');
        expectedResponse = SwagPdfToTextResponse.getExample();
        response = (SwagPdfToTextResponse) api.pdfOcrPost(params);
        System.assertEquals(expectedResponse, response);
    }
}