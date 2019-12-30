@isTest
private class SwagOcrPhotoTextElementTest {
    @isTest
    private static void equalsSameInstance() {
        SwagOcrPhotoTextElement ocrPhotoTextElement1 = SwagOcrPhotoTextElement.getExample();
        SwagOcrPhotoTextElement ocrPhotoTextElement2 = ocrPhotoTextElement1;
        SwagOcrPhotoTextElement ocrPhotoTextElement3 = new SwagOcrPhotoTextElement();
        SwagOcrPhotoTextElement ocrPhotoTextElement4 = ocrPhotoTextElement3;

        System.assert(ocrPhotoTextElement1.equals(ocrPhotoTextElement2));
        System.assert(ocrPhotoTextElement2.equals(ocrPhotoTextElement1));
        System.assert(ocrPhotoTextElement1.equals(ocrPhotoTextElement1));
        System.assert(ocrPhotoTextElement3.equals(ocrPhotoTextElement4));
        System.assert(ocrPhotoTextElement4.equals(ocrPhotoTextElement3));
        System.assert(ocrPhotoTextElement3.equals(ocrPhotoTextElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagOcrPhotoTextElement ocrPhotoTextElement1 = SwagOcrPhotoTextElement.getExample();
        SwagOcrPhotoTextElement ocrPhotoTextElement2 = SwagOcrPhotoTextElement.getExample();
        SwagOcrPhotoTextElement ocrPhotoTextElement3 = new SwagOcrPhotoTextElement();
        SwagOcrPhotoTextElement ocrPhotoTextElement4 = new SwagOcrPhotoTextElement();

        System.assert(ocrPhotoTextElement1.equals(ocrPhotoTextElement2));
        System.assert(ocrPhotoTextElement2.equals(ocrPhotoTextElement1));
        System.assert(ocrPhotoTextElement3.equals(ocrPhotoTextElement4));
        System.assert(ocrPhotoTextElement4.equals(ocrPhotoTextElement3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagOcrPhotoTextElement ocrPhotoTextElement1 = SwagOcrPhotoTextElement.getExample();
        SwagOcrPhotoTextElement ocrPhotoTextElement2 = new SwagOcrPhotoTextElement();

        System.assertEquals(false, ocrPhotoTextElement1.equals(ocrPhotoTextElement2));
        System.assertEquals(false, ocrPhotoTextElement2.equals(ocrPhotoTextElement1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagOcrPhotoTextElement ocrPhotoTextElement1 = SwagOcrPhotoTextElement.getExample();
        SwagOcrPhotoTextElement ocrPhotoTextElement2 = new SwagOcrPhotoTextElement();

        System.assertEquals(false, ocrPhotoTextElement1.equals('foo'));
        System.assertEquals(false, ocrPhotoTextElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagOcrPhotoTextElement ocrPhotoTextElement1 = SwagOcrPhotoTextElement.getExample();
        SwagOcrPhotoTextElement ocrPhotoTextElement2 = new SwagOcrPhotoTextElement();
        SwagOcrPhotoTextElement ocrPhotoTextElement3;

        System.assertEquals(false, ocrPhotoTextElement1.equals(ocrPhotoTextElement3));
        System.assertEquals(false, ocrPhotoTextElement2.equals(ocrPhotoTextElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagOcrPhotoTextElement ocrPhotoTextElement1 = SwagOcrPhotoTextElement.getExample();
        SwagOcrPhotoTextElement ocrPhotoTextElement2 = new SwagOcrPhotoTextElement();

        System.assertEquals(ocrPhotoTextElement1.hashCode(), ocrPhotoTextElement1.hashCode());
        System.assertEquals(ocrPhotoTextElement2.hashCode(), ocrPhotoTextElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagOcrPhotoTextElement ocrPhotoTextElement1 = SwagOcrPhotoTextElement.getExample();
        SwagOcrPhotoTextElement ocrPhotoTextElement2 = SwagOcrPhotoTextElement.getExample();
        SwagOcrPhotoTextElement ocrPhotoTextElement3 = new SwagOcrPhotoTextElement();
        SwagOcrPhotoTextElement ocrPhotoTextElement4 = new SwagOcrPhotoTextElement();

        System.assert(ocrPhotoTextElement1.equals(ocrPhotoTextElement2));
        System.assert(ocrPhotoTextElement3.equals(ocrPhotoTextElement4));
        System.assertEquals(ocrPhotoTextElement1.hashCode(), ocrPhotoTextElement2.hashCode());
        System.assertEquals(ocrPhotoTextElement3.hashCode(), ocrPhotoTextElement4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagOcrPhotoTextElement ocrPhotoTextElement = new SwagOcrPhotoTextElement();
        Map<String, String> propertyMappings = ocrPhotoTextElement.getPropertyMappings();
        System.assertEquals('text', propertyMappings.get('Text'));
        System.assertEquals('xleft', propertyMappings.get('XLeft'));
        System.assertEquals('ytop', propertyMappings.get('YTop'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
        System.assertEquals('boundingPoints', propertyMappings.get('BoundingPoints'));
        System.assertEquals('confidenceLevel', propertyMappings.get('ConfidenceLevel'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagOcrPhotoTextElement ocrPhotoTextElement = new SwagOcrPhotoTextElement();
        System.assertEquals(new List<SwagPoint>(), ocrPhotoTextElement.boundingPoints);
        System.assertEquals(null, ocrPhotoTextElement.text);
        System.assertEquals(null, ocrPhotoTextElement.xleft);
        System.assertEquals(null, ocrPhotoTextElement.ytop);
        System.assertEquals(null, ocrPhotoTextElement.width);
        System.assertEquals(null, ocrPhotoTextElement.height);
        System.assertEquals(null, ocrPhotoTextElement.confidenceLevel);
    }
}
