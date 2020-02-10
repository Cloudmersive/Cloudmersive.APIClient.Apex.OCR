@isTest
private class SwagImageOcrApiTest {
    /**
     * Convert a scanned image into words with location
     *
     * Converts an uploaded image in common formats such as JPEG, PNG into lines/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.
     */
    @isTest
    private static void imageOcrImageLinesWithLocationTest() {
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
        SwagImageOcrApi api;
        SwagImageToLinesWithLocationResult response;
        SwagImageToLinesWithLocationResult expectedResponse;

        client = new SwagClient();
        api = new SwagImageOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "Successful" : true,\r\n  "Lines" : [ {\r\n    "LineText" : "LineText",\r\n    "Words" : [ {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 1,\r\n      "YTop" : 5,\r\n      "ParagraphNumber" : 3,\r\n      "PageNumber" : 2,\r\n      "WordNumber" : 6,\r\n      "Height" : 2,\r\n      "WordText" : "WordText",\r\n      "BlockNumber" : 9,\r\n      "Width" : 5,\r\n      "LineNumber" : 0\r\n    }, {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 1,\r\n      "YTop" : 5,\r\n      "ParagraphNumber" : 3,\r\n      "PageNumber" : 2,\r\n      "WordNumber" : 6,\r\n      "Height" : 2,\r\n      "WordText" : "WordText",\r\n      "BlockNumber" : 9,\r\n      "Width" : 5,\r\n      "LineNumber" : 0\r\n    } ]\r\n  }, {\r\n    "LineText" : "LineText",\r\n    "Words" : [ {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 1,\r\n      "YTop" : 5,\r\n      "ParagraphNumber" : 3,\r\n      "PageNumber" : 2,\r\n      "WordNumber" : 6,\r\n      "Height" : 2,\r\n      "WordText" : "WordText",\r\n      "BlockNumber" : 9,\r\n      "Width" : 5,\r\n      "LineNumber" : 0\r\n    }, {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 1,\r\n      "YTop" : 5,\r\n      "ParagraphNumber" : 3,\r\n      "PageNumber" : 2,\r\n      "WordNumber" : 6,\r\n      "Height" : 2,\r\n      "WordText" : "WordText",\r\n      "BlockNumber" : 9,\r\n      "Width" : 5,\r\n      "LineNumber" : 0\r\n    } ]\r\n  } ]\r\n}');
        expectedResponse = SwagImageToLinesWithLocationResult.getExample();
        response = (SwagImageToLinesWithLocationResult) api.imageOcrImageLinesWithLocation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert a scanned image into words with location
     *
     * Converts an uploaded image in common formats such as JPEG, PNG into words/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.
     */
    @isTest
    private static void imageOcrImageWordsWithLocationTest() {
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
        SwagImageOcrApi api;
        SwagImageToWordsWithLocationResult response;
        SwagImageToWordsWithLocationResult expectedResponse;

        client = new SwagClient();
        api = new SwagImageOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "Words" : [ {\r\n    "ConfidenceLevel" : 7.061401241503109,\r\n    "XLeft" : 1,\r\n    "YTop" : 5,\r\n    "ParagraphNumber" : 3,\r\n    "PageNumber" : 2,\r\n    "WordNumber" : 6,\r\n    "Height" : 2,\r\n    "WordText" : "WordText",\r\n    "BlockNumber" : 9,\r\n    "Width" : 5,\r\n    "LineNumber" : 0\r\n  }, {\r\n    "ConfidenceLevel" : 7.061401241503109,\r\n    "XLeft" : 1,\r\n    "YTop" : 5,\r\n    "ParagraphNumber" : 3,\r\n    "PageNumber" : 2,\r\n    "WordNumber" : 6,\r\n    "Height" : 2,\r\n    "WordText" : "WordText",\r\n    "BlockNumber" : 9,\r\n    "Width" : 5,\r\n    "LineNumber" : 0\r\n  } ],\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagImageToWordsWithLocationResult.getExample();
        response = (SwagImageToWordsWithLocationResult) api.imageOcrImageWordsWithLocation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Recognize a photo of a business card, extract key business information
     *
     * Analyzes a photograph of a business card as input, and outputs key business information such as the name of the person, name of the business, the address of the business, the phone number, the email address and more.
     */
    @isTest
    private static void imageOcrPhotoRecognizeBusinessCardTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents')
        };

        SwagClient client;
        SwagImageOcrApi api;
        SwagBusinessCardRecognitionResult response;
        SwagBusinessCardRecognitionResult expectedResponse;

        client = new SwagClient();
        api = new SwagImageOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "PersonName" : "PersonName",\r\n  "BusinessName" : "BusinessName",\r\n  "AddressString" : "AddressString",\r\n  "PhoneNumber" : "PhoneNumber",\r\n  "Successful" : true,\r\n  "Timestamp" : "2000-01-23T04:56:07.000+00:00",\r\n  "EmailAddress" : "EmailAddress",\r\n  "PersonTitle" : "PersonTitle"\r\n}');
        expectedResponse = SwagBusinessCardRecognitionResult.getExample();
        response = (SwagBusinessCardRecognitionResult) api.imageOcrPhotoRecognizeBusinessCard(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Recognize a photo of a form, extract key fields and business information
     *
     * Analyzes a photograph of a form as input, and outputs key business fields and information.  Customzie data to be extracted by defining fields for the form.
     */
    @isTest
    private static void imageOcrPhotoRecognizeFormTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents'),
            'formTemplateDefinition' => Object.getExample(),
            'recognitionMode' => 'recognitionMode_example',
            'preprocessing' => 'preprocessing_example',
            'diagnostics' => 'diagnostics_example',
            'language' => 'language_example'
        };

        SwagClient client;
        SwagImageOcrApi api;
        SwagFormRecognitionResult response;
        SwagFormRecognitionResult expectedResponse;

        client = new SwagClient();
        api = new SwagImageOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "FieldValueExtractionResult" : [ {\r\n    "FieldValues" : [ {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 0,\r\n      "YTop" : 6,\r\n      "Text" : "Text",\r\n      "Height" : 5,\r\n      "Width" : 1,\r\n      "BoundingPoints" : [ {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      }, {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      } ]\r\n    }, {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 0,\r\n      "YTop" : 6,\r\n      "Text" : "Text",\r\n      "Height" : 5,\r\n      "Width" : 1,\r\n      "BoundingPoints" : [ {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      }, {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      } ]\r\n    } ],\r\n    "TargetField" : {\r\n      "HorizontalAlignmentType" : "HorizontalAlignmentType",\r\n      "TargetFieldHeight_Relative" : 5.962133916683182,\r\n      "Options" : "Options",\r\n      "TargetFieldVerticalAdjustment" : 2.3021358869347655,\r\n      "Ignore" : [ "Ignore", "Ignore" ],\r\n      "LeftAnchor" : "LeftAnchor",\r\n      "AllowNumericDigits" : true,\r\n      "AnchorMode" : "AnchorMode",\r\n      "VerticalAlignmentType" : "VerticalAlignmentType",\r\n      "MinimumCharacterCount" : 6,\r\n      "TargetFieldHorizontalAdjustment" : 5.637376656633329,\r\n      "BottomAnchor" : "BottomAnchor",\r\n      "TargetFieldWidth_Relative" : 1.4658129805029452,\r\n      "TopAnchor" : "TopAnchor",\r\n      "FieldID" : "FieldID",\r\n      "TargetDigitCount" : 0,\r\n      "DataType" : "DataType",\r\n      "AlternateAnchor" : "AlternateAnchor"\r\n    }\r\n  }, {\r\n    "FieldValues" : [ {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 0,\r\n      "YTop" : 6,\r\n      "Text" : "Text",\r\n      "Height" : 5,\r\n      "Width" : 1,\r\n      "BoundingPoints" : [ {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      }, {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      } ]\r\n    }, {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 0,\r\n      "YTop" : 6,\r\n      "Text" : "Text",\r\n      "Height" : 5,\r\n      "Width" : 1,\r\n      "BoundingPoints" : [ {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      }, {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      } ]\r\n    } ],\r\n    "TargetField" : {\r\n      "HorizontalAlignmentType" : "HorizontalAlignmentType",\r\n      "TargetFieldHeight_Relative" : 5.962133916683182,\r\n      "Options" : "Options",\r\n      "TargetFieldVerticalAdjustment" : 2.3021358869347655,\r\n      "Ignore" : [ "Ignore", "Ignore" ],\r\n      "LeftAnchor" : "LeftAnchor",\r\n      "AllowNumericDigits" : true,\r\n      "AnchorMode" : "AnchorMode",\r\n      "VerticalAlignmentType" : "VerticalAlignmentType",\r\n      "MinimumCharacterCount" : 6,\r\n      "TargetFieldHorizontalAdjustment" : 5.637376656633329,\r\n      "BottomAnchor" : "BottomAnchor",\r\n      "TargetFieldWidth_Relative" : 1.4658129805029452,\r\n      "TopAnchor" : "TopAnchor",\r\n      "FieldID" : "FieldID",\r\n      "TargetDigitCount" : 0,\r\n      "DataType" : "DataType",\r\n      "AlternateAnchor" : "AlternateAnchor"\r\n    }\r\n  } ],\r\n  "Diagnostics" : [ "Diagnostics", "Diagnostics" ],\r\n  "Successful" : true,\r\n  "TableValueExtractionResults" : [ {\r\n    "TableDefinition" : {\r\n      "TableID" : "TableID",\r\n      "ColumnDefinitions" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "TopAnchor" : "TopAnchor",\r\n        "AllowNumericDigits" : true,\r\n        "AnchorMode" : "AnchorMode",\r\n        "DataType" : "DataType",\r\n        "MinimumCharacterCount" : 7\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "TopAnchor" : "TopAnchor",\r\n        "AllowNumericDigits" : true,\r\n        "AnchorMode" : "AnchorMode",\r\n        "DataType" : "DataType",\r\n        "MinimumCharacterCount" : 7\r\n      } ],\r\n      "TargetTableHeight_Relative" : 9.301444243932576,\r\n      "TargetRowHeight_Relative" : 3.616076749251911\r\n    },\r\n    "TableRowsResult" : [ {\r\n      "TableRowCellsResult" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      } ]\r\n    }, {\r\n      "TableRowCellsResult" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      } ]\r\n    } ]\r\n  }, {\r\n    "TableDefinition" : {\r\n      "TableID" : "TableID",\r\n      "ColumnDefinitions" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "TopAnchor" : "TopAnchor",\r\n        "AllowNumericDigits" : true,\r\n        "AnchorMode" : "AnchorMode",\r\n        "DataType" : "DataType",\r\n        "MinimumCharacterCount" : 7\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "TopAnchor" : "TopAnchor",\r\n        "AllowNumericDigits" : true,\r\n        "AnchorMode" : "AnchorMode",\r\n        "DataType" : "DataType",\r\n        "MinimumCharacterCount" : 7\r\n      } ],\r\n      "TargetTableHeight_Relative" : 9.301444243932576,\r\n      "TargetRowHeight_Relative" : 3.616076749251911\r\n    },\r\n    "TableRowsResult" : [ {\r\n      "TableRowCellsResult" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      } ]\r\n    }, {\r\n      "TableRowCellsResult" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      } ]\r\n    } ]\r\n  } ],\r\n  "BestMatchFormSettingName" : "BestMatchFormSettingName"\r\n}');
        expectedResponse = SwagFormRecognitionResult.getExample();
        response = (SwagFormRecognitionResult) api.imageOcrPhotoRecognizeForm(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Recognize a photo of a form, extract key fields using stored templates
     *
     * Analyzes a photograph of a form as input, and outputs key business fields and information.  Customzie data to be extracted by defining fields for the form.  Uses template definitions stored in Cloudmersive Configuration; to configure stored templates in a configuration bucket, log into Cloudmersive Management Portal and navigate to Settings &amp;gt; API Configuration &amp;gt; Create Bucket
     */
    @isTest
    private static void imageOcrPhotoRecognizeFormAdvancedTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents'),
            'bucketID' => 'bucketID_example',
            'bucketSecretKey' => 'bucketSecretKey_example',
            'recognitionMode' => 'recognitionMode_example',
            'preprocessing' => 'preprocessing_example',
            'diagnostics' => 'diagnostics_example'
        };

        SwagClient client;
        SwagImageOcrApi api;
        SwagFormRecognitionResult response;
        SwagFormRecognitionResult expectedResponse;

        client = new SwagClient();
        api = new SwagImageOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "FieldValueExtractionResult" : [ {\r\n    "FieldValues" : [ {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 0,\r\n      "YTop" : 6,\r\n      "Text" : "Text",\r\n      "Height" : 5,\r\n      "Width" : 1,\r\n      "BoundingPoints" : [ {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      }, {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      } ]\r\n    }, {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 0,\r\n      "YTop" : 6,\r\n      "Text" : "Text",\r\n      "Height" : 5,\r\n      "Width" : 1,\r\n      "BoundingPoints" : [ {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      }, {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      } ]\r\n    } ],\r\n    "TargetField" : {\r\n      "HorizontalAlignmentType" : "HorizontalAlignmentType",\r\n      "TargetFieldHeight_Relative" : 5.962133916683182,\r\n      "Options" : "Options",\r\n      "TargetFieldVerticalAdjustment" : 2.3021358869347655,\r\n      "Ignore" : [ "Ignore", "Ignore" ],\r\n      "LeftAnchor" : "LeftAnchor",\r\n      "AllowNumericDigits" : true,\r\n      "AnchorMode" : "AnchorMode",\r\n      "VerticalAlignmentType" : "VerticalAlignmentType",\r\n      "MinimumCharacterCount" : 6,\r\n      "TargetFieldHorizontalAdjustment" : 5.637376656633329,\r\n      "BottomAnchor" : "BottomAnchor",\r\n      "TargetFieldWidth_Relative" : 1.4658129805029452,\r\n      "TopAnchor" : "TopAnchor",\r\n      "FieldID" : "FieldID",\r\n      "TargetDigitCount" : 0,\r\n      "DataType" : "DataType",\r\n      "AlternateAnchor" : "AlternateAnchor"\r\n    }\r\n  }, {\r\n    "FieldValues" : [ {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 0,\r\n      "YTop" : 6,\r\n      "Text" : "Text",\r\n      "Height" : 5,\r\n      "Width" : 1,\r\n      "BoundingPoints" : [ {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      }, {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      } ]\r\n    }, {\r\n      "ConfidenceLevel" : 7.061401241503109,\r\n      "XLeft" : 0,\r\n      "YTop" : 6,\r\n      "Text" : "Text",\r\n      "Height" : 5,\r\n      "Width" : 1,\r\n      "BoundingPoints" : [ {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      }, {\r\n        "X" : 5,\r\n        "Y" : 2\r\n      } ]\r\n    } ],\r\n    "TargetField" : {\r\n      "HorizontalAlignmentType" : "HorizontalAlignmentType",\r\n      "TargetFieldHeight_Relative" : 5.962133916683182,\r\n      "Options" : "Options",\r\n      "TargetFieldVerticalAdjustment" : 2.3021358869347655,\r\n      "Ignore" : [ "Ignore", "Ignore" ],\r\n      "LeftAnchor" : "LeftAnchor",\r\n      "AllowNumericDigits" : true,\r\n      "AnchorMode" : "AnchorMode",\r\n      "VerticalAlignmentType" : "VerticalAlignmentType",\r\n      "MinimumCharacterCount" : 6,\r\n      "TargetFieldHorizontalAdjustment" : 5.637376656633329,\r\n      "BottomAnchor" : "BottomAnchor",\r\n      "TargetFieldWidth_Relative" : 1.4658129805029452,\r\n      "TopAnchor" : "TopAnchor",\r\n      "FieldID" : "FieldID",\r\n      "TargetDigitCount" : 0,\r\n      "DataType" : "DataType",\r\n      "AlternateAnchor" : "AlternateAnchor"\r\n    }\r\n  } ],\r\n  "Diagnostics" : [ "Diagnostics", "Diagnostics" ],\r\n  "Successful" : true,\r\n  "TableValueExtractionResults" : [ {\r\n    "TableDefinition" : {\r\n      "TableID" : "TableID",\r\n      "ColumnDefinitions" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "TopAnchor" : "TopAnchor",\r\n        "AllowNumericDigits" : true,\r\n        "AnchorMode" : "AnchorMode",\r\n        "DataType" : "DataType",\r\n        "MinimumCharacterCount" : 7\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "TopAnchor" : "TopAnchor",\r\n        "AllowNumericDigits" : true,\r\n        "AnchorMode" : "AnchorMode",\r\n        "DataType" : "DataType",\r\n        "MinimumCharacterCount" : 7\r\n      } ],\r\n      "TargetTableHeight_Relative" : 9.301444243932576,\r\n      "TargetRowHeight_Relative" : 3.616076749251911\r\n    },\r\n    "TableRowsResult" : [ {\r\n      "TableRowCellsResult" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      } ]\r\n    }, {\r\n      "TableRowCellsResult" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      } ]\r\n    } ]\r\n  }, {\r\n    "TableDefinition" : {\r\n      "TableID" : "TableID",\r\n      "ColumnDefinitions" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "TopAnchor" : "TopAnchor",\r\n        "AllowNumericDigits" : true,\r\n        "AnchorMode" : "AnchorMode",\r\n        "DataType" : "DataType",\r\n        "MinimumCharacterCount" : 7\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "TopAnchor" : "TopAnchor",\r\n        "AllowNumericDigits" : true,\r\n        "AnchorMode" : "AnchorMode",\r\n        "DataType" : "DataType",\r\n        "MinimumCharacterCount" : 7\r\n      } ],\r\n      "TargetTableHeight_Relative" : 9.301444243932576,\r\n      "TargetRowHeight_Relative" : 3.616076749251911\r\n    },\r\n    "TableRowsResult" : [ {\r\n      "TableRowCellsResult" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      } ]\r\n    }, {\r\n      "TableRowCellsResult" : [ {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      }, {\r\n        "ColumnID" : "ColumnID",\r\n        "CellValues" : [ {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        }, {\r\n          "ConfidenceLevel" : 7.061401241503109,\r\n          "XLeft" : 0,\r\n          "YTop" : 6,\r\n          "Text" : "Text",\r\n          "Height" : 5,\r\n          "Width" : 1,\r\n          "BoundingPoints" : [ {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          }, {\r\n            "X" : 5,\r\n            "Y" : 2\r\n          } ]\r\n        } ]\r\n      } ]\r\n    } ]\r\n  } ],\r\n  "BestMatchFormSettingName" : "BestMatchFormSettingName"\r\n}');
        expectedResponse = SwagFormRecognitionResult.getExample();
        response = (SwagFormRecognitionResult) api.imageOcrPhotoRecognizeFormAdvanced(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Recognize a photo of a receipt, extract key business information
     *
     * Analyzes a photograph of a receipt as input, and outputs key business information such as the name of the business, the address of the business, the phone number of the business, the total of the receipt, the date of the receipt, and more.
     */
    @isTest
    private static void imageOcrPhotoRecognizeReceiptTest() {
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
        SwagImageOcrApi api;
        SwagReceiptRecognitionResult response;
        SwagReceiptRecognitionResult expectedResponse;

        client = new SwagClient();
        api = new SwagImageOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "ReceiptItems" : [ {\r\n    "ItemPrice" : 0.8008281904610115,\r\n    "ItemDescription" : "ItemDescription"\r\n  }, {\r\n    "ItemPrice" : 0.8008281904610115,\r\n    "ItemDescription" : "ItemDescription"\r\n  } ],\r\n  "BusinessName" : "BusinessName",\r\n  "AddressString" : "AddressString",\r\n  "BusinessWebsite" : "BusinessWebsite",\r\n  "ReceiptSubTotal" : 6.027456183070403,\r\n  "PhoneNumber" : "PhoneNumber",\r\n  "Successful" : true,\r\n  "Timestamp" : "2000-01-23T04:56:07.000+00:00",\r\n  "ReceiptTotal" : 1.4658129805029452\r\n}');
        expectedResponse = SwagReceiptRecognitionResult.getExample();
        response = (SwagReceiptRecognitionResult) api.imageOcrPhotoRecognizeReceipt(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert a photo of a document into text
     *
     * Converts an uploaded photo of a document in common formats such as JPEG, PNG into text via Optical Character Recognition.  This API is intended to be run on photos of documents, e.g. taken with a smartphone and supports cases where other content, such as a desk, are in the frame and the camera is crooked.  If you want to OCR a scanned image, use the image/toText API call instead as it is designed for scanned images.
     */
    @isTest
    private static void imageOcrPhotoToTextTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents'),
            'recognitionMode' => 'recognitionMode_example',
            'language' => 'language_example'
        };

        SwagClient client;
        SwagImageOcrApi api;
        SwagImageToTextResponse response;
        SwagImageToTextResponse expectedResponse;

        client = new SwagClient();
        api = new SwagImageOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "TextResult" : "TextResult",\r\n  "MeanConfidenceLevel" : 0.8008282\r\n}');
        expectedResponse = SwagImageToTextResponse.getExample();
        response = (SwagImageToTextResponse) api.imageOcrPhotoToText(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert a photo of a document or receipt into words with location
     *
     * Converts a photo of a document or receipt in common formats such as JPEG, PNG into words/text with location information and other metdata via Optical Character Recognition.  This API is intended to be run on photographs of documents.  If you want to OCR scanned documents (e.g. taken with a scanner), be sure to use the image/toText API instead, as it is designed for that use case.
     */
    @isTest
    private static void imageOcrPhotoWordsWithLocationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'imageFile' => Blob.valueOf('Sample text file\nContents'),
            'recognitionMode' => 'recognitionMode_example',
            'language' => 'language_example',
            'preprocessing' => 'preprocessing_example',
            'diagnostics' => 'diagnostics_example'
        };

        SwagClient client;
        SwagImageOcrApi api;
        SwagPhotoToWordsWithLocationResult response;
        SwagPhotoToWordsWithLocationResult expectedResponse;

        client = new SwagClient();
        api = new SwagImageOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "DiagnosticImage" : "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wZWQgb3ZlciB0aGUgbGF6eSBkb2cu",\r\n  "TextElements" : [ {\r\n    "ConfidenceLevel" : 7.061401241503109,\r\n    "XLeft" : 0,\r\n    "YTop" : 6,\r\n    "Text" : "Text",\r\n    "Height" : 5,\r\n    "Width" : 1,\r\n    "BoundingPoints" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ]\r\n  }, {\r\n    "ConfidenceLevel" : 7.061401241503109,\r\n    "XLeft" : 0,\r\n    "YTop" : 6,\r\n    "Text" : "Text",\r\n    "Height" : 5,\r\n    "Width" : 1,\r\n    "BoundingPoints" : [ {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    }, {\r\n      "X" : 5,\r\n      "Y" : 2\r\n    } ]\r\n  } ],\r\n  "Successful" : true\r\n}');
        expectedResponse = SwagPhotoToWordsWithLocationResult.getExample();
        response = (SwagPhotoToWordsWithLocationResult) api.imageOcrPhotoWordsWithLocation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Convert a scanned image into text
     *
     * Converts an uploaded image in common formats such as JPEG, PNG into text via Optical Character Recognition.  This API is intended to be run on scanned documents.  If you want to OCR photos (e.g. taken with a smart phone camera), be sure to use the photo/toText API instead, as it is designed to unskew the image first.
     */
    @isTest
    private static void imageOcrPostTest() {
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
        SwagImageOcrApi api;
        SwagImageToTextResponse response;
        SwagImageToTextResponse expectedResponse;

        client = new SwagClient();
        api = new SwagImageOcrApi(client);
        ((Swagger.ApiKeyAuth) client.getAuthentication('Apikey');
            client.setApiKey('foo-bar-api-key');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\r\n  "TextResult" : "TextResult",\r\n  "MeanConfidenceLevel" : 0.8008282\r\n}');
        expectedResponse = SwagImageToTextResponse.getExample();
        response = (SwagImageToTextResponse) api.imageOcrPost(params);
        System.assertEquals(expectedResponse, response);
    }
}