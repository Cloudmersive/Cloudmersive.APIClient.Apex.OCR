@isTest
private class SwagPdfToLinesWithLocationResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult1 = SwagPdfToLinesWithLocationResult.getExample();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult2 = pdfToLinesWithLocationResult1;
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult3 = new SwagPdfToLinesWithLocationResult();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult4 = pdfToLinesWithLocationResult3;

        System.assert(pdfToLinesWithLocationResult1.equals(pdfToLinesWithLocationResult2));
        System.assert(pdfToLinesWithLocationResult2.equals(pdfToLinesWithLocationResult1));
        System.assert(pdfToLinesWithLocationResult1.equals(pdfToLinesWithLocationResult1));
        System.assert(pdfToLinesWithLocationResult3.equals(pdfToLinesWithLocationResult4));
        System.assert(pdfToLinesWithLocationResult4.equals(pdfToLinesWithLocationResult3));
        System.assert(pdfToLinesWithLocationResult3.equals(pdfToLinesWithLocationResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult1 = SwagPdfToLinesWithLocationResult.getExample();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult2 = SwagPdfToLinesWithLocationResult.getExample();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult3 = new SwagPdfToLinesWithLocationResult();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult4 = new SwagPdfToLinesWithLocationResult();

        System.assert(pdfToLinesWithLocationResult1.equals(pdfToLinesWithLocationResult2));
        System.assert(pdfToLinesWithLocationResult2.equals(pdfToLinesWithLocationResult1));
        System.assert(pdfToLinesWithLocationResult3.equals(pdfToLinesWithLocationResult4));
        System.assert(pdfToLinesWithLocationResult4.equals(pdfToLinesWithLocationResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult1 = SwagPdfToLinesWithLocationResult.getExample();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult2 = new SwagPdfToLinesWithLocationResult();

        System.assertEquals(false, pdfToLinesWithLocationResult1.equals(pdfToLinesWithLocationResult2));
        System.assertEquals(false, pdfToLinesWithLocationResult2.equals(pdfToLinesWithLocationResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult1 = SwagPdfToLinesWithLocationResult.getExample();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult2 = new SwagPdfToLinesWithLocationResult();

        System.assertEquals(false, pdfToLinesWithLocationResult1.equals('foo'));
        System.assertEquals(false, pdfToLinesWithLocationResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult1 = SwagPdfToLinesWithLocationResult.getExample();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult2 = new SwagPdfToLinesWithLocationResult();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult3;

        System.assertEquals(false, pdfToLinesWithLocationResult1.equals(pdfToLinesWithLocationResult3));
        System.assertEquals(false, pdfToLinesWithLocationResult2.equals(pdfToLinesWithLocationResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult1 = SwagPdfToLinesWithLocationResult.getExample();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult2 = new SwagPdfToLinesWithLocationResult();

        System.assertEquals(pdfToLinesWithLocationResult1.hashCode(), pdfToLinesWithLocationResult1.hashCode());
        System.assertEquals(pdfToLinesWithLocationResult2.hashCode(), pdfToLinesWithLocationResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult1 = SwagPdfToLinesWithLocationResult.getExample();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult2 = SwagPdfToLinesWithLocationResult.getExample();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult3 = new SwagPdfToLinesWithLocationResult();
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult4 = new SwagPdfToLinesWithLocationResult();

        System.assert(pdfToLinesWithLocationResult1.equals(pdfToLinesWithLocationResult2));
        System.assert(pdfToLinesWithLocationResult3.equals(pdfToLinesWithLocationResult4));
        System.assertEquals(pdfToLinesWithLocationResult1.hashCode(), pdfToLinesWithLocationResult2.hashCode());
        System.assertEquals(pdfToLinesWithLocationResult3.hashCode(), pdfToLinesWithLocationResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult = new SwagPdfToLinesWithLocationResult();
        Map<String, String> propertyMappings = pdfToLinesWithLocationResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('ocrPages', propertyMappings.get('OcrPages'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagPdfToLinesWithLocationResult pdfToLinesWithLocationResult = new SwagPdfToLinesWithLocationResult();
        System.assertEquals(new List<SwagOcrPageResultWithLinesWithLocati>(), pdfToLinesWithLocationResult.ocrPages);
        System.assertEquals(null, pdfToLinesWithLocationResult.successful);
    }
}
