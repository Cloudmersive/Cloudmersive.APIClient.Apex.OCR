@isTest
private class SwagReceiptLineItemTest {
    @isTest
    private static void equalsSameInstance() {
        SwagReceiptLineItem receiptLineItem1 = SwagReceiptLineItem.getExample();
        SwagReceiptLineItem receiptLineItem2 = receiptLineItem1;
        SwagReceiptLineItem receiptLineItem3 = new SwagReceiptLineItem();
        SwagReceiptLineItem receiptLineItem4 = receiptLineItem3;

        System.assert(receiptLineItem1.equals(receiptLineItem2));
        System.assert(receiptLineItem2.equals(receiptLineItem1));
        System.assert(receiptLineItem1.equals(receiptLineItem1));
        System.assert(receiptLineItem3.equals(receiptLineItem4));
        System.assert(receiptLineItem4.equals(receiptLineItem3));
        System.assert(receiptLineItem3.equals(receiptLineItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagReceiptLineItem receiptLineItem1 = SwagReceiptLineItem.getExample();
        SwagReceiptLineItem receiptLineItem2 = SwagReceiptLineItem.getExample();
        SwagReceiptLineItem receiptLineItem3 = new SwagReceiptLineItem();
        SwagReceiptLineItem receiptLineItem4 = new SwagReceiptLineItem();

        System.assert(receiptLineItem1.equals(receiptLineItem2));
        System.assert(receiptLineItem2.equals(receiptLineItem1));
        System.assert(receiptLineItem3.equals(receiptLineItem4));
        System.assert(receiptLineItem4.equals(receiptLineItem3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagReceiptLineItem receiptLineItem1 = SwagReceiptLineItem.getExample();
        SwagReceiptLineItem receiptLineItem2 = new SwagReceiptLineItem();

        System.assertEquals(false, receiptLineItem1.equals(receiptLineItem2));
        System.assertEquals(false, receiptLineItem2.equals(receiptLineItem1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagReceiptLineItem receiptLineItem1 = SwagReceiptLineItem.getExample();
        SwagReceiptLineItem receiptLineItem2 = new SwagReceiptLineItem();

        System.assertEquals(false, receiptLineItem1.equals('foo'));
        System.assertEquals(false, receiptLineItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagReceiptLineItem receiptLineItem1 = SwagReceiptLineItem.getExample();
        SwagReceiptLineItem receiptLineItem2 = new SwagReceiptLineItem();
        SwagReceiptLineItem receiptLineItem3;

        System.assertEquals(false, receiptLineItem1.equals(receiptLineItem3));
        System.assertEquals(false, receiptLineItem2.equals(receiptLineItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagReceiptLineItem receiptLineItem1 = SwagReceiptLineItem.getExample();
        SwagReceiptLineItem receiptLineItem2 = new SwagReceiptLineItem();

        System.assertEquals(receiptLineItem1.hashCode(), receiptLineItem1.hashCode());
        System.assertEquals(receiptLineItem2.hashCode(), receiptLineItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagReceiptLineItem receiptLineItem1 = SwagReceiptLineItem.getExample();
        SwagReceiptLineItem receiptLineItem2 = SwagReceiptLineItem.getExample();
        SwagReceiptLineItem receiptLineItem3 = new SwagReceiptLineItem();
        SwagReceiptLineItem receiptLineItem4 = new SwagReceiptLineItem();

        System.assert(receiptLineItem1.equals(receiptLineItem2));
        System.assert(receiptLineItem3.equals(receiptLineItem4));
        System.assertEquals(receiptLineItem1.hashCode(), receiptLineItem2.hashCode());
        System.assertEquals(receiptLineItem3.hashCode(), receiptLineItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagReceiptLineItem receiptLineItem = new SwagReceiptLineItem();
        Map<String, String> propertyMappings = receiptLineItem.getPropertyMappings();
        System.assertEquals('itemDescription', propertyMappings.get('ItemDescription'));
        System.assertEquals('itemPrice', propertyMappings.get('ItemPrice'));
    }
}
