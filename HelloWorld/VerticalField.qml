import QtQuick 2.0
import QtQuick.Controls 2.12

Column{
    id: rootId
    property alias vFieldLabelId: labelId
    property alias vFieldTextId: textFieldId
    Label{
        id: labelId
        text: "Some Text"
    }

    TextField{
        id:textFieldId
        maximumLength: 100
    }
}
