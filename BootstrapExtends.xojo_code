#tag Module
Protected Module BootstrapExtends
	#tag Method, Flags = &h0
		Sub AddBadge(Extends b as WebButton, Text as String, Indicator as WebUIControl.Indicators = WebUIControl.Indicators.Default)
		  b.Caption = b.Caption + " " + CreateBadgeHTML(Text, Indicator)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddBadge(Extends l as WebLabel, Text as String, Indicator as WebUIControl.Indicators = WebUIControl.Indicators.Default)
		  l.Text = l.Text + " " + CreateBadgeHTML(Text, Indicator)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateBadgeHTML(Text as String, Indicator as WebUIControl.Indicators = WebUIControl.Indicators.Default) As String
		  Var HTML As String = "<raw><span class='badge badge-" + WebUIControlIndicator2Text(Indicator)+ "'>" + Text + "</span></raw>"
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
