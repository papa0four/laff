% Create a vector and a scalar
x = [
1
2
3
]

alpha = -2

% test with column x vector
disp( 'scale to column vector' )
if ( isequal( laff_scal( alpha, x ), alpha * x ) )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end

disp( ' ' )

% test with x row vector
disp( ' scale row vector' )
if ( isequal( laff_scal( alpha, x' ), alpha * x' ) )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end

disp( ' ' )

% test with illegal alpha
alpha = [
    1 2
    3 4
];
disp( 'illegal alpha' )
if ( isequal( laff_scal( alpha, x ), 'FAILED' ) )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end

disp( ' ' )

% test with illegal x
x = [
    2 3
    -1 -2
];
alpha = 2;
disp( 'illegal x' )
if ( isequal( laff_scal( alpha, x ), 'FAILED') )
    disp( 'PASSED' )
else
    disp( 'FAILED' )
end