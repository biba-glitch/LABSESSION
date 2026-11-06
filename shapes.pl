square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Length, Width, Area, Perimeter) :-
    Area is Length * Width,
    Perimeter is 2 * (Length + Width).

triangle(SideA, SideB, SideC, Base, Height, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is SideA + SideB + SideC.

shapes :-
    write('Square:'), nl,
    write('Enter the side: '), read(Side),
    square(Side, SqArea, SqPerimeter),
    write('Area: '), write(SqArea), nl,
    write('Perimeter: '), write(SqPerimeter), nl,
    nl,
    write('Rectangle:'), nl,
    write('Enter the length: '), read(Length),
    write('Enter the width: '), read(Width),
    rectangle(Length, Width, RecArea, RecPerimeter),
    write('Area: '), write(RecArea), nl,
    write('Perimeter: '), write(RecPerimeter), nl,
    nl,
    write('Triangle:'), nl,
    write('Enter side A: '), read(SideA),
    write('Enter side B: '), read(SideB),
    write('Enter side C: '), read(SideC),
    write('Enter the base: '), read(Base),
    write('Enter the height: '), read(Height),
    triangle(SideA, SideB, SideC, Base, Height, TriArea, TriPerimeter),
    write('Area: '), write(TriArea), nl,
    write('Perimeter: '), write(TriPerimeter), nl.
