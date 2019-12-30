@isTest
private class SwagOcrPageResultWithWordsWithLocatiTest {
    @isTest
    private static void equalsSameInstance() {
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation1 = SwagOcrPageResultWithWordsWithLocati.getExample();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation2 = ocrPageResultWithWordsWithLocation1;
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation3 = new SwagOcrPageResultWithWordsWithLocati();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation4 = ocrPageResultWithWordsWithLocation3;

        System.assert(ocrPageResultWithWordsWithLocation1.equals(ocrPageResultWithWordsWithLocation2));
        System.assert(ocrPageResultWithWordsWithLocation2.equals(ocrPageResultWithWordsWithLocation1));
        System.assert(ocrPageResultWithWordsWithLocation1.equals(ocrPageResultWithWordsWithLocation1));
        System.assert(ocrPageResultWithWordsWithLocation3.equals(ocrPageResultWithWordsWithLocation4));
        System.assert(ocrPageResultWithWordsWithLocation4.equals(ocrPageResultWithWordsWithLocation3));
        System.assert(ocrPageResultWithWordsWithLocation3.equals(ocrPageResultWithWordsWithLocation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation1 = SwagOcrPageResultWithWordsWithLocati.getExample();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation2 = SwagOcrPageResultWithWordsWithLocati.getExample();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation3 = new SwagOcrPageResultWithWordsWithLocati();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation4 = new SwagOcrPageResultWithWordsWithLocati();

        System.assert(ocrPageResultWithWordsWithLocation1.equals(ocrPageResultWithWordsWithLocation2));
        System.assert(ocrPageResultWithWordsWithLocation2.equals(ocrPageResultWithWordsWithLocation1));
        System.assert(ocrPageResultWithWordsWithLocation3.equals(ocrPageResultWithWordsWithLocation4));
        System.assert(ocrPageResultWithWordsWithLocation4.equals(ocrPageResultWithWordsWithLocation3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation1 = SwagOcrPageResultWithWordsWithLocati.getExample();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation2 = new SwagOcrPageResultWithWordsWithLocati();

        System.assertEquals(false, ocrPageResultWithWordsWithLocation1.equals(ocrPageResultWithWordsWithLocation2));
        System.assertEquals(false, ocrPageResultWithWordsWithLocation2.equals(ocrPageResultWithWordsWithLocation1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation1 = SwagOcrPageResultWithWordsWithLocati.getExample();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation2 = new SwagOcrPageResultWithWordsWithLocati();

        System.assertEquals(false, ocrPageResultWithWordsWithLocation1.equals('foo'));
        System.assertEquals(false, ocrPageResultWithWordsWithLocation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation1 = SwagOcrPageResultWithWordsWithLocati.getExample();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation2 = new SwagOcrPageResultWithWordsWithLocati();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation3;

        System.assertEquals(false, ocrPageResultWithWordsWithLocation1.equals(ocrPageResultWithWordsWithLocation3));
        System.assertEquals(false, ocrPageResultWithWordsWithLocation2.equals(ocrPageResultWithWordsWithLocation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation1 = SwagOcrPageResultWithWordsWithLocati.getExample();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation2 = new SwagOcrPageResultWithWordsWithLocati();

        System.assertEquals(ocrPageResultWithWordsWithLocation1.hashCode(), ocrPageResultWithWordsWithLocation1.hashCode());
        System.assertEquals(ocrPageResultWithWordsWithLocation2.hashCode(), ocrPageResultWithWordsWithLocation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation1 = SwagOcrPageResultWithWordsWithLocati.getExample();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation2 = SwagOcrPageResultWithWordsWithLocati.getExample();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation3 = new SwagOcrPageResultWithWordsWithLocati();
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation4 = new SwagOcrPageResultWithWordsWithLocati();

        System.assert(ocrPageResultWithWordsWithLocation1.equals(ocrPageResultWithWordsWithLocation2));
        System.assert(ocrPageResultWithWordsWithLocation3.equals(ocrPageResultWithWordsWithLocation4));
        System.assertEquals(ocrPageResultWithWordsWithLocation1.hashCode(), ocrPageResultWithWordsWithLocation2.hashCode());
        System.assertEquals(ocrPageResultWithWordsWithLocation3.hashCode(), ocrPageResultWithWordsWithLocation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation = new SwagOcrPageResultWithWordsWithLocati();
        Map<String, String> propertyMappings = ocrPageResultWithWordsWithLocation.getPropertyMappings();
        System.assertEquals('pageNumber', propertyMappings.get('PageNumber'));
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('words', propertyMappings.get('Words'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagOcrPageResultWithWordsWithLocati ocrPageResultWithWordsWithLocation = new SwagOcrPageResultWithWordsWithLocati();
        System.assertEquals(new List<SwagOcrWordElement>(), ocrPageResultWithWordsWithLocation.words);
        System.assertEquals(null, ocrPageResultWithWordsWithLocation.pageNumber);
        System.assertEquals(null, ocrPageResultWithWordsWithLocation.successful);
    }
}
