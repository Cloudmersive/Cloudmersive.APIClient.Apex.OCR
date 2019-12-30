@isTest
private class SwagPdfToTextResponseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPdfToTextResponse pdfToTextResponse1 = SwagPdfToTextResponse.getExample();
        SwagPdfToTextResponse pdfToTextResponse2 = pdfToTextResponse1;
        SwagPdfToTextResponse pdfToTextResponse3 = new SwagPdfToTextResponse();
        SwagPdfToTextResponse pdfToTextResponse4 = pdfToTextResponse3;

        System.assert(pdfToTextResponse1.equals(pdfToTextResponse2));
        System.assert(pdfToTextResponse2.equals(pdfToTextResponse1));
        System.assert(pdfToTextResponse1.equals(pdfToTextResponse1));
        System.assert(pdfToTextResponse3.equals(pdfToTextResponse4));
        System.assert(pdfToTextResponse4.equals(pdfToTextResponse3));
        System.assert(pdfToTextResponse3.equals(pdfToTextResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPdfToTextResponse pdfToTextResponse1 = SwagPdfToTextResponse.getExample();
        SwagPdfToTextResponse pdfToTextResponse2 = SwagPdfToTextResponse.getExample();
        SwagPdfToTextResponse pdfToTextResponse3 = new SwagPdfToTextResponse();
        SwagPdfToTextResponse pdfToTextResponse4 = new SwagPdfToTextResponse();

        System.assert(pdfToTextResponse1.equals(pdfToTextResponse2));
        System.assert(pdfToTextResponse2.equals(pdfToTextResponse1));
        System.assert(pdfToTextResponse3.equals(pdfToTextResponse4));
        System.assert(pdfToTextResponse4.equals(pdfToTextResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPdfToTextResponse pdfToTextResponse1 = SwagPdfToTextResponse.getExample();
        SwagPdfToTextResponse pdfToTextResponse2 = new SwagPdfToTextResponse();

        System.assertEquals(false, pdfToTextResponse1.equals(pdfToTextResponse2));
        System.assertEquals(false, pdfToTextResponse2.equals(pdfToTextResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPdfToTextResponse pdfToTextResponse1 = SwagPdfToTextResponse.getExample();
        SwagPdfToTextResponse pdfToTextResponse2 = new SwagPdfToTextResponse();

        System.assertEquals(false, pdfToTextResponse1.equals('foo'));
        System.assertEquals(false, pdfToTextResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPdfToTextResponse pdfToTextResponse1 = SwagPdfToTextResponse.getExample();
        SwagPdfToTextResponse pdfToTextResponse2 = new SwagPdfToTextResponse();
        SwagPdfToTextResponse pdfToTextResponse3;

        System.assertEquals(false, pdfToTextResponse1.equals(pdfToTextResponse3));
        System.assertEquals(false, pdfToTextResponse2.equals(pdfToTextResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPdfToTextResponse pdfToTextResponse1 = SwagPdfToTextResponse.getExample();
        SwagPdfToTextResponse pdfToTextResponse2 = new SwagPdfToTextResponse();

        System.assertEquals(pdfToTextResponse1.hashCode(), pdfToTextResponse1.hashCode());
        System.assertEquals(pdfToTextResponse2.hashCode(), pdfToTextResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPdfToTextResponse pdfToTextResponse1 = SwagPdfToTextResponse.getExample();
        SwagPdfToTextResponse pdfToTextResponse2 = SwagPdfToTextResponse.getExample();
        SwagPdfToTextResponse pdfToTextResponse3 = new SwagPdfToTextResponse();
        SwagPdfToTextResponse pdfToTextResponse4 = new SwagPdfToTextResponse();

        System.assert(pdfToTextResponse1.equals(pdfToTextResponse2));
        System.assert(pdfToTextResponse3.equals(pdfToTextResponse4));
        System.assertEquals(pdfToTextResponse1.hashCode(), pdfToTextResponse2.hashCode());
        System.assertEquals(pdfToTextResponse3.hashCode(), pdfToTextResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPdfToTextResponse pdfToTextResponse = new SwagPdfToTextResponse();
        Map<String, String> propertyMappings = pdfToTextResponse.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('ocrPages', propertyMappings.get('OcrPages'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagPdfToTextResponse pdfToTextResponse = new SwagPdfToTextResponse();
        System.assertEquals(new List<SwagOcrPageResult>(), pdfToTextResponse.ocrPages);
        System.assertEquals(null, pdfToTextResponse.successful);
    }
}
