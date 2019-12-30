@isTest
private class SwagImageToTextResponseTest {
    @isTest
    private static void equalsSameInstance() {
        SwagImageToTextResponse imageToTextResponse1 = SwagImageToTextResponse.getExample();
        SwagImageToTextResponse imageToTextResponse2 = imageToTextResponse1;
        SwagImageToTextResponse imageToTextResponse3 = new SwagImageToTextResponse();
        SwagImageToTextResponse imageToTextResponse4 = imageToTextResponse3;

        System.assert(imageToTextResponse1.equals(imageToTextResponse2));
        System.assert(imageToTextResponse2.equals(imageToTextResponse1));
        System.assert(imageToTextResponse1.equals(imageToTextResponse1));
        System.assert(imageToTextResponse3.equals(imageToTextResponse4));
        System.assert(imageToTextResponse4.equals(imageToTextResponse3));
        System.assert(imageToTextResponse3.equals(imageToTextResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagImageToTextResponse imageToTextResponse1 = SwagImageToTextResponse.getExample();
        SwagImageToTextResponse imageToTextResponse2 = SwagImageToTextResponse.getExample();
        SwagImageToTextResponse imageToTextResponse3 = new SwagImageToTextResponse();
        SwagImageToTextResponse imageToTextResponse4 = new SwagImageToTextResponse();

        System.assert(imageToTextResponse1.equals(imageToTextResponse2));
        System.assert(imageToTextResponse2.equals(imageToTextResponse1));
        System.assert(imageToTextResponse3.equals(imageToTextResponse4));
        System.assert(imageToTextResponse4.equals(imageToTextResponse3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagImageToTextResponse imageToTextResponse1 = SwagImageToTextResponse.getExample();
        SwagImageToTextResponse imageToTextResponse2 = new SwagImageToTextResponse();

        System.assertEquals(false, imageToTextResponse1.equals(imageToTextResponse2));
        System.assertEquals(false, imageToTextResponse2.equals(imageToTextResponse1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagImageToTextResponse imageToTextResponse1 = SwagImageToTextResponse.getExample();
        SwagImageToTextResponse imageToTextResponse2 = new SwagImageToTextResponse();

        System.assertEquals(false, imageToTextResponse1.equals('foo'));
        System.assertEquals(false, imageToTextResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagImageToTextResponse imageToTextResponse1 = SwagImageToTextResponse.getExample();
        SwagImageToTextResponse imageToTextResponse2 = new SwagImageToTextResponse();
        SwagImageToTextResponse imageToTextResponse3;

        System.assertEquals(false, imageToTextResponse1.equals(imageToTextResponse3));
        System.assertEquals(false, imageToTextResponse2.equals(imageToTextResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagImageToTextResponse imageToTextResponse1 = SwagImageToTextResponse.getExample();
        SwagImageToTextResponse imageToTextResponse2 = new SwagImageToTextResponse();

        System.assertEquals(imageToTextResponse1.hashCode(), imageToTextResponse1.hashCode());
        System.assertEquals(imageToTextResponse2.hashCode(), imageToTextResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagImageToTextResponse imageToTextResponse1 = SwagImageToTextResponse.getExample();
        SwagImageToTextResponse imageToTextResponse2 = SwagImageToTextResponse.getExample();
        SwagImageToTextResponse imageToTextResponse3 = new SwagImageToTextResponse();
        SwagImageToTextResponse imageToTextResponse4 = new SwagImageToTextResponse();

        System.assert(imageToTextResponse1.equals(imageToTextResponse2));
        System.assert(imageToTextResponse3.equals(imageToTextResponse4));
        System.assertEquals(imageToTextResponse1.hashCode(), imageToTextResponse2.hashCode());
        System.assertEquals(imageToTextResponse3.hashCode(), imageToTextResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagImageToTextResponse imageToTextResponse = new SwagImageToTextResponse();
        Map<String, String> propertyMappings = imageToTextResponse.getPropertyMappings();
        System.assertEquals('meanConfidenceLevel', propertyMappings.get('MeanConfidenceLevel'));
        System.assertEquals('textResult', propertyMappings.get('TextResult'));
    }
}
