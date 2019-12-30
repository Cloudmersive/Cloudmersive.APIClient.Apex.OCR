@isTest
private class SwagOcrPageResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagOcrPageResult ocrPageResult1 = SwagOcrPageResult.getExample();
        SwagOcrPageResult ocrPageResult2 = ocrPageResult1;
        SwagOcrPageResult ocrPageResult3 = new SwagOcrPageResult();
        SwagOcrPageResult ocrPageResult4 = ocrPageResult3;

        System.assert(ocrPageResult1.equals(ocrPageResult2));
        System.assert(ocrPageResult2.equals(ocrPageResult1));
        System.assert(ocrPageResult1.equals(ocrPageResult1));
        System.assert(ocrPageResult3.equals(ocrPageResult4));
        System.assert(ocrPageResult4.equals(ocrPageResult3));
        System.assert(ocrPageResult3.equals(ocrPageResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagOcrPageResult ocrPageResult1 = SwagOcrPageResult.getExample();
        SwagOcrPageResult ocrPageResult2 = SwagOcrPageResult.getExample();
        SwagOcrPageResult ocrPageResult3 = new SwagOcrPageResult();
        SwagOcrPageResult ocrPageResult4 = new SwagOcrPageResult();

        System.assert(ocrPageResult1.equals(ocrPageResult2));
        System.assert(ocrPageResult2.equals(ocrPageResult1));
        System.assert(ocrPageResult3.equals(ocrPageResult4));
        System.assert(ocrPageResult4.equals(ocrPageResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagOcrPageResult ocrPageResult1 = SwagOcrPageResult.getExample();
        SwagOcrPageResult ocrPageResult2 = new SwagOcrPageResult();

        System.assertEquals(false, ocrPageResult1.equals(ocrPageResult2));
        System.assertEquals(false, ocrPageResult2.equals(ocrPageResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagOcrPageResult ocrPageResult1 = SwagOcrPageResult.getExample();
        SwagOcrPageResult ocrPageResult2 = new SwagOcrPageResult();

        System.assertEquals(false, ocrPageResult1.equals('foo'));
        System.assertEquals(false, ocrPageResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagOcrPageResult ocrPageResult1 = SwagOcrPageResult.getExample();
        SwagOcrPageResult ocrPageResult2 = new SwagOcrPageResult();
        SwagOcrPageResult ocrPageResult3;

        System.assertEquals(false, ocrPageResult1.equals(ocrPageResult3));
        System.assertEquals(false, ocrPageResult2.equals(ocrPageResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagOcrPageResult ocrPageResult1 = SwagOcrPageResult.getExample();
        SwagOcrPageResult ocrPageResult2 = new SwagOcrPageResult();

        System.assertEquals(ocrPageResult1.hashCode(), ocrPageResult1.hashCode());
        System.assertEquals(ocrPageResult2.hashCode(), ocrPageResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagOcrPageResult ocrPageResult1 = SwagOcrPageResult.getExample();
        SwagOcrPageResult ocrPageResult2 = SwagOcrPageResult.getExample();
        SwagOcrPageResult ocrPageResult3 = new SwagOcrPageResult();
        SwagOcrPageResult ocrPageResult4 = new SwagOcrPageResult();

        System.assert(ocrPageResult1.equals(ocrPageResult2));
        System.assert(ocrPageResult3.equals(ocrPageResult4));
        System.assertEquals(ocrPageResult1.hashCode(), ocrPageResult2.hashCode());
        System.assertEquals(ocrPageResult3.hashCode(), ocrPageResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagOcrPageResult ocrPageResult = new SwagOcrPageResult();
        Map<String, String> propertyMappings = ocrPageResult.getPropertyMappings();
        System.assertEquals('pageNumber', propertyMappings.get('PageNumber'));
        System.assertEquals('meanConfidenceLevel', propertyMappings.get('MeanConfidenceLevel'));
        System.assertEquals('textResult', propertyMappings.get('TextResult'));
    }
}
