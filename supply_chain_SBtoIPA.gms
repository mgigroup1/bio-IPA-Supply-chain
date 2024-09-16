* Sets definition
Set i "biomass supply counties" /i1*i25/;
Set j "potential CSP sites" /j1*j5/;
Set k "potential biorefinery sites" /k1*k19/;
Set l "facility capacity levels" /small, medium, large/;
Set s "Scenarios" /s1*s100/; 



* Parameters definition
Scalar tv1 /0.10/;
Scalar tv2 /0.09/;
Scalar tf1 /3.19/;
Scalar tf2 /6.60/;

 Scalar P /930000/;
 Scalar Q /186000/

Scalar sop /17.9/;


* q SUGAR REQUIRED AMOUNT
* IPA 136500  
*****

Parameter
   sl_v(l) ' CS Variable capital investment costs l in cases'
        / small  3.40
          medium  2.72
          large  2.34 /

   sl_f(l) ' CS Fixed capital investment l in cases'
        / small   4258000
          medium  6300000
          large  11542600/

   el_v(l) ' BIO Variable capital investment costs l in cases'
        / small   28.06
          medium  18.93 
          large  13.85 /
          
   el_co_v(l)
        / small   5.54
          medium  3.57 
          large  2.47 /


   el_f(l) ' BIO Fixed capital investment l in cases'
        / small   360890.31
          medium  697666.66
          large  1208960.13/;



*0.23 smaller
 Scalar lambdas0 /184000/;
 Scalar lambdas1 /322000/;
 Scalar lambdas2 /764750/;
 Scalar lambdas3 /966000/;



Scalar lambdae0 /6000/;
Scalar lambdae1 /18000/;
Scalar lambdae2 /45000/;
Scalar lambdae3 /90000/;




Scalar alpha /0.137/;
Scalar beta /0.05/;
Scalar eop /48/;

Parameter bi(i) "biomass supply in each county";
Parameter dij(i, j) "distance from county i to CSP site j";
Parameter djk(j, k) "distance from CSP site j to biorefinery site k";



Parameter

* gc : CO2 capture fixed capital cost
gc(k)/
k1 16.5,
k2 28.5,
k3 22.5,
k4 16.5,
k5 13.5,
k6 12.15,
k7 19.5,
k8 26.85,
k9 18,
k10 16.2,
k11 33.75,
k12 25.5,
k13 19.8,
k14 17.925,
k15 15.75,
k16 14.25,
k17 19.35,
k18 16.5,
k19 28.5/


* gk : CO2 amount corresponding to the ethanol plant size
gk(k) /
k1 47794.11765,
k2 124264.7059,
k3 86029.41176,
k4 47794.11765,
k5 28676.47059,
k6 20073.52941,
k7 66911.76471,
k8 113750,
k9 57352.94118,
k10 45882.35294,
k11 157720.5882,
k12 105147.0588,
k13 68823.52941,
k14 56875,
k15 43014.70588,
k16 33455.88235,
k17 65955.88235,
k18 47794.11765,
k19 124264.7059 /


ci(i)/
i1 52.7,
i2 52.7,
i3 52.7,
i4 52.7,
i5 52.7,
i6 52.7,
i7 50.6,
i8 50.6,
i9 50.6,
i10 50.6,
i11 50.6,
i12 50.6,
i13 50.6,
i14 50.6,
i15 50.6,
i16 52.7,
i17 52.7,
i18 52.7,
i19 52.7,
i20 52.7,
i21 52.7,
i22 52.7,
i23 52.7,
i24 52.7,
i25 52.7
/

 bi(i) /
i1 326000,
i2 29500,
i3 54500,
i4 641000,
i5 57700,
i6 92300,
i7 179000,
i8 1119000,
i9 527000,
i10 64200,
i11 875000,
i12 1140000,
i13 27500,
i14 2673000,
i15 29300,
i16 76800,
i17 573000,
i18 239000,
i19 51400,
i20 116000,
i21 133000,
i22 213000,
i23 178000,
i24 972000,
i25 69400
/

* djk(j, k)

dij(i, j) /
    i1.j1 317.4322127, i1.j2 235.8839279, i1.j3 346.2026553, i1.j4 176.3159043, i1.j5 41.80990967,
    i2.j1 375.4333529, i2.j2 300.5551244, i2.j3 406.2207822, i2.j4 244.1374665, i2.j5 75.03998257,
    i3.j1 335.9445346, i3.j2 261.3435775, i3.j3 366.6335465, i3.j4 206.3200627, i3.j5 64.73902509,
    i4.j1 363.4328736, i4.j2 279.0859232, i4.j3 391.4986098, i4.j4 216.4666668, i4.j5 24.2707687,
    i5.j1 402.2793998, i5.j2 324.9929821, i5.j3 432.5650956, i5.j4 266.3496896, i5.j5 82.6702668,
    i6.j1 291.7895441, i6.j2 222.7396793, i6.j3 323.4054642, i6.j4 174.1941048, i6.j5 94.44367182,
    i7.j1 117.2606045, i7.j2 83.15227932, i7.j3 150.5574401, i7.j4 102.5045619, i7.j5 240.412931,
    i8.j1 97.54423441, i8.j2 19.87250953, i8.j3 120.6888672, i8.j4 70.91912359, i8.j5 255.1849531,
    i9.j1 111.810933, i9.j2 210.9714392, i9.j3 95.493868, i9.j4 279.0341938, i9.j5 458.8830034,
    i10.j1 77.32793189, i10.j2 88.28811686, i10.j3 112.6972113, i10.j4 132.9851, i10.j5 286.1679669,
    i11.j1 67.35346012, i11.j2 167.8247244, i11.j3 68.3721621, i11.j4 233.601314, i11.j5 406.8007593,
    i12.j1 51.73562412, i12.j2 54.66759312, i12.j3 79.7845772, i12.j4 117.7323042, i12.j5 297.2957905,
    i13.j1 49.86959707, i13.j2 140.6876939, i13.j3 72.07294932, i13.j4 202.5058797, i13.j5 368.5358069,
    i14.j1 19.36842695, i14.j2 90.80230113, i14.j3 54.78306912, i14.j4 155.2370154, i14.j5 331.7798873,
    i15.j1 39.27861031, i15.j2 120.7250217, i15.j3 70.01351595, i15.j4 181.5006512, i15.j5 347.9640185,
    i16.j1 391.7306367, i16.j2 301.3680739, i16.j3 417.4636109, i16.j4 234.8950977, i16.j5 46.27527332,
    i17.j1 316.3592444, i17.j2 226.4282069, i17.j3 342.0824751, i17.j4 160.9664643, i17.j5 36.88031164,
    i18.j1 209.1304348, i18.j2 118.7406884, i18.j3 234.0182996, i18.j4 57.72098408, i18.j5 142.5354145,
    i19.j1 165.290233, i19.j2 95.09393279, i19.j3  195.0002103, i19.j4 70.61729711, i19.j5 185.0588411,
    i20.j1 259.0441782, i20.j2 175.6537009, i20.j3 286.8907175, i20.j4 117.2829279, i20.j5 90.13617433,
    i21.j1 248.0265933, i21.j2 155.285026, i21.j3 272.11664, i21.j4 89.31909423, i21.j5 107.7081409,
    i22.j1 286.1292946, i22.j2 195.7745764, i22.j3 311.5417587, i22.j4 130.5947307, i22.j5 66.38128801,
    i23.j1 221.7894437, i23.j2 124.0991489, i23.j3 242.6359569, i23.j4 55.40776067, i23.j5 145.7928096,
    i24.j1 161.4418074, i24.j2 65.34391618, i24.j3 183.0811881, i24.j4 13.17186852, i24.j5 196.5646698,
    i25.j1 344.545939, i25.j2 249.7704888, i25.j3 367.7463554, i25.j4 181.568934, i25.j5 52.22352439
/



djk(j, k) /
    j1.k1 67.35346, j1.k2 499.9511, j1.k3 324.9918, j1.k4 284.1142, j1.k5 249.0044, j1.k6 459.1382, j1.k7 339.5633, j1.k8 487.6792, j1.k9 170.6211, j1.k10 484.0473,
    j1.k11 464.4133, j1.k12 398.597, j1.k13 453.5851, j1.k14 407.4113, j1.k15 533.8106, j1.k16 446.7273, j1.k17 447.7552, j1.k18 575.6859, j1.k19 482.0569,
    j2.k1 167.8247, j2.k2 430.5412, j2.k3 246.6955, j2.k4 195.3166, j2.k5 157.5248, j2.k6 360.6208, j2.k7 248.2376, j2.k8 401.096, j2.k9 84.2434, j2.k10 400.7755,
    j2.k11 388.3962, j2.k12 319.2363, j2.k13 360.5425, j2.k14 316.3018, j2.k15 457.3696, j2.k16 356.2387, j2.k17 366.2955, j2.k18 510.9627, j2.k19 394.189,
    j3.k1 68.37216, j3.k2 532.2341, j3.k3 354.7136, j3.k4 310.1853, j3.k5 273.7141, j3.k6 479.1514, j3.k7 364.7046, j3.k8 515.2205, j3.k9 196.4039, j3.k10 512.7791,
    j3.k11 495.1825, j3.k12 428.3157, j3.k13 478.0043, j3.k14 432.8109, j3.k15 564.6094, j3.k16 472.4996, j3.k17 476.9912, j3.k18 608.9134, j3.k19 509.0681,
    j4.k1 233.6013, j4.k2 375.4882, j4.k3 189.3067, j4.k4 131.3248, j4.k5 92.55758, j4.k6 291.9685, j4.k7 181.6669, j4.k8 335.9784, j4.k9 40.65608, j4.k10 337.4621,
    j4.k11 329.6191, j4.k12 259.2865, j4.k13 292.6587, j4.k14 249.3753, j4.k15 397.6079, j4.k16 289.4184, j4.k17 304.3582, j4.k18 457.9702, j4.k19 328.4538,
    j5.k1 406.8008, j5.k2 193.7289, j5.k3 50.4185, j5.k4 65.9669, j5.k5 104.4031, j5.k6 150.1772, j5.k7 27.32033, j5.k8 139.8852, j5.k9 179.1896, j5.k10 140.6507,
    j5.k11 140.3399, j5.k12 71.56472, j5.k13 111.4218, j5.k14 62.7235, j5.k15 204.5056, j5.k16 99.34873, j5.k17 109.136, j5.k18 277.9382, j5.k19 133.5163
/;


Scalar temp /1/;
Scalar PS /1/;

* Variables definition
Variable Z,Z1;
*,Z2;
Positive Variable
    fij(i, j),
    fjk(j, k),
    CB, CT, CS, CE,
    Tv, Tf, So, Sc, Eo, Ec, Eco,dof_jk(j),CB_CO2,CT_CO2,CS_CO2,CE_CO2,
     pj(j), pjl(j, l) , qkl(k, l), qk(k) ;
*obj_load,in_propensity,out_propensity,    

Binary Variable
    ojl_s(j, l),
    oj_s(j),
    okl_e(k, l),
    oi_s(i),
    ok_e(k);


* Equations definition
Equation
    obj,
    obj1,
    
    def_CB,
    def_CT,
    def_CS,
    def_CE,
    eq_sum_fij,
    eq_fij_bi(i),
    eq_fjk_gk(k),

    def_Tv,
    def_Tf,
    def_So,
    def_Sc,
    def_Eo,
    def_Ec,
    def_Eco,
    
    eq_sum_pjl,
    eq_sum_qk_l,
    eq_pj_l(j),
    eq_fjk_pjl(j),
    eq_pj_oj_small_lb(j),
    eq_pj_oj_medium_lb(j),
    eq_pj_oj_large_lb(j),
    eq_pj_oj_small_ub(j),
    eq_pj_oj_medium_ub(j),
    eq_pj_oj_large_ub(j),
    
    eq_qk_oe_small_lb(k),
    eq_qk_oe_medium_lb(k),
    eq_qk_oe_large_lb(k),
    eq_qk_oe_small_ub(k),
    eq_qk_oe_medium_ub(k),
    eq_qk_oe_large_ub(k),    

    eq_ok_l(k),
    eq_qk_l(k),
    eq_fjk_qk_l(k),
    eq_ojl_s(j),
    
    def_CT_CO2,
    def_CB_CO2,
    def_CS_CO2,
    def_CE_CO2,

    eq_fij_fjk_bal(j),
    eq_pj(j);

    

Scalar DT /1/;
Scalar delta /1.5/;


* Biomass supply cost
def_CB.. CB =e= sum((i, j), ci(i)*fij(i, j));
def_CB_CO2.. CB_CO2 =e= sum((i, j), 0.079510118*fij(i, j))*1000;
eq_sum_fij.. sum((i, j), fij(i, j)) =e= Q*5*delta;
eq_fij_bi(i).. sum(j, fij(i, j)) =l= bi(i)*DT ; 
* 0.23
eq_fjk_gk(k).. sum(j, fjk(j, k)) =l= gk(k);



* Biomass transportation cost
def_CT.. CT =e= Tv + Tf;
def_CT_CO2.. CT_CO2 =e= sum((i, j), 0.358457513*fij(i, j)*dij(i, j)) + sum((j, k), 0.358457513*fjk(j, k)*djk(j, k));
def_Tv.. Tv =e= sum((i, j), tv1*fij(i, j)*dij(i, j)) + sum((j, k), tv2*fjk(j, k)*djk(j, k));
def_Tf.. Tf =e= sum((i, j), tf1*fij(i, j)) + sum((j, k), tf2*fjk(j, k));

* Centralized storage and pre-processing site cost
def_CS.. CS =e= So + Sc;
def_CS_CO2.. CS_CO2 =e= sum((j, l), pjl(j, l)*0.189865883)*1000;
def_So.. So =e= sop*Q*5*delta;
def_Sc.. Sc =e= alpha*(sum((j, l), sl_v(l)*pjl(j, l)) + sum((j, l), sl_f(l)*ojl_s(j,l)));

eq_sum_pjl.. sum((j, l), pjl(j, l)) =e= Q*5*delta;
eq_pj_oj_small_lb(j).. lambdas0  *ojl_s(j,'small') =l= pjl(j, 'small');
eq_pj_oj_small_ub(j).. pjl(j, 'small') =l= lambdas1* ojl_s(j,'small');

eq_pj_oj_medium_lb(j).. lambdas1 *ojl_s(j,'medium') =l= pjl(j, 'medium');
eq_pj_oj_medium_ub(j).. pjl(j, 'medium') =l= lambdas2  *ojl_s(j,'medium');

eq_pj_oj_large_lb(j).. lambdas2* ojl_s(j,'large') =l= pjl(j, 'large');
eq_pj_oj_large_ub(j).. pjl(j, 'large') =l= lambdas3 *ojl_s(j,'large');

* eq_pj(l).. sum(l, pjl(j, l)) =e= pj(j);
eq_pj(j).. sum(l, pjl(j, l)) =e= pj(j);
eq_ojl_s(j).. sum(l, ojl_s(j, l)) =e= oj_s(j);
*
eq_pj_l(j).. sum(i, fij(i, j)) =e= sum(l, pjl(j, l));
eq_fjk_pjl(j).. sum(k, fjk(j, k)) =l= sum(l, pjl(j, l)*(1 - beta));

* Biorefinery cost
def_CE.. CE =e= Eo + Ec + Eco;
def_CE_CO2.. CE_CO2 =e= 1000*sum((k, l), el_co_v(l)*qkl(k, l))  - 0.88*1000*  (sum((k, l),  1.333 * qkl(k, l)) );

def_Eo.. Eo =e= eop*Q*delta;
def_Ec.. Ec =e= alpha*(sum((k, l), el_v(l)*qkl(k, l)) + sum((k, l), el_f(l)*okl_e(k,l)));
* co2 cost
def_Eco.. Eco =e= (sum((k, l), 8.58* 1.3 * qkl(k, l)) + sum((k, l),  gc(k) * okl_e(k,l)));

eq_qk_oe_small_lb(k).. lambdae0*okl_e(k,'small') =l= qkl(k, 'small');
eq_qk_oe_small_ub(k).. qkl(k, 'small') =l= lambdae1*okl_e(k,'small');

eq_qk_oe_medium_lb(k).. lambdae1*okl_e(k,'medium') =l= qkl(k, 'medium');
eq_qk_oe_medium_ub(k).. qkl(k, 'medium') =l= lambdae2*okl_e(k,'medium');

eq_qk_oe_large_lb(k).. lambdae2*okl_e(k,'large') =l= qkl(k, 'large');
eq_qk_oe_large_ub(k).. qkl(k, 'large') =l= lambdae3*okl_e(k,'large');


eq_sum_qk_l.. sum((k, l), qkl(k, l)) =e= Q*delta;
*
eq_ok_l(k).. sum(l, okl_e(k, l)) =e= ok_e(k);
eq_qk_l(k).. sum(l, qkl(k, l)) =e= qk(k);
*
eq_fjk_qk_l(k).. sum(j, fjk(j, k)) =e= sum(l, qkl(k, l));

* site to site balance
eq_fij_fjk_bal(j).. sum(i,fij(i,j))/5 =e= sum(k,fjk(j,k)) ;


Positive Variable
cost_IPA ,cost_CO2;
Equation
eq_cost_IPA,eq_co2_IPA;


obj.. Z =e=  CB_CO2 + CT_CO2 + CS_CO2 + CE_CO2;
obj1.. Z1 =e=  CB + CT + CS + CE;
eq_co2_IPA.. cost_CO2 =e= Z / (Q*delta*1000);
eq_cost_IPA.. cost_IPA =e= Z1 / (Q*delta);

* CB_CO2+CT_CO2+CS_CO2+CE_CO2

* Model definition and solution
Model bio_opt /all/;
Option solver = BARON;
Solve bio_opt using MINLP minimizing Z1;


* Display results
Display Z.l, CB.l, CT.l, CS.l, CE.l,cost_IPA.l ,CB_CO2.l,CT_CO2.l, CS_CO2.l,CE_CO2.l,cost_CO2.l;


Execute_unload 'all_variables_flex3.gdx',  fij, fjk, CB_CO2, CT_CO2, CS_CO2, CE_CO2, cost_CO2, CB,CT, CS,CE ,cost_IPA  , oj_s, oi_s, ok_e ;

