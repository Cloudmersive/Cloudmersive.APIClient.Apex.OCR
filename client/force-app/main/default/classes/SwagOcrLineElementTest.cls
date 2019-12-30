@isTest
private class SwagOcrLineElementTest {
    @isTest
    private static void equalsSameInstance() {
        SwagOcrLineElement ocrLineElement1 = SwagOcrLineElement.getExample();
        SwagOcrLineElement ocrLineElement2 = ocrLineElement1;
        SwagOcrLineElement ocrLineElement3 = new SwagOcrLineElement();
        SwagOcrLineElement ocrLineElement4 = ocrLineElement3;

        System.assert(ocrLineElement1.equals(ocrLineElement2));
        System.assert(ocrLineElement2.equals(ocrLineElement1));
        System.assert(ocrLineElement1.equals(ocrLineElement1));
        System.assert(ocrLineElement3.equals(ocrLineElement4));
        System.assert(ocrLineElement4.equals(ocrLineElement3));
        System.assert(ocrLineElement3.equals(ocrLineElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagOcrLineElement ocrLineElement1 = SwagOcrLineElement.getExample();
        SwagOcrLineElement ocrLineElement2 = SwagOcrLineElement.getExample();
        SwagOcrLineElement ocrLineElement3 = new SwagOcrLineElement();
        SwagOcrLineElement ocrLineElement4 = new SwagOcrLineElement();

        System.assert(ocrLineElement1.equals(ocrLineElement2));
        System.assert(ocrLineElement2.equals(ocrLineElement1));
        System.assert(ocrLineElement3.equals(ocrLineElement4));
        System.assert(ocrLineElement4.equals(ocrLineElement3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagOcrLineElement ocrLineElement1 = SwagOcrLineElement.getExample();
        SwagOcrLineElement ocrLineElement2 = new SwagOcrLineElement();

        System.assertEquals(false, ocrLineElement1.equals(ocrLineElement2));
        System.assertEquals(false, ocrLineElement2.equals(ocrLineElement1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagOcrLineElement ocrLineElement1 = SwagOcrLineElement.getExample();
        SwagOcrLineElement ocrLineElement2 = new SwagOcrLineElement();

        System.assertEquals(false, ocrLineElement1.equals('foo'));
        System.assertEquals(false, ocrLineElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagOcrLineElement ocrLineElement1 = SwagOcrLineElement.getExample();
        SwagOcrLineElement ocrLineElement2 = new SwagOcrLineElement();
        SwagOcrLineElement ocrLineElement3;

        System.assertEquals(false, ocrLineElement1.equals(ocrLineElement3));
        System.assertEquals(false, ocrLineElement2.equals(ocrLineElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagOcrLineElement ocrLineElement1 = SwagOcrLineElement.getExample();
        SwagOcrLineElement ocrLineElement2 = new SwagOcrLineElement();

        System.assertEquals(ocrLineElement1.hashCode(), ocrLineElement1.hashCode());
        System.assertEquals(ocrLineElement2.hashCode(), ocrLineElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagOcrLineElement ocrLineElement1 = SwagOcrLineElement.getExample();
        SwagOcrLineElement ocrLineElement2 = SwagOcrLineElement.getExample();
        SwagOcrLineElement ocrLineElement3 = new SwagOcrLineElement();
        SwagOcrLineElement ocrLineElement4 = new SwagOcrLineElement();

        System.assert(ocrLineElement1.equals(ocrLineElement2));
        System.assert(ocrLineElement3.equals(ocrLineElement4));
        System.assertEquals(ocrLineElement1.hashCode(), ocrLineElement2.hashCode());
        System.assertEquals(ocrLineElement3.hashCode(), ocrLineElement4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagOcrLineElement ocrLineElement = new SwagOcrLineElement();
        Map<String, String> propertyMappings = ocrLineElement.getPropertyMappings();
        System.assertEquals('lineText', propertyMappings.get('LineText'));
        System.assertEquals('words', propertyMappings.get('Words'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagOcrLineElement ocrLineElement = new SwagOcrLineElement();
        System.assertEquals(new List<SwagOcrWordElement>(), ocrLineElement.words);
        System.assertEquals(null, ocrLineElement.lineText);
    }
}
