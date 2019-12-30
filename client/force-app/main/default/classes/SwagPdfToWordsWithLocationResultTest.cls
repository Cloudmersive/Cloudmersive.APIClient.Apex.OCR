@isTest
private class SwagPdfToWordsWithLocationResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult1 = SwagPdfToWordsWithLocationResult.getExample();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult2 = pdfToWordsWithLocationResult1;
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult3 = new SwagPdfToWordsWithLocationResult();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult4 = pdfToWordsWithLocationResult3;

        System.assert(pdfToWordsWithLocationResult1.equals(pdfToWordsWithLocationResult2));
        System.assert(pdfToWordsWithLocationResult2.equals(pdfToWordsWithLocationResult1));
        System.assert(pdfToWordsWithLocationResult1.equals(pdfToWordsWithLocationResult1));
        System.assert(pdfToWordsWithLocationResult3.equals(pdfToWordsWithLocationResult4));
        System.assert(pdfToWordsWithLocationResult4.equals(pdfToWordsWithLocationResult3));
        System.assert(pdfToWordsWithLocationResult3.equals(pdfToWordsWithLocationResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult1 = SwagPdfToWordsWithLocationResult.getExample();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult2 = SwagPdfToWordsWithLocationResult.getExample();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult3 = new SwagPdfToWordsWithLocationResult();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult4 = new SwagPdfToWordsWithLocationResult();

        System.assert(pdfToWordsWithLocationResult1.equals(pdfToWordsWithLocationResult2));
        System.assert(pdfToWordsWithLocationResult2.equals(pdfToWordsWithLocationResult1));
        System.assert(pdfToWordsWithLocationResult3.equals(pdfToWordsWithLocationResult4));
        System.assert(pdfToWordsWithLocationResult4.equals(pdfToWordsWithLocationResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult1 = SwagPdfToWordsWithLocationResult.getExample();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult2 = new SwagPdfToWordsWithLocationResult();

        System.assertEquals(false, pdfToWordsWithLocationResult1.equals(pdfToWordsWithLocationResult2));
        System.assertEquals(false, pdfToWordsWithLocationResult2.equals(pdfToWordsWithLocationResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult1 = SwagPdfToWordsWithLocationResult.getExample();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult2 = new SwagPdfToWordsWithLocationResult();

        System.assertEquals(false, pdfToWordsWithLocationResult1.equals('foo'));
        System.assertEquals(false, pdfToWordsWithLocationResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult1 = SwagPdfToWordsWithLocationResult.getExample();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult2 = new SwagPdfToWordsWithLocationResult();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult3;

        System.assertEquals(false, pdfToWordsWithLocationResult1.equals(pdfToWordsWithLocationResult3));
        System.assertEquals(false, pdfToWordsWithLocationResult2.equals(pdfToWordsWithLocationResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult1 = SwagPdfToWordsWithLocationResult.getExample();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult2 = new SwagPdfToWordsWithLocationResult();

        System.assertEquals(pdfToWordsWithLocationResult1.hashCode(), pdfToWordsWithLocationResult1.hashCode());
        System.assertEquals(pdfToWordsWithLocationResult2.hashCode(), pdfToWordsWithLocationResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult1 = SwagPdfToWordsWithLocationResult.getExample();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult2 = SwagPdfToWordsWithLocationResult.getExample();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult3 = new SwagPdfToWordsWithLocationResult();
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult4 = new SwagPdfToWordsWithLocationResult();

        System.assert(pdfToWordsWithLocationResult1.equals(pdfToWordsWithLocationResult2));
        System.assert(pdfToWordsWithLocationResult3.equals(pdfToWordsWithLocationResult4));
        System.assertEquals(pdfToWordsWithLocationResult1.hashCode(), pdfToWordsWithLocationResult2.hashCode());
        System.assertEquals(pdfToWordsWithLocationResult3.hashCode(), pdfToWordsWithLocationResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult = new SwagPdfToWordsWithLocationResult();
        Map<String, String> propertyMappings = pdfToWordsWithLocationResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('ocrPages', propertyMappings.get('OcrPages'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagPdfToWordsWithLocationResult pdfToWordsWithLocationResult = new SwagPdfToWordsWithLocationResult();
        System.assertEquals(new List<SwagOcrPageResultWithWordsWithLocati>(), pdfToWordsWithLocationResult.ocrPages);
        System.assertEquals(null, pdfToWordsWithLocationResult.successful);
    }
}
