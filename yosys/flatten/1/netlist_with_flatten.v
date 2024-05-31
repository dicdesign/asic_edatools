/* Generated by Yosys 0.22+29 (git sha1 fc53a0a5c, clang 14.0.0-1ubuntu1 -fPIC -Os) */

module fa(a, b, cin, sum, co);
  input a;
  wire a;
  input b;
  wire b;
  wire c1;
  wire c2;
  input cin;
  wire cin;
  output co;
  wire co;
  wire \ins1.a ;
  wire \ins1.b ;
  wire \ins1.co ;
  wire \ins1.sum ;
  wire \ins2.a ;
  wire \ins2.b ;
  wire \ins2.co ;
  wire \ins2.sum ;
  wire \ins3.a ;
  wire \ins3.b ;
  wire \ins3.y ;
  wire s1;
  output sum;
  wire sum;
  sky130_fd_sc_hd__and2_0 _0_ (
    .A(\ins1.b ),
    .B(\ins1.a ),
    .X(\ins1.co )
  );
  sky130_fd_sc_hd__xor2_1 _1_ (
    .A(\ins1.b ),
    .B(\ins1.a ),
    .X(\ins1.sum )
  );
  sky130_fd_sc_hd__and2_0 _2_ (
    .A(\ins2.b ),
    .B(\ins2.a ),
    .X(\ins2.co )
  );
  sky130_fd_sc_hd__xor2_1 _3_ (
    .A(\ins2.b ),
    .B(\ins2.a ),
    .X(\ins2.sum )
  );
  sky130_fd_sc_hd__lpflow_inputiso1p_1 _4_ (
    .A(\ins3.b ),
    .SLEEP(\ins3.a ),
    .X(\ins3.y )
  );
  assign \ins3.a  = c1;
  assign \ins3.b  = c2;
  assign co = \ins3.y ;
  assign \ins2.a  = cin;
  assign \ins2.b  = s1;
  assign c2 = \ins2.co ;
  assign sum = \ins2.sum ;
  assign \ins1.a  = a;
  assign \ins1.b  = b;
  assign c1 = \ins1.co ;
  assign s1 = \ins1.sum ;
endmodule