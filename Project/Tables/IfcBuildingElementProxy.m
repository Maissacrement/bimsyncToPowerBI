let
    token = GetToken(),
    ifcType = "IfcBuildingElementProxy",
    ifcElements = GetElements(projectId, ifcType , token ),
    result = if ifcElements = null or List.Count(ifcElements) = 0
	then
		null
	else
		GetTableFromIfcElements(ifcElements )
in
    result