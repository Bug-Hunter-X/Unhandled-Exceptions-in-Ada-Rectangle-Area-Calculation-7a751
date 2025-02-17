```ada
function Calculate_Area(Length : Float; Width : Float) return Float is
begin
  return Length * Width;
end Calculate_Area;

procedure Main is
   Area : Float;
   Length : constant Float := 10.0;
   Width  : constant Float := 5.0;
begin
   Area := Calculate_Area(Length, Width);
   Ada.Text_IO.Put_Line("Area:" & Float'Image(Area));
end Main;
```