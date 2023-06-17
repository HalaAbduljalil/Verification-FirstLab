`timescale 1ns/100ps
module Vector;
logic [0:15] MyBus;
wire [15:0] mybus='b1001010100101101;
logic [47:0] My48bits; 
logic [4:0] X;
logic [4:0] A;
logic [4:0] B;
initial
begin
//point 2 in lab2
//first Step 
$display("\n----Start Of Point 2&3 in Lab2----\n"); 
$display("\n----First Step----\n"); 
$display(" mybus = %b",mybus );
#5 MyBus[0:2] = mybus[10:8];
$display(" MyBus = %b",MyBus );

//second Step 
$display("\n----Second Step----\n"); 
$display(" mybus = %b",mybus );
#5 MyBus = mybus; 
$display(" MyBus = %b",MyBus );

//third  Step 
$display("\n----Third Step----\n"); 
$display(" mybus = %b",mybus );
#5 MyBus[0:15] = mybus[15:0];
$display(" MyBus = %b",MyBus );
$display("\n----End Of Point 2&3 in Lab2----\n");

//Point 6 in Lab 2
$display("\n----Start Of Point 6 in Lab2----\n");
#5 My48bits = 'bz;
$display("My48bits = %b", My48bits); 

#5 My48bits = 'bx;
$display("My48bits = %b", My48bits); 
		
#5 My48bits = 'b0;
$display("My48bits = %b", My48bits); 

#5 My48bits = 'b1;
$display("My48bits = %b", My48bits);


$display("\n----End Of Point 6 in Lab2----\n");

//Point 7 in Lab 2
$display("\n----Start Of Point 7 in Lab2----\n");
A= 5'b01010;
B = 5'b11100;
$display("A= %b \n", A); 
$display("B= %b \n", B); 

#5 X=A&B;
$display("A&B =%b", X); 

#5 X=A|B;
$display("A|B =%b", X); 

#5 X=A^B;
$display("A^B =%b", X); 

#5 X=~A|~B;
$display("~A|~B =%b", X); 
		
$display("\n----End Of Point 7 in Lab2----\n");

//Point 8 in Lab 2
$display("\n----Start Of Point 8 in Lab2----\n");
X = 0;
A = 5'b01010;
B = 5'b11100;
$display("A= %b ", A); 
$display("B= %b ", B);
$display("X= %b ", X);
  
#5 X[0]=&A;
$display("X[0]=&A is %b", X); 

#5 X[1]=|A;
$display("X[1]=|A is %b", X); 
 
#5 X[2]=&B;
$display("X[2]=&B is %b", X); 

#5 X[3]=^A&~^B;
$display("X[3]=^A & ~^B is %b", X); 		

#5 X[4]=A[4]^B[4];
$display("X[4]=A[4] ^ B[4] is %b", X); 	

#5 X =^X;
$display("X=^X is %b", X); 	
$display("\n----End Of Point 8 in Lab2----\n");

//Point 9 in Lab 2
$display("\n----Start Of Point 9 in Lab2----\n");
X = 0;
A = 5'b01010;
B = 5'b11100;
$display("A= %b ", A); 
$display("B= %b ", B);
$display("X= %b ", X);	
	
#5 X=((~A|^B)|(A&B))^A;
$display("((~A | ^B)|(A & B))^A is %b", X); 

end
endmodule;

