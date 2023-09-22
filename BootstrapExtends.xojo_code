#tag Module
Protected Module BootstrapExtends
	#tag Method, Flags = &h0
		Sub AddBadge(Extends b as WebButton, badgeText as String, Indicator as WebUIControl.Indicators = WebUIControl.Indicators.Default)
		  b.Caption = b.Caption + " " + CreateBadgeHTML(badgeText, Indicator)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddBadge(Extends l as WebLabel, badgeText as String, Indicator as WebUIControl.Indicators = WebUIControl.Indicators.Default)
		  l.Text = l.Text + " " + CreateBadgeHTML(badgeText, Indicator)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddBadgeAt(Extends w as WebListBox, Row as Integer, Column as Integer, badgeText as String, Indicator as WebUIControl.Indicators = WebUIControl.Indicators.Default)
		  w.CellValueAt(Row, Column) =  w.CellValueAt(Row, Column) + " " + CreateBadgeHTML(badgeText, Indicator)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddBadgeAt(Extends p as WebPopupMenu, Row as Integer, badgeText as String, Indicator as WebUIControl.Indicators = WebUIControl.Indicators.Default)
		  //RowValues cannot be updated, so we create a new one and remove the old one
		  Var OldValue As String = p.RowValueAt(Row)
		  Var OldTag As Variant = p.RowValueAt(Row)
		  
		  p.AddRowAt(Row, OldValue + " " + CreateBadgeHTML(badgeText, Indicator))
		  p.RowTagAt(Row) = OldTag
		  p.RemoveRowAt(Row+1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateBadgeHTML(badgeText as String, Indicator as WebUIControl.Indicators = WebUIControl.Indicators.Default) As String
		  Var HTML As String = "<raw><span class='badge bg-" + WebUIControlIndicator2Text(Indicator)+ "'>" + badgeText + "</span></raw>"
		  Return HTML
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function WebUIControlIndicator2Text(Indicator as WebUIControl.Indicators) As String
		  Select Case Indicator
		  Case WebUIControl.Indicators.Danger
		    Return "danger"
		  Case WebUIControl.Indicators.Dark
		    Return "dark"
		  Case WebUIControl.Indicators.Default
		    Return "primary"
		  Case WebUIControl.Indicators.Info
		    Return "info"
		  Case WebUIControl.Indicators.Light
		    Return "light"
		  Case WebUIControl.Indicators.Link
		    Return "link"
		  Case WebUIControl.Indicators.Primary
		    Return "primary"
		  Case WebUIControl.Indicators.Secondary
		    Return "secondary"
		  Case WebUIControl.Indicators.Success
		    Return "success"
		  Case WebUIControl.Indicators.Warning
		    return "warning"
		  End Select
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
