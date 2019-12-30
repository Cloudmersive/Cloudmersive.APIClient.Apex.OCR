@isTest
private class SwagOcrPageResultWithLinesWithLocatiTest {
    @isTest
    private static void equalsSameInstance() {
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation1 = SwagOcrPageResultWithLinesWithLocati.getExample();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation2 = ocrPageResultWithLinesWithLocation1;
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation3 = new SwagOcrPageResultWithLinesWithLocati();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation4 = ocrPageResultWithLinesWithLocation3;

        System.assert(ocrPageResultWithLinesWithLocation1.equals(ocrPageResultWithLinesWithLocation2));
        System.assert(ocrPageResultWithLinesWithLocation2.equals(ocrPageResultWithLinesWithLocation1));
        System.assert(ocrPageResultWithLinesWithLocation1.equals(ocrPageResultWithLinesWithLocation1));
        System.assert(ocrPageResultWithLinesWithLocation3.equals(ocrPageResultWithLinesWithLocation4));
        System.assert(ocrPageResultWithLinesWithLocation4.equals(ocrPageResultWithLinesWithLocation3));
        System.assert(ocrPageResultWithLinesWithLocation3.equals(ocrPageResultWithLinesWithLocation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation1 = SwagOcrPageResultWithLinesWithLocati.getExample();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation2 = SwagOcrPageResultWithLinesWithLocati.getExample();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation3 = new SwagOcrPageResultWithLinesWithLocati();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation4 = new SwagOcrPageResultWithLinesWithLocati();

        System.assert(ocrPageResultWithLinesWithLocation1.equals(ocrPageResultWithLinesWithLocation2));
        System.assert(ocrPageResultWithLinesWithLocation2.equals(ocrPageResultWithLinesWithLocation1));
        System.assert(ocrPageResultWithLinesWithLocation3.equals(ocrPageResultWithLinesWithLocation4));
        System.assert(ocrPageResultWithLinesWithLocation4.equals(ocrPageResultWithLinesWithLocation3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation1 = SwagOcrPageResultWithLinesWithLocati.getExample();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation2 = new SwagOcrPageResultWithLinesWithLocati();

        System.assertEquals(false, ocrPageResultWithLinesWithLocation1.equals(ocrPageResultWithLinesWithLocation2));
        System.assertEquals(false, ocrPageResultWithLinesWithLocation2.equals(ocrPageResultWithLinesWithLocation1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation1 = SwagOcrPageResultWithLinesWithLocati.getExample();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation2 = new SwagOcrPageResultWithLinesWithLocati();

        System.assertEquals(false, ocrPageResultWithLinesWithLocation1.equals('foo'));
        System.assertEquals(false, ocrPageResultWithLinesWithLocation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation1 = SwagOcrPageResultWithLinesWithLocati.getExample();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation2 = new SwagOcrPageResultWithLinesWithLocati();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation3;

        System.assertEquals(false, ocrPageResultWithLinesWithLocation1.equals(ocrPageResultWithLinesWithLocation3));
        System.assertEquals(false, ocrPageResultWithLinesWithLocation2.equals(ocrPageResultWithLinesWithLocation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation1 = SwagOcrPageResultWithLinesWithLocati.getExample();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation2 = new SwagOcrPageResultWithLinesWithLocati();

        System.assertEquals(ocrPageResultWithLinesWithLocation1.hashCode(), ocrPageResultWithLinesWithLocation1.hashCode());
        System.assertEquals(ocrPageResultWithLinesWithLocation2.hashCode(), ocrPageResultWithLinesWithLocation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation1 = SwagOcrPageResultWithLinesWithLocati.getExample();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation2 = SwagOcrPageResultWithLinesWithLocati.getExample();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation3 = new SwagOcrPageResultWithLinesWithLocati();
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation4 = new SwagOcrPageResultWithLinesWithLocati();

        System.assert(ocrPageResultWithLinesWithLocation1.equals(ocrPageResultWithLinesWithLocation2));
        System.assert(ocrPageResultWithLinesWithLocation3.equals(ocrPageResultWithLinesWithLocation4));
        System.assertEquals(ocrPageResultWithLinesWithLocation1.hashCode(), ocrPageResultWithLinesWithLocation2.hashCode());
        System.assertEquals(ocrPageResultWithLinesWithLocation3.hashCode(), ocrPageResultWithLinesWithLocation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation = new SwagOcrPageResultWithLinesWithLocati();
        Map<String, String> propertyMappings = ocrPageResultWithLinesWithLocation.getPropertyMappings();
        System.assertEquals('pageNumber', propertyMappings.get('PageNumber'));
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('lines', propertyMappings.get('Lines'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagOcrPageResultWithLinesWithLocati ocrPageResultWithLinesWithLocation = new SwagOcrPageResultWithLinesWithLocati();
        System.assertEquals(new List<SwagOcrLineElement>(), ocrPageResultWithLinesWithLocation.lines);
        System.assertEquals(null, ocrPageResultWithLinesWithLocation.pageNumber);
        System.assertEquals(null, ocrPageResultWithLinesWithLocation.successful);
    }
}
