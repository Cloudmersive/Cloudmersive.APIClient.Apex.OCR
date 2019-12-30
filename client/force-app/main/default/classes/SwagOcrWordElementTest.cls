@isTest
private class SwagOcrWordElementTest {
    @isTest
    private static void equalsSameInstance() {
        SwagOcrWordElement ocrWordElement1 = SwagOcrWordElement.getExample();
        SwagOcrWordElement ocrWordElement2 = ocrWordElement1;
        SwagOcrWordElement ocrWordElement3 = new SwagOcrWordElement();
        SwagOcrWordElement ocrWordElement4 = ocrWordElement3;

        System.assert(ocrWordElement1.equals(ocrWordElement2));
        System.assert(ocrWordElement2.equals(ocrWordElement1));
        System.assert(ocrWordElement1.equals(ocrWordElement1));
        System.assert(ocrWordElement3.equals(ocrWordElement4));
        System.assert(ocrWordElement4.equals(ocrWordElement3));
        System.assert(ocrWordElement3.equals(ocrWordElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagOcrWordElement ocrWordElement1 = SwagOcrWordElement.getExample();
        SwagOcrWordElement ocrWordElement2 = SwagOcrWordElement.getExample();
        SwagOcrWordElement ocrWordElement3 = new SwagOcrWordElement();
        SwagOcrWordElement ocrWordElement4 = new SwagOcrWordElement();

        System.assert(ocrWordElement1.equals(ocrWordElement2));
        System.assert(ocrWordElement2.equals(ocrWordElement1));
        System.assert(ocrWordElement3.equals(ocrWordElement4));
        System.assert(ocrWordElement4.equals(ocrWordElement3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagOcrWordElement ocrWordElement1 = SwagOcrWordElement.getExample();
        SwagOcrWordElement ocrWordElement2 = new SwagOcrWordElement();

        System.assertEquals(false, ocrWordElement1.equals(ocrWordElement2));
        System.assertEquals(false, ocrWordElement2.equals(ocrWordElement1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagOcrWordElement ocrWordElement1 = SwagOcrWordElement.getExample();
        SwagOcrWordElement ocrWordElement2 = new SwagOcrWordElement();

        System.assertEquals(false, ocrWordElement1.equals('foo'));
        System.assertEquals(false, ocrWordElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagOcrWordElement ocrWordElement1 = SwagOcrWordElement.getExample();
        SwagOcrWordElement ocrWordElement2 = new SwagOcrWordElement();
        SwagOcrWordElement ocrWordElement3;

        System.assertEquals(false, ocrWordElement1.equals(ocrWordElement3));
        System.assertEquals(false, ocrWordElement2.equals(ocrWordElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagOcrWordElement ocrWordElement1 = SwagOcrWordElement.getExample();
        SwagOcrWordElement ocrWordElement2 = new SwagOcrWordElement();

        System.assertEquals(ocrWordElement1.hashCode(), ocrWordElement1.hashCode());
        System.assertEquals(ocrWordElement2.hashCode(), ocrWordElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagOcrWordElement ocrWordElement1 = SwagOcrWordElement.getExample();
        SwagOcrWordElement ocrWordElement2 = SwagOcrWordElement.getExample();
        SwagOcrWordElement ocrWordElement3 = new SwagOcrWordElement();
        SwagOcrWordElement ocrWordElement4 = new SwagOcrWordElement();

        System.assert(ocrWordElement1.equals(ocrWordElement2));
        System.assert(ocrWordElement3.equals(ocrWordElement4));
        System.assertEquals(ocrWordElement1.hashCode(), ocrWordElement2.hashCode());
        System.assertEquals(ocrWordElement3.hashCode(), ocrWordElement4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagOcrWordElement ocrWordElement = new SwagOcrWordElement();
        Map<String, String> propertyMappings = ocrWordElement.getPropertyMappings();
        System.assertEquals('wordText', propertyMappings.get('WordText'));
        System.assertEquals('lineNumber', propertyMappings.get('LineNumber'));
        System.assertEquals('wordNumber', propertyMappings.get('WordNumber'));
        System.assertEquals('xleft', propertyMappings.get('XLeft'));
        System.assertEquals('ytop', propertyMappings.get('YTop'));
        System.assertEquals('width', propertyMappings.get('Width'));
        System.assertEquals('height', propertyMappings.get('Height'));
        System.assertEquals('confidenceLevel', propertyMappings.get('ConfidenceLevel'));
        System.assertEquals('blockNumber', propertyMappings.get('BlockNumber'));
        System.assertEquals('paragraphNumber', propertyMappings.get('ParagraphNumber'));
        System.assertEquals('pageNumber', propertyMappings.get('PageNumber'));
    }
}
