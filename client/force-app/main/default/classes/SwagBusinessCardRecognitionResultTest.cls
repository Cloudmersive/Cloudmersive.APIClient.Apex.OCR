@isTest
private class SwagBusinessCardRecognitionResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagBusinessCardRecognitionResult businessCardRecognitionResult1 = SwagBusinessCardRecognitionResult.getExample();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult2 = businessCardRecognitionResult1;
        SwagBusinessCardRecognitionResult businessCardRecognitionResult3 = new SwagBusinessCardRecognitionResult();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult4 = businessCardRecognitionResult3;

        System.assert(businessCardRecognitionResult1.equals(businessCardRecognitionResult2));
        System.assert(businessCardRecognitionResult2.equals(businessCardRecognitionResult1));
        System.assert(businessCardRecognitionResult1.equals(businessCardRecognitionResult1));
        System.assert(businessCardRecognitionResult3.equals(businessCardRecognitionResult4));
        System.assert(businessCardRecognitionResult4.equals(businessCardRecognitionResult3));
        System.assert(businessCardRecognitionResult3.equals(businessCardRecognitionResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagBusinessCardRecognitionResult businessCardRecognitionResult1 = SwagBusinessCardRecognitionResult.getExample();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult2 = SwagBusinessCardRecognitionResult.getExample();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult3 = new SwagBusinessCardRecognitionResult();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult4 = new SwagBusinessCardRecognitionResult();

        System.assert(businessCardRecognitionResult1.equals(businessCardRecognitionResult2));
        System.assert(businessCardRecognitionResult2.equals(businessCardRecognitionResult1));
        System.assert(businessCardRecognitionResult3.equals(businessCardRecognitionResult4));
        System.assert(businessCardRecognitionResult4.equals(businessCardRecognitionResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagBusinessCardRecognitionResult businessCardRecognitionResult1 = SwagBusinessCardRecognitionResult.getExample();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult2 = new SwagBusinessCardRecognitionResult();

        System.assertEquals(false, businessCardRecognitionResult1.equals(businessCardRecognitionResult2));
        System.assertEquals(false, businessCardRecognitionResult2.equals(businessCardRecognitionResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagBusinessCardRecognitionResult businessCardRecognitionResult1 = SwagBusinessCardRecognitionResult.getExample();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult2 = new SwagBusinessCardRecognitionResult();

        System.assertEquals(false, businessCardRecognitionResult1.equals('foo'));
        System.assertEquals(false, businessCardRecognitionResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagBusinessCardRecognitionResult businessCardRecognitionResult1 = SwagBusinessCardRecognitionResult.getExample();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult2 = new SwagBusinessCardRecognitionResult();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult3;

        System.assertEquals(false, businessCardRecognitionResult1.equals(businessCardRecognitionResult3));
        System.assertEquals(false, businessCardRecognitionResult2.equals(businessCardRecognitionResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagBusinessCardRecognitionResult businessCardRecognitionResult1 = SwagBusinessCardRecognitionResult.getExample();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult2 = new SwagBusinessCardRecognitionResult();

        System.assertEquals(businessCardRecognitionResult1.hashCode(), businessCardRecognitionResult1.hashCode());
        System.assertEquals(businessCardRecognitionResult2.hashCode(), businessCardRecognitionResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagBusinessCardRecognitionResult businessCardRecognitionResult1 = SwagBusinessCardRecognitionResult.getExample();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult2 = SwagBusinessCardRecognitionResult.getExample();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult3 = new SwagBusinessCardRecognitionResult();
        SwagBusinessCardRecognitionResult businessCardRecognitionResult4 = new SwagBusinessCardRecognitionResult();

        System.assert(businessCardRecognitionResult1.equals(businessCardRecognitionResult2));
        System.assert(businessCardRecognitionResult3.equals(businessCardRecognitionResult4));
        System.assertEquals(businessCardRecognitionResult1.hashCode(), businessCardRecognitionResult2.hashCode());
        System.assertEquals(businessCardRecognitionResult3.hashCode(), businessCardRecognitionResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagBusinessCardRecognitionResult businessCardRecognitionResult = new SwagBusinessCardRecognitionResult();
        Map<String, String> propertyMappings = businessCardRecognitionResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('personName', propertyMappings.get('PersonName'));
        System.assertEquals('personTitle', propertyMappings.get('PersonTitle'));
        System.assertEquals('businessName', propertyMappings.get('BusinessName'));
        System.assertEquals('addressString', propertyMappings.get('AddressString'));
        System.assertEquals('phoneNumber', propertyMappings.get('PhoneNumber'));
        System.assertEquals('emailAddress', propertyMappings.get('EmailAddress'));
        System.assertEquals('timestamp', propertyMappings.get('Timestamp'));
    }
}
