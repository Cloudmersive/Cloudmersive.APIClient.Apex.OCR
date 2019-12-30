@isTest
private class SwagPointTest {
    @isTest
    private static void equalsSameInstance() {
        SwagPoint point1 = SwagPoint.getExample();
        SwagPoint point2 = point1;
        SwagPoint point3 = new SwagPoint();
        SwagPoint point4 = point3;

        System.assert(point1.equals(point2));
        System.assert(point2.equals(point1));
        System.assert(point1.equals(point1));
        System.assert(point3.equals(point4));
        System.assert(point4.equals(point3));
        System.assert(point3.equals(point3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagPoint point1 = SwagPoint.getExample();
        SwagPoint point2 = SwagPoint.getExample();
        SwagPoint point3 = new SwagPoint();
        SwagPoint point4 = new SwagPoint();

        System.assert(point1.equals(point2));
        System.assert(point2.equals(point1));
        System.assert(point3.equals(point4));
        System.assert(point4.equals(point3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagPoint point1 = SwagPoint.getExample();
        SwagPoint point2 = new SwagPoint();

        System.assertEquals(false, point1.equals(point2));
        System.assertEquals(false, point2.equals(point1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagPoint point1 = SwagPoint.getExample();
        SwagPoint point2 = new SwagPoint();

        System.assertEquals(false, point1.equals('foo'));
        System.assertEquals(false, point2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagPoint point1 = SwagPoint.getExample();
        SwagPoint point2 = new SwagPoint();
        SwagPoint point3;

        System.assertEquals(false, point1.equals(point3));
        System.assertEquals(false, point2.equals(point3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagPoint point1 = SwagPoint.getExample();
        SwagPoint point2 = new SwagPoint();

        System.assertEquals(point1.hashCode(), point1.hashCode());
        System.assertEquals(point2.hashCode(), point2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagPoint point1 = SwagPoint.getExample();
        SwagPoint point2 = SwagPoint.getExample();
        SwagPoint point3 = new SwagPoint();
        SwagPoint point4 = new SwagPoint();

        System.assert(point1.equals(point2));
        System.assert(point3.equals(point4));
        System.assertEquals(point1.hashCode(), point2.hashCode());
        System.assertEquals(point3.hashCode(), point4.hashCode());
    }
}
