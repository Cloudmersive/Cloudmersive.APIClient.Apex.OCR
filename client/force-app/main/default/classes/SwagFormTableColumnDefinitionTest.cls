@isTest
private class SwagFormTableColumnDefinitionTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFormTableColumnDefinition formTableColumnDefinition1 = SwagFormTableColumnDefinition.getExample();
        SwagFormTableColumnDefinition formTableColumnDefinition2 = formTableColumnDefinition1;
        SwagFormTableColumnDefinition formTableColumnDefinition3 = new SwagFormTableColumnDefinition();
        SwagFormTableColumnDefinition formTableColumnDefinition4 = formTableColumnDefinition3;

        System.assert(formTableColumnDefinition1.equals(formTableColumnDefinition2));
        System.assert(formTableColumnDefinition2.equals(formTableColumnDefinition1));
        System.assert(formTableColumnDefinition1.equals(formTableColumnDefinition1));
        System.assert(formTableColumnDefinition3.equals(formTableColumnDefinition4));
        System.assert(formTableColumnDefinition4.equals(formTableColumnDefinition3));
        System.assert(formTableColumnDefinition3.equals(formTableColumnDefinition3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFormTableColumnDefinition formTableColumnDefinition1 = SwagFormTableColumnDefinition.getExample();
        SwagFormTableColumnDefinition formTableColumnDefinition2 = SwagFormTableColumnDefinition.getExample();
        SwagFormTableColumnDefinition formTableColumnDefinition3 = new SwagFormTableColumnDefinition();
        SwagFormTableColumnDefinition formTableColumnDefinition4 = new SwagFormTableColumnDefinition();

        System.assert(formTableColumnDefinition1.equals(formTableColumnDefinition2));
        System.assert(formTableColumnDefinition2.equals(formTableColumnDefinition1));
        System.assert(formTableColumnDefinition3.equals(formTableColumnDefinition4));
        System.assert(formTableColumnDefinition4.equals(formTableColumnDefinition3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFormTableColumnDefinition formTableColumnDefinition1 = SwagFormTableColumnDefinition.getExample();
        SwagFormTableColumnDefinition formTableColumnDefinition2 = new SwagFormTableColumnDefinition();

        System.assertEquals(false, formTableColumnDefinition1.equals(formTableColumnDefinition2));
        System.assertEquals(false, formTableColumnDefinition2.equals(formTableColumnDefinition1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFormTableColumnDefinition formTableColumnDefinition1 = SwagFormTableColumnDefinition.getExample();
        SwagFormTableColumnDefinition formTableColumnDefinition2 = new SwagFormTableColumnDefinition();

        System.assertEquals(false, formTableColumnDefinition1.equals('foo'));
        System.assertEquals(false, formTableColumnDefinition2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFormTableColumnDefinition formTableColumnDefinition1 = SwagFormTableColumnDefinition.getExample();
        SwagFormTableColumnDefinition formTableColumnDefinition2 = new SwagFormTableColumnDefinition();
        SwagFormTableColumnDefinition formTableColumnDefinition3;

        System.assertEquals(false, formTableColumnDefinition1.equals(formTableColumnDefinition3));
        System.assertEquals(false, formTableColumnDefinition2.equals(formTableColumnDefinition3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFormTableColumnDefinition formTableColumnDefinition1 = SwagFormTableColumnDefinition.getExample();
        SwagFormTableColumnDefinition formTableColumnDefinition2 = new SwagFormTableColumnDefinition();

        System.assertEquals(formTableColumnDefinition1.hashCode(), formTableColumnDefinition1.hashCode());
        System.assertEquals(formTableColumnDefinition2.hashCode(), formTableColumnDefinition2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFormTableColumnDefinition formTableColumnDefinition1 = SwagFormTableColumnDefinition.getExample();
        SwagFormTableColumnDefinition formTableColumnDefinition2 = SwagFormTableColumnDefinition.getExample();
        SwagFormTableColumnDefinition formTableColumnDefinition3 = new SwagFormTableColumnDefinition();
        SwagFormTableColumnDefinition formTableColumnDefinition4 = new SwagFormTableColumnDefinition();

        System.assert(formTableColumnDefinition1.equals(formTableColumnDefinition2));
        System.assert(formTableColumnDefinition3.equals(formTableColumnDefinition4));
        System.assertEquals(formTableColumnDefinition1.hashCode(), formTableColumnDefinition2.hashCode());
        System.assertEquals(formTableColumnDefinition3.hashCode(), formTableColumnDefinition4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFormTableColumnDefinition formTableColumnDefinition = new SwagFormTableColumnDefinition();
        Map<String, String> propertyMappings = formTableColumnDefinition.getPropertyMappings();
        System.assertEquals('columnID', propertyMappings.get('ColumnID'));
        System.assertEquals('topAnchor', propertyMappings.get('TopAnchor'));
        System.assertEquals('anchorMode', propertyMappings.get('AnchorMode'));
        System.assertEquals('dataType', propertyMappings.get('DataType'));
        System.assertEquals('minimumCharacterCount', propertyMappings.get('MinimumCharacterCount'));
        System.assertEquals('allowNumericDigits', propertyMappings.get('AllowNumericDigits'));
    }
}
