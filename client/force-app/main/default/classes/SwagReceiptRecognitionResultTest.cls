@isTest
private class SwagReceiptRecognitionResultTest {
    @isTest
    private static void equalsSameInstance() {
        SwagReceiptRecognitionResult receiptRecognitionResult1 = SwagReceiptRecognitionResult.getExample();
        SwagReceiptRecognitionResult receiptRecognitionResult2 = receiptRecognitionResult1;
        SwagReceiptRecognitionResult receiptRecognitionResult3 = new SwagReceiptRecognitionResult();
        SwagReceiptRecognitionResult receiptRecognitionResult4 = receiptRecognitionResult3;

        System.assert(receiptRecognitionResult1.equals(receiptRecognitionResult2));
        System.assert(receiptRecognitionResult2.equals(receiptRecognitionResult1));
        System.assert(receiptRecognitionResult1.equals(receiptRecognitionResult1));
        System.assert(receiptRecognitionResult3.equals(receiptRecognitionResult4));
        System.assert(receiptRecognitionResult4.equals(receiptRecognitionResult3));
        System.assert(receiptRecognitionResult3.equals(receiptRecognitionResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagReceiptRecognitionResult receiptRecognitionResult1 = SwagReceiptRecognitionResult.getExample();
        SwagReceiptRecognitionResult receiptRecognitionResult2 = SwagReceiptRecognitionResult.getExample();
        SwagReceiptRecognitionResult receiptRecognitionResult3 = new SwagReceiptRecognitionResult();
        SwagReceiptRecognitionResult receiptRecognitionResult4 = new SwagReceiptRecognitionResult();

        System.assert(receiptRecognitionResult1.equals(receiptRecognitionResult2));
        System.assert(receiptRecognitionResult2.equals(receiptRecognitionResult1));
        System.assert(receiptRecognitionResult3.equals(receiptRecognitionResult4));
        System.assert(receiptRecognitionResult4.equals(receiptRecognitionResult3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagReceiptRecognitionResult receiptRecognitionResult1 = SwagReceiptRecognitionResult.getExample();
        SwagReceiptRecognitionResult receiptRecognitionResult2 = new SwagReceiptRecognitionResult();

        System.assertEquals(false, receiptRecognitionResult1.equals(receiptRecognitionResult2));
        System.assertEquals(false, receiptRecognitionResult2.equals(receiptRecognitionResult1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagReceiptRecognitionResult receiptRecognitionResult1 = SwagReceiptRecognitionResult.getExample();
        SwagReceiptRecognitionResult receiptRecognitionResult2 = new SwagReceiptRecognitionResult();

        System.assertEquals(false, receiptRecognitionResult1.equals('foo'));
        System.assertEquals(false, receiptRecognitionResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagReceiptRecognitionResult receiptRecognitionResult1 = SwagReceiptRecognitionResult.getExample();
        SwagReceiptRecognitionResult receiptRecognitionResult2 = new SwagReceiptRecognitionResult();
        SwagReceiptRecognitionResult receiptRecognitionResult3;

        System.assertEquals(false, receiptRecognitionResult1.equals(receiptRecognitionResult3));
        System.assertEquals(false, receiptRecognitionResult2.equals(receiptRecognitionResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagReceiptRecognitionResult receiptRecognitionResult1 = SwagReceiptRecognitionResult.getExample();
        SwagReceiptRecognitionResult receiptRecognitionResult2 = new SwagReceiptRecognitionResult();

        System.assertEquals(receiptRecognitionResult1.hashCode(), receiptRecognitionResult1.hashCode());
        System.assertEquals(receiptRecognitionResult2.hashCode(), receiptRecognitionResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagReceiptRecognitionResult receiptRecognitionResult1 = SwagReceiptRecognitionResult.getExample();
        SwagReceiptRecognitionResult receiptRecognitionResult2 = SwagReceiptRecognitionResult.getExample();
        SwagReceiptRecognitionResult receiptRecognitionResult3 = new SwagReceiptRecognitionResult();
        SwagReceiptRecognitionResult receiptRecognitionResult4 = new SwagReceiptRecognitionResult();

        System.assert(receiptRecognitionResult1.equals(receiptRecognitionResult2));
        System.assert(receiptRecognitionResult3.equals(receiptRecognitionResult4));
        System.assertEquals(receiptRecognitionResult1.hashCode(), receiptRecognitionResult2.hashCode());
        System.assertEquals(receiptRecognitionResult3.hashCode(), receiptRecognitionResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagReceiptRecognitionResult receiptRecognitionResult = new SwagReceiptRecognitionResult();
        Map<String, String> propertyMappings = receiptRecognitionResult.getPropertyMappings();
        System.assertEquals('successful', propertyMappings.get('Successful'));
        System.assertEquals('timestamp', propertyMappings.get('Timestamp'));
        System.assertEquals('businessName', propertyMappings.get('BusinessName'));
        System.assertEquals('businessWebsite', propertyMappings.get('BusinessWebsite'));
        System.assertEquals('addressString', propertyMappings.get('AddressString'));
        System.assertEquals('phoneNumber', propertyMappings.get('PhoneNumber'));
        System.assertEquals('receiptItems', propertyMappings.get('ReceiptItems'));
        System.assertEquals('receiptSubTotal', propertyMappings.get('ReceiptSubTotal'));
        System.assertEquals('receiptTotal', propertyMappings.get('ReceiptTotal'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagReceiptRecognitionResult receiptRecognitionResult = new SwagReceiptRecognitionResult();
        System.assertEquals(new List<SwagReceiptLineItem>(), receiptRecognitionResult.receiptItems);
        System.assertEquals(null, receiptRecognitionResult.successful);
        System.assertEquals(null, receiptRecognitionResult.timestamp);
        System.assertEquals(null, receiptRecognitionResult.businessName);
        System.assertEquals(null, receiptRecognitionResult.businessWebsite);
        System.assertEquals(null, receiptRecognitionResult.addressString);
        System.assertEquals(null, receiptRecognitionResult.phoneNumber);
        System.assertEquals(null, receiptRecognitionResult.receiptSubTotal);
        System.assertEquals(null, receiptRecognitionResult.receiptTotal);
    }
}
