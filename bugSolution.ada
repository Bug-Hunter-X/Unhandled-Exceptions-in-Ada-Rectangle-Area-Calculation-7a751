```ada
function Calculate_Area(Length : Float; Width : Float) return Float is
begin
  if Length < 0.0 or Width < 0.0 then
    raise Constraint_Error;
  end if;
  return Length * Width;
exception
  when Constraint_Error =>
    Ada.Text_IO.Put_Line("Error: Length and Width must be non-negative.");
    return 0.0; -- Or raise the exception to a higher level
end Calculate_Area;

procedure Main is
   Area : Float;
   Length : constant Float := 10.0;
   Width  : constant Float := 5.0;
begin
   Area := Calculate_Area(Length, Width);
   Ada.Text_IO.Put_Line("Area:" & Float'Image(Area));
   --Test with negative values
   Area := Calculate_Area(-10.0, 5.0);
   Ada.Text_IO.Put_Line("Area:" & Float'Image(Area));
end Main;
```