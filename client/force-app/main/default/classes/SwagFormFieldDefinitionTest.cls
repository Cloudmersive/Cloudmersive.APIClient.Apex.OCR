@isTest
private class SwagFormFieldDefinitionTest {
    @isTest
    private static void equalsSameInstance() {
        SwagFormFieldDefinition formFieldDefinition1 = SwagFormFieldDefinition.getExample();
        SwagFormFieldDefinition formFieldDefinition2 = formFieldDefinition1;
        SwagFormFieldDefinition formFieldDefinition3 = new SwagFormFieldDefinition();
        SwagFormFieldDefinition formFieldDefinition4 = formFieldDefinition3;

        System.assert(formFieldDefinition1.equals(formFieldDefinition2));
        System.assert(formFieldDefinition2.equals(formFieldDefinition1));
        System.assert(formFieldDefinition1.equals(formFieldDefinition1));
        System.assert(formFieldDefinition3.equals(formFieldDefinition4));
        System.assert(formFieldDefinition4.equals(formFieldDefinition3));
        System.assert(formFieldDefinition3.equals(formFieldDefinition3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagFormFieldDefinition formFieldDefinition1 = SwagFormFieldDefinition.getExample();
        SwagFormFieldDefinition formFieldDefinition2 = SwagFormFieldDefinition.getExample();
        SwagFormFieldDefinition formFieldDefinition3 = new SwagFormFieldDefinition();
        SwagFormFieldDefinition formFieldDefinition4 = new SwagFormFieldDefinition();

        System.assert(formFieldDefinition1.equals(formFieldDefinition2));
        System.assert(formFieldDefinition2.equals(formFieldDefinition1));
        System.assert(formFieldDefinition3.equals(formFieldDefinition4));
        System.assert(formFieldDefinition4.equals(formFieldDefinition3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagFormFieldDefinition formFieldDefinition1 = SwagFormFieldDefinition.getExample();
        SwagFormFieldDefinition formFieldDefinition2 = new SwagFormFieldDefinition();

        System.assertEquals(false, formFieldDefinition1.equals(formFieldDefinition2));
        System.assertEquals(false, formFieldDefinition2.equals(formFieldDefinition1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagFormFieldDefinition formFieldDefinition1 = SwagFormFieldDefinition.getExample();
        SwagFormFieldDefinition formFieldDefinition2 = new SwagFormFieldDefinition();

        System.assertEquals(false, formFieldDefinition1.equals('foo'));
        System.assertEquals(false, formFieldDefinition2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagFormFieldDefinition formFieldDefinition1 = SwagFormFieldDefinition.getExample();
        SwagFormFieldDefinition formFieldDefinition2 = new SwagFormFieldDefinition();
        SwagFormFieldDefinition formFieldDefinition3;

        System.assertEquals(false, formFieldDefinition1.equals(formFieldDefinition3));
        System.assertEquals(false, formFieldDefinition2.equals(formFieldDefinition3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagFormFieldDefinition formFieldDefinition1 = SwagFormFieldDefinition.getExample();
        SwagFormFieldDefinition formFieldDefinition2 = new SwagFormFieldDefinition();

        System.assertEquals(formFieldDefinition1.hashCode(), formFieldDefinition1.hashCode());
        System.assertEquals(formFieldDefinition2.hashCode(), formFieldDefinition2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagFormFieldDefinition formFieldDefinition1 = SwagFormFieldDefinition.getExample();
        SwagFormFieldDefinition formFieldDefinition2 = SwagFormFieldDefinition.getExample();
        SwagFormFieldDefinition formFieldDefinition3 = new SwagFormFieldDefinition();
        SwagFormFieldDefinition formFieldDefinition4 = new SwagFormFieldDefinition();

        System.assert(formFieldDefinition1.equals(formFieldDefinition2));
        System.assert(formFieldDefinition3.equals(formFieldDefinition4));
        System.assertEquals(formFieldDefinition1.hashCode(), formFieldDefinition2.hashCode());
        System.assertEquals(formFieldDefinition3.hashCode(), formFieldDefinition4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagFormFieldDefinition formFieldDefinition = new SwagFormFieldDefinition();
        Map<String, String> propertyMappings = formFieldDefinition.getPropertyMappings();
        System.assertEquals('fieldID', propertyMappings.get('FieldID'));
        System.assertEquals('leftAnchor', propertyMappings.get('LeftAnchor'));
        System.assertEquals('topAnchor', propertyMappings.get('TopAnchor'));
        System.assertEquals('bottomAnchor', propertyMappings.get('BottomAnchor'));
        System.assertEquals('anchorMode', propertyMappings.get('AnchorMode'));
        System.assertEquals('dataType', propertyMappings.get('DataType'));
        System.assertEquals('targetDigitCount', propertyMappings.get('TargetDigitCount'));
        System.assertEquals('minimumCharacterCount', propertyMappings.get('MinimumCharacterCount'));
        System.assertEquals('allowNumericDigits', propertyMappings.get('AllowNumericDigits'));
        System.assertEquals('verticalAlignmentType', propertyMappings.get('VerticalAlignmentType'));
        System.assertEquals('horizontalAlignmentType', propertyMappings.get('HorizontalAlignmentType'));
        System.assertEquals('targetFieldWidthRelative', propertyMappings.get('TargetFieldWidth_Relative'));
        System.assertEquals('targetFieldHeightRelative', propertyMappings.get('TargetFieldHeight_Relative'));
        System.assertEquals('targetFieldHorizontalAdjustment', propertyMappings.get('TargetFieldHorizontalAdjustment'));
        System.assertEquals('targetFieldVerticalAdjustment', propertyMappings.get('TargetFieldVerticalAdjustment'));
        System.assertEquals('ignore', propertyMappings.get('Ignore'));
        System.assertEquals('options', propertyMappings.get('Options'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagFormFieldDefinition formFieldDefinition = new SwagFormFieldDefinition();
        System.assertEquals(new List<String>(), formFieldDefinition.ignore);
        System.assertEquals(null, formFieldDefinition.fieldID);
        System.assertEquals(null, formFieldDefinition.leftAnchor);
        System.assertEquals(null, formFieldDefinition.topAnchor);
        System.assertEquals(null, formFieldDefinition.bottomAnchor);
        System.assertEquals(null, formFieldDefinition.anchorMode);
        System.assertEquals(null, formFieldDefinition.dataType);
        System.assertEquals(null, formFieldDefinition.targetDigitCount);
        System.assertEquals(null, formFieldDefinition.minimumCharacterCount);
        System.assertEquals(null, formFieldDefinition.allowNumericDigits);
        System.assertEquals(null, formFieldDefinition.verticalAlignmentType);
        System.assertEquals(null, formFieldDefinition.horizontalAlignmentType);
        System.assertEquals(null, formFieldDefinition.targetFieldWidthRelative);
        System.assertEquals(null, formFieldDefinition.targetFieldHeightRelative);
        System.assertEquals(null, formFieldDefinition.targetFieldHorizontalAdjustment);
        System.assertEquals(null, formFieldDefinition.targetFieldVerticalAdjustment);
        System.assertEquals(null, formFieldDefinition.options);
    }
}
