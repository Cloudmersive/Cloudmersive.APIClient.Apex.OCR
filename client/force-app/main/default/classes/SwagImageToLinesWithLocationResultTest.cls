@isTest
private class SwagImageToLinesWithLocationResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult1 = SwagImageToLinesWithLocationResult.getExample();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult2 = imageToLinesWithLocationResult1;
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult3 = new SwagImageToLinesWithLocationResult();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult4 = imageToLinesWithLocationResult3;

        System.assert(imageToLinesWithLocationResult1.equals(imageToLinesWithLocationResult2));
        System.assert(imageToLinesWithLocationResult2.equals(imageToLinesWithLocationResult1));
        System.assert(imageToLinesWithLocationResult1.equals(imageToLinesWithLocationResult1));
        System.assert(imageToLinesWithLocationResult3.equals(imageToLinesWithLocationResult4));
        System.assert(imageToLinesWithLocationResult4.equals(imageToLinesWithLocationResult3));
        System.assert(imageToLinesWithLocationResult3.equals(imageToLinesWithLocationResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult1 = SwagImageToLinesWithLocationResult.getExample();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult2 = SwagImageToLinesWithLocationResult.getExample();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult3 = new SwagImageToLinesWithLocationResult();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult4 = new SwagImageToLinesWithLocationResult();

        System.assert(imageToLinesWithLocationResult1.equals(imageToLinesWithLocationResult2));
        System.assert(imageToLinesWithLocationResult2.equals(imageToLinesWithLocationResult1));
        System.assert(imageToLinesWithLocationResult3.equals(imageToLinesWithLocationResult4));
        System.assert(imageToLinesWithLocationResult4.equals(imageToLinesWithLocationResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult1 = SwagImageToLinesWithLocationResult.getExample();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult2 = new SwagImageToLinesWithLocationResult();

        System.assertEquals(false, imageToLinesWithLocationResult1.equals(imageToLinesWithLocationResult2));
        System.assertEquals(false, imageToLinesWithLocationResult2.equals(imageToLinesWithLocationResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult1 = SwagImageToLinesWithLocationResult.getExample();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult2 = new SwagImageToLinesWithLocationResult();

        System.assertEquals(false, imageToLinesWithLocationResult1.equals('foo'));
        System.assertEquals(false, imageToLinesWithLocationResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult1 = SwagImageToLinesWithLocationResult.getExample();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult2 = new SwagImageToLinesWithLocationResult();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult3;

        System.assertEquals(false, imageToLinesWithLocationResult1.equals(imageToLinesWithLocationResult3));
        System.assertEquals(false, imageToLinesWithLocationResult2.equals(imageToLinesWithLocationResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult1 = SwagImageToLinesWithLocationResult.getExample();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult2 = new SwagImageToLinesWithLocationResult();

        System.assertEquals(imageToLinesWithLocationResult1.hashCode(), imageToLinesWithLocationResult1.hashCode());
        System.assertEquals(imageToLinesWithLocationResult2.hashCode(), imageToLinesWithLocationResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult1 = SwagImageToLinesWithLocationResult.getExample();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult2 = SwagImageToLinesWithLocationResult.getExample();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult3 = new SwagImageToLinesWithLocationResult();
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult4 = new SwagImageToLinesWithLocationResult();

        System.assert(imageToLinesWithLocationResult1.equals(imageToLinesWithLocationResult2));
        System.assert(imageToLinesWithLocationResult3.equals(imageToLinesWithLocationResult4));
        System.assertEquals(imageToLinesWithLocationResult1.hashCode(), imageToLinesWithLocationResult2.hashCode());
        System.assertEquals(imageToLinesWithLocationResult3.hashCode(), imageToLinesWithLocationResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult = new SwagImageToLinesWithLocationResult();
        Map<String, String> propertyMappings = imageToLinesWithLocationResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('lines', propertyMappings.get('Lines'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagImageToLinesWithLocationResult imageToLinesWithLocationResult = new SwagImageToLinesWithLocationResult();
        System.assertEquals(new List<SwagOcrLineElement>(), imageToLinesWithLocationResult.lines);
        System.assertEquals(null, imageToLinesWithLocationResult.successful);
    }
}
