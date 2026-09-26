Library IEEE ;
Use IEEE.STD_Logic_1164.All ;

Entity Bit_Counter Is
 Generic(
  G_Vector_Width : Integer   := 8 ;
  G_Count_Value  : STD_Logic := '0' 
 ) ;
 Port(
  I_Vector : In  STD_Logic_Vector(G_Vector_Width-1 Downto 0) ;
  O_Result : Out Integer Range 0 To G_Vector_Width 
 );
End Bit_Counter ;

Architecture Behavioral Of Bit_Counter Is

Begin

 Process(I_Vector) 
  Variable V_Counter : Integer Range 0 To G_Vector_Width := 0 ;
 Begin
  V_Counter := 0 ;
  For N In 0 To G_Vector_Width-1 Loop
   If I_Vector(N)=G_Count_value Then
    V_Counter := V_Counter + 1 ;
   End If ;
  End Loop ;
  O_Result <= V_Counter ;
 End Process ;

End Behavioral ;