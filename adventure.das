require strings
require fio
require random

var seed : int4


//
// advtext.h
//

var idx1 : int[MAXLOC] = [[int[MAXLOC] 
    3;160;304;367;448;
    507;564;689;855;980;
    1086;1333;1385;1567;1694;
    2033;2083;2224;2332;2415;
    2472;2496;2525;2647;2770;
    2894;2963;3029;3125;3164;
    3274;3282;3314;3490;3547;
    4023;4151;4229;4335;4477;
    4574;4733;4793;4853;4913;
    4973;4986;4999;5012;5072;
    5132;5192;5252;5312;5325;
    5385;5398;5581;5594;5691;
    5863;5977;6045;6058;6270;
    6398;6557;6892;7187;7242;
    7302;7447;7512;7532;7688;
    7744;7803;7896;7953;8065;
    8125;8139;8153;8213;8273;
    8287;8301;8361;8516;8589;
    8643;8818;9043;9096;9154;
    9364;9499;9698;9944;10149;
    10283;10357;10504;10769;10834;
    10888;11197;11262;11328;11802;
    12278;12486;12553;12884;12899;
    13652;14160;14346;14427;14494;
    14561;14628;14722;14818;15026;
    15215;16519;16749;16859;16996;
    17196;17263;17328;17395;17462;
    17527;17592;17657;17724;17789
    ]]

var idx2 : int[MAXLOC] = [[int[MAXLOC] 
    3;35;62;89;110;
    131;152;184;209;237;
    265;292;344;372;404;
    433;483;519;554;586;
    644;668;697;736;760;
    784;853;919;1015;1054;
    1164;1172;1204;1224;1281;
    1310;1339;1417;1523;1554;
    1651;1692;1752;1812;1872;
    1932;1946;1960;1974;2034;
    2094;2154;2214;2274;2288;
    2348;2362;2390;2404;2501;
    2538;2575;2643;2657;2689;
    2817;2850;2889;2914;2969;
    3029;3077;3142;3162;3214;
    3270;3329;3422;3479;3591;
    3651;3665;3679;3739;3799;
    3813;3827;3887;3918;3991;
    4045;4091;4117;4170;4228;
    4265;4290;4319;4347;4370;
    4398;4424;4452;4479;4544;
    4598;4623;4688;4715;4745;
    4775;4809;4876;4902;4917;
    4954;4991;5024;5057;5124;
    5191;5258;5291;5316;5345;
    5386;5421;5457;5491;5528;
    5556;5623;5688;5755;5822;
    5887;5952;6017;6084;6149
    ]]

var idx3 : int[MAXOBJ] = [[int[MAXOBJ] 
    3;63;153;208;274;
    355;436;524;636;770;
    833;889;981;1110;1200;
    1377;1469;1473;1477;1522;
    1640;1668;1693;1709;2151;
    2315;2335;2424;2518;2541;
    2557;2780;3020;3196;3250;
    3451;3643;3674;3821;3924;
    3952;3956;3960;3964;3968;
    3972;3976;3980;3984;3988;
    4062;4112;4166;4223;4269;
    4329;4444;4509;4733;4812;
    4891;4957;5072;5120;
    0;0;0;0;0;0;0;0;0;0;
    0;0;0;0;0;0;0;0;0;0;
    0;0;0;0;0;0;0;0;0;0;
    0;0;0;0;0;0
    ]]

var idx4 : int[MAXMSG] = [[int[MAXMSG] 
    4;490;542;660;721;
    765;790;815;847;889;
    964;1078;1124;1153;1199;
    1306;1381;1432;1470;1585;
    1636;1801;1837;1896;1929;
    1955;2065;2118;2157;2185;
    2281;2303;2323;2376;2403;
    2432;2463;2492;2525;2550;
    2576;2671;2692;2703;2740;
    2795;2860;2891;2952;2984;
    3038;4351;4366;4383;4390;
    4421;4509;4633;4683;4805;
    4833;4843;4884;5056;5418;
    5822;5915;5947;5979;6145;
    6172;6209;6243;6373;6411;
    6506;6549;6597;6622;6636;
    6651;6822;7026;7159;7276;
    7417;7477;7490;7503;7516;
    7529;7598;7671;7718;7770;
    7813;7885;7925;7959;8005;
    8095;8138;8202;8275;8319;
    8353;8411;8450;8487;8513;
    8539;8593;8670;8735;8838;
    8909;8979;9096;9164;9234;
    9302;9372;9433;9496;9697;
    9793;9930;9997;10222;10359;
    10478;10608;10817;11091;11307;
    11399;11579;11623;11682;11754;
    11790;11846;13246;13283;13339;
    13412;13453;13476;13516;13601;
    13657;13725;13788;13855;13976;
    13990;14120;14261;14405;14474;
    14515;14565;14802;14942;15013;
    15072;15133;15191;15317;15361;
    15393;15425;15455;15516;15551;
    15578;15625;15692;15747;15920;
    15963;15983;16053;16247;16284;
    16419;16747;16819;16902;17003;
    17056;17128;17250;17378;17421;
    17457;17518;17616;17685;17795;
    17820
    ]]


//
// advcave.h
//

var cave0   <- [{int 2002000;2044000;2029000;3003000;3012000;3019000;3043000;4005000;4013000;4014000;4046000;4030000;5006000;5045000;5043000;8063000}]
var cave1   <- [{int 1002000;1012000;1007000;1043000;1045000;1030000;5006000;5045000;5046000}]
var cave2   <- [{int 1003000;1011000;1032000;1044000;11062000;33065000;79005000;79014000}]
var cave3   <- [{int 1004000;1012000;1045000;5006000;5043000;5044000;5029000;7005000;7046000;7030000;8063000}]
var cave4   <- [{int 4009000;4043000;4030000;5006050;5007050;5045050;6006000;5044000;5046000}]
var cave5   <- [{int 1002000;1045000;4009000;4043000;4044000;4030000;5006000;5046000}]
var cave6   <- [{int 1012000;4004000;4045000;5006000;5043000;5044000;8005000;8015000;8016000;8046000;595060000;595014000;595030000}]
var cave7   <- [{int 5006000;5043000;5046000;5044000;1012000;7004000;7013000;7045000;9003303;9019303;9030303;593003000}]
var cave8   <- [{int 8011303;8029303;593011000;10017000;10018000;10019000;10044000;14031000;11051000}]
var cave9   <- [{int 9011000;9020000;9021000;9043000;11019000;11022000;11044000;11051000;14031000}]
var cave10  <- [{int 8063303;9064000;10017000;10018000;10023000;10024000;10043000;12025000;12019000;12029000;12044000;3062000;14031000}]
var cave11  <- [{int 8063303;9064000;11030000;11043000;11051000;13019000;13029000;13044000;14031000}]
var cave12  <- [{int 8063303;9064000;11051000;12025000;12043000;14023000;14031000;14044000}]
var cave13  <- [{int 8063303;9064000;11051000;13023000;13043000;20030150;20031150;20034150;15030000;16033000;16044000}]
var cave14  <- [{int 18036000;18046000;17007000;17038000;17044000;19010000;19030000;19045000;22029150;22031150;22034150;22035150;22023150;22043150;14029000;34055000}]
var cave15  <- [{int 14001000}]
var cave16  <- [{int 15038000;15043000;596039312;21007412;597041412;597042412;597044412;597069412;27041000}]
var cave17  <- [{int 15038000;15011000;15045000}]
var cave18  <- [{int 15010000;15029000;15043000;28045311;28036311;29046311;29037311;30044311;30007311;32045000;74049035;32049211;74066000}]
var cave19  <- [{int 001000}]
var cave20  <- [{int 001000}]
var cave21  <- [{int 15001000}]
var cave22  <- [{int 67043000;67042000;68044000;68061000;25030000;25031000;648052000}]
var cave23  <- [{int 67029000;67011000}]
var cave24  <- [{int 23029000;23011000;31056724;26056000}]
var cave25  <- [{int 88001000}]
var cave26  <- [{int 596039312;21007412;597041412;597042412;597043412;597069412;17041000;40045000;41044000}]
var cave27  <- [{int 19038000;19011000;19046000;33045000;33055000;36030000;36052000}]
var cave28  <- [{int 19038000;19011000;19045000}]
var cave29  <- [{int 19038000;19011000;19043000;62044000;62029000}]
var cave30  <- [{int 89001524;90001000}]
var cave31  <- [{int 19001000}]
var cave32  <- [{int 3065000;28046000;34043000;34053000;34054000;35044000;302071159;100071000}]
var cave33  <- [{int 33030000;33055000;15029000}]
var cave34  <- [{int 33043000;33055000;20039000}]
var cave35  <- [{int 37043000;37017000;28029000;28052000;39044000;65070000}]
var cave36  <- [{int 36044000;36017000;38030000;38031000;38056000}]
var cave37  <- [{int 37056000;37029000;37011000;595060000;595014000;595030000;595004000;595005000}]
var cave38  <- [{int 36043000;36023000;64030000;64052000;64058000;65070000}]
var cave39  <- [{int 41001000}]
var cave40  <- [{int 42046000;42029000;42023000;42056000;27043000;59045000;60044000;60017000}]
var cave41  <- [{int 41029000;42045000;43043000;45046000;80044000}]
var cave42  <- [{int 42044000;44046000;45043000}]
var cave43  <- [{int 43043000;48030000;50046000;82045000}]
var cave44  <- [{int 42044000;43045000;46043000;47046000;87029000;87030000}]
var cave45  <- [{int 45044000;45011000}]
var cave46  <- [{int 45043000;45011000}]
var cave47  <- [{int 44029000;44011000}]
var cave48  <- [{int 50043000;51044000}]
var cave49  <- [{int 44043000;49044000;51030000;52046000}]
var cave50  <- [{int 49044000;50029000;52043000;53046000}]
var cave51  <- [{int 50044000;51043000;52046000;53029000;55045000;86030000}]
var cave52  <- [{int 51044000;52045000;54046000}]
var cave53  <- [{int 53044000;53011000}]
var cave54  <- [{int 52044000;55045000;56030000;57043000}]
var cave55  <- [{int 55029000;55011000}]
var cave56  <- [{int 13030000;13056000;55044000;58046000;83045000;84043000}]
var cave57  <- [{int 57043000;57011000}]
var cave58  <- [{int 27001000}]
var cave59  <- [{int 41043000;41029000;41017000;61044000;62045000;62030000;62052000}]
var cave60  <- [{int 60043000;62045000;107046100}]
var cave61  <- [{int 60044000;63045000;30043000;61046000}]
var cave62  <- [{int 62046000;62011000}]
var cave63  <- [{int 39029000;39056000;39059000;65044000;65070000;103045000;103074000;106043000}]
var cave64  <- [{int 64043000;66044000;556046080;68061000;556029080;70029050;39029000;556045060;72045075;71045000;556030080;106030000}]
var cave65  <- [{int 65047000;67044000;556046080;77025000;96043000;556050050;97072000}]
var cave66  <- [{int 66043000;23044000;23042000;24030000;24031000}]
var cave67  <- [{int 23046000;69029000;69056000;65045000}]
var cave68  <- [{int 68030000;68061000;120046331;119046000;109045000;113075000}]
var cave69  <- [{int 71045000;65030000;65023000;111046000}]
var cave70  <- [{int 65048000;70046000;110045000}]
var cave71  <- [{int 65070000;118049000;73045000;97048000;97072000}]
var cave72  <- [{int 72046000;72017000;72011000}]
var cave73  <- [{int 19043000;120044331;121044000;75030000}]
var cave74  <- [{int 76046000;77045000}]
var cave75  <- [{int 75045000}]
var cave76  <- [{int 75043000;78044000;66045000;66017000}]
var cave77  <- [{int 77046000}]
var cave78  <- [{int 3001000}]
var cave79  <- [{int 42045000;80044000;80046000;81043000}]
var cave80  <- [{int 80044000;80011000}]
var cave81  <- [{int 44046000;44011000}]
var cave82  <- [{int 57046000;84043000;85044000}]
var cave83  <- [{int 57045000;83044000;114050000}]
var cave84  <- [{int 83043000;83011000}]
var cave85  <- [{int 52029000;52011000}]
var cave86  <- [{int 45029000;45030000}]
var cave87  <- [{int 25030000;25056000;25043000;20039000;92044000;92027000}]
var cave88  <- [{int 25001000}]
var cave89  <- [{int 23001000}]
var cave90  <- [{int 95045000;95073000;95023000;72030000;72056000}]
var cave91  <- [{int 88046000;93043000;94045000}]
var cave92  <- [{int 92046000;92027000;92011000}]
var cave93  <- [{int 92046000;92027000;92023000;95045309;95003309;95073309;611045000}]
var cave94  <- [{int 94046000;94011000;92027000;91044000}]
var cave95  <- [{int 66044000;66011000}]
var cave96  <- [{int 66048000;72044000;72017000;98029000;98045000;98073000}]
var cave97  <- [{int 97046000;97072000;99044000}]
var cave98  <- [{int 98050000;98073000;301043000;301023000;100043000}]
var cave99  <- [{int 301044000;301023000;301011000;99044000;302071159;33071000;101047000;101022000}]
var cave100 <- [{int 100046000;100071000;100011000}]
var cave101 <- [{int 103030000;103074000;103011000}]
var cave102 <- [{int 102029000;102038000;104030000;618046114;619046115;64046000}]
var cave103 <- [{int 103029000;103074000;105030000}]
var cave104 <- [{int 104029000;104011000;103074000}]
var cave105 <- [{int 64029000;65044000;108043000}]
var cave106 <- [{int 131046000;132049000;133047000;134048000;135029000;136050000;137043000;138044000;139045000;61030000}]
var cave107 <- [{int 556043095;556045095;556046095;556047095;556048095;556049095;556050095;556029095;556030095;106043000;626044000}]
var cave108 <- [{int 69046000;113045000;113075000}]
var cave109 <- [{int 71044000;20039000}]
var cave110 <- [{int 70045000;50030040;50039040;50056040;53030050;45030000}]
var cave111 <- [{int 131049000;132045000;133043000;134050000;135048000;136047000;137044000;138030000;139029000;140046000}]
var cave112 <- [{int 109046000;109011000;109109000}]
var cave113 <- [{int 84048000}]
var cave114 <- [{int 116049000}]
var cave115 <- [{int 115047000;593030000}]
var cave116 <- [{int 118049000;660041233;660042233;660069233;660047233;661041332;303041000;21039332;596039000}]
var cave117 <- [{int 72030000;117029000}]
var cave118 <- [{int 69045000;69011000;653043000;65307000}]
var cave119 <- [{int 69045000;74043000}]
var cave120 <- [{int 74043000;74011000;653045000;653007000}]
var cave121 <- [{int 123047000;660041233;660042233;660069233;660049233;303041000;596039000;124077000;126028000;129040000}]
var cave122 <- [{int 122044000;124043000;124077000;126028000;129040000}]
var cave123 <- [{int 123044000;125047000;125036000;128048000;128037000;128030000;126028000;129040000}]
var cave124 <- [{int 124046000;124077000;126045000;126028000;127043000;127017000}]
var cave125 <- [{int 125046000;125023000;125011000;124077000;610030000;610039000}]
var cave126 <- [{int 125044000;125011000;125017000;124077000;126028000}]
var cave127 <- [{int 124045000;124029000;124077000;129046000;129030000;129040000;126028000}]
var cave128 <- [{int 128044000;128029000;124077000;130043000;130019000;130040000;130003000;126028000}]
var cave129 <- [{int 129044000;124077000;126028000}]
var cave130 <- [{int 107044000;132048000;133050000;134049000;135047000;136029000;137030000;138045000;139046000;112043000}]
var cave131 <- [{int 107050000;131029000;133045000;134046000;135044000;136049000;137047000;138043000;139030000;112048000}]
var cave132 <- [{int 107029000;131030000;132044000;134047000;135049000;136043000;137045000;138050000;139048000;112046000}]
var cave133 <- [{int 107047000;131045000;132050000;133048000;135043000;136030000;137046000;138029000;139044000;112049000}]
var cave134 <- [{int 107045000;131048000;132030000;133046000;134043000;136044000;137049000;138047000;139050000;112029000}]
var cave135 <- [{int 107043000;131044000;132029000;133049000;134030000;135046000;137050000;138048000;139047000;112045000}]
var cave136 <- [{int 107048000;131047000;132046000;133030000;134029000;135050000;136045000;138049000;139043000;112044000}]
var cave137 <- [{int 107030000;131043000;132047000;133029000;134044000;135045000;136046000;137048000;139049000;112050000}]
var cave138 <- [{int 107049000;131050000;132043000;133044000;134045000;135030000;136048000;137029000;138046000;112047000}]
var cave139 <- [{int 112045000;112011000}]


var cave <- [{auto
cave0  ;
cave1  ;
cave2  ;
cave3  ;
cave4  ;
cave5  ;
cave6  ;
cave7  ;
cave8  ;
cave9  ;
cave10 ;
cave11 ;
cave12 ;
cave13 ;
cave14 ;
cave15 ;
cave16 ;
cave17 ;
cave18 ;
cave19 ;
cave20 ;
cave21 ;
cave22 ;
cave23 ;
cave24 ;
cave25 ;
cave26 ;
cave27 ;
cave28 ;
cave29 ;
cave30 ;
cave31 ;
cave32 ;
cave33 ;
cave34 ;
cave35 ;
cave36 ;
cave37 ;
cave38 ;
cave39 ;
cave40 ;
cave41 ;
cave42 ;
cave43 ;
cave44 ;
cave45 ;
cave46 ;
cave47 ;
cave48 ;
cave49 ;
cave50 ;
cave51 ;
cave52 ;
cave53 ;
cave54 ;
cave55 ;
cave56 ;
cave57 ;
cave58 ;
cave59 ;
cave60 ;
cave61 ;
cave62 ;
cave63 ;
cave64 ;
cave65 ;
cave66 ;
cave67 ;
cave68 ;
cave69 ;
cave70 ;
cave71 ;
cave72 ;
cave73 ;
cave74 ;
cave75 ;
cave76 ;
cave77 ;
cave78 ;
cave79 ;
cave80 ;
cave81 ;
cave82 ;
cave83 ;
cave84 ;
cave85 ;
cave86 ;
cave87 ;
cave88 ;
cave89 ;
cave90 ;
cave91 ;
cave92 ;
cave93 ;
cave94 ;
cave95 ;
cave96 ;
cave97 ;
cave98 ;
cave99 ;
cave100;
cave101;
cave102;
cave103;
cave104;
cave105;
cave106;
cave107;
cave108;
cave109;
cave110;
cave111;
cave112;
cave113;
cave114;
cave115;
cave116;
cave117;
cave118;
cave119;
cave120;
cave121;
cave122;
cave123;
cave124;
cave125;
cave126;
cave127;
cave128;
cave129;
cave130;
cave131;
cave132;
cave133;
cave134;
cave135;
cave136;
cave137;
cave138;
cave139}]








//
// advent.h
//

let MAXOBJ = 100        /* max # of objects in cave    */
let MAXWC = 306        /* max # of adventure words    */
let MAXLOC = 140        /* max # of cave locations    */
let WORDSIZE = 20    /* max # of chars in commands    */
let MAXMSG = 201        /* max # of long location descr    */

let MAXTRAV = (16+1)    /* max # of travel directions from loc    */
            /* +1 for terminator travel[x].tdest=-1    */
let DWARFMAX = 7    /* max # of nasty dwarves    */
let MAXDIE = 3        /* max # of deaths before close    */
let MAXTRS = 79        /* max # of            */

/*
    Object definitions
*/
let KEYS = 1
let LAMP = 2
let GRATE = 3
let CAGE = 4
let ROD = 5
let ROD2 = 6
let STEPS = 7
let BIRD = 8
let DOOR = 9
let PILLOW = 10
let SNAKE = 11
let FISSURE = 12
let TABLET = 13
let CLAM = 14
let OYSTER = 15
let MAGAZINE = 16
let DWARF = 17
let KNIFE = 18
let FOOD = 19
let BOTTLE = 20
let WATER = 21
let OIL = 22
let MIRROR = 23
let PLANT = 24
let PLANT2 = 25
let AXE = 28
let DRAGON = 31
let CHASM = 32
let TROLL = 33
let TROLL2 = 34
let BEAR = 35
let MESSAGE = 36
let VEND = 38
let BATTERIES = 39
let NUGGET = 50
let COINS = 54
let CHEST = 55
let EGGS = 56
let TRIDENT = 57
let VASE = 58
let EMERALD = 59
let PYRAMID = 60
let PEARL = 61
let RUG = 62
let SPICES = 63
let CHAIN = 64

/*
    Verb definitions
*/
let NULLX = 21
let BACK = 8
let LOOK = 57
let CAVE = 67
let ENTRANCE = 64
let DEPRESSION = 63

/*
    Action verb definitions
*/
let TAKE = 1
let DROP = 2
let SAY = 3
let OPEN = 4
let NOTHING = 5
let LOCK = 6
let ON = 7
let OFF = 8
let WAVE = 9
let CALM = 10
let WALK = 11
let KILL = 12
let POUR = 13
let EAT = 14
let DRINK = 15
let RUB = 16
let THROW = 17
let QUIT = 18
let FIND = 19
let INVENTORY = 20
let FEED = 21
let FILL = 22
let BLAST = 23
let SCORE = 24
let FOO = 25
let BRIEF = 26
let READ = 27
let BREAK = 28
let WAKE = 29
let SUSPEND = 30
let HOURS = 31
let LOG = 32
let LOAD = 33

/*
    BIT mapping of "cond" array which indicates location status
*/
let LIGHT = 1
let WATOIL = 2
let LIQUID = 4
let NOPIRAT = 8
let HINTC = 16
let HINTB = 32
let HINTS = 64
let HINTM = 128
let HINT = 240

/*
    Structure definitions
*/
struct wac 
    aword : string
    acode : int

struct trav
    tdest : int
    tverb : int
    tcond : int



//
// adword.h
//

/*
    Adventure vocabulary & encryption
*/
let wc = [[wac
    aword = "spelunker today", acode = 1016;
    aword = "?", acode =   3051;
    aword = "above", acode =  29;
    aword = "abra", acode =   3050;
    aword = "abracadabra", acode =  3050;
    aword = "across", acode =  42;
    aword = "ascend", acode =  29;
    aword = "attack", acode =  2012;
    aword = "awkward", acode =  26;
    aword = "axe", acode =   1028;
    aword = "back", acode =   8;
    aword = "barren", acode =  40;
    aword = "bars", acode =   1052;
    aword = "batteries", acode =  1039;
    aword = "battery", acode =  1039;
    aword = "beans", acode =  1024;
    aword = "bear", acode =   1035;
    aword = "bed", acode =   16;
    aword = "bedquilt", acode =  70;
    aword = "bird", acode =   1008;
    aword = "blast", acode =  2023;
    aword = "blowup", acode =  2023;
    aword = "bottle", acode =  1020;
    aword = "box", acode =   1055;
    aword = "break", acode =  2028;
    aword = "brief", acode =  2026;
    aword = "broken", acode =  54;
    aword = "building", acode =  12;
    aword = "cage", acode =   1004;
    aword = "calm", acode =   2010;
    aword = "canyon", acode =  25;
    aword = "capture", acode =  2001;
    aword = "carpet", acode =  1040;
    aword = "carry", acode =  2001;
    aword = "catch", acode =  2001;
    aword = "cave", acode =   67;
    aword = "cavern", acode =  73;
    aword = "chain", acode =  1064;
    aword = "chant", acode =  2003;
    aword = "chasm", acode =  1032;
    aword = "chest", acode =  1055;
    aword = "clam", acode =   1014;
    aword = "climb", acode =  56;
    aword = "close", acode =  2006;
    aword = "cobblestone", acode =  18;
    aword = "coins", acode =  1054;
    aword = "continue", acode =  2011;
    aword = "crack", acode =  33;
    aword = "crap", acode =   3079;
    aword = "crawl", acode =  17;
    aword = "cross", acode =  69;
    aword = "d", acode =   30;
    aword = "damn", acode =   3079;
    aword = "damnit", acode =  3079;
    aword = "dark", acode =   22;
    aword = "debris", acode =  51;
    aword = "depression", acode =  63;
    aword = "descend", acode =  30;
    aword = "describe", acode =  57;
    aword = "detonate", acode =  2023;
    aword = "devour", acode =  2014;
    aword = "diamonds", acode =  1051;
    aword = "dig", acode =   3066;
    aword = "discard", acode =  2002;
    aword = "disturb", acode =  2029;
    aword = "dome", acode =   35;
    aword = "door", acode =   1009;
    aword = "down", acode =   30;
    aword = "downstream", acode =  4;
    aword = "downward", acode =  30;
    aword = "dragon", acode =  1031;
    aword = "drawing", acode =  1029;
    aword = "drink", acode =  2015;
    aword = "drop", acode =   2002;
    aword = "dump", acode =   2002;
    aword = "dwarf", acode =  1017;
    aword = "dwarves", acode =  1017;
    aword = "e", acode =   43;
    aword = "east", acode =   43;
    aword = "eat", acode =   2014;
    aword = "egg", acode =   1056;
    aword = "eggs", acode =   1056;
    aword = "emerald", acode =  1059;
    aword = "enter", acode =  3;
    aword = "entrance", acode =  64;
    aword = "examine", acode =  57;
    aword = "excavate", acode =  3066;
    aword = "exit", acode =   11;
    aword = "explore", acode =  2011;
    aword = "extinguish", acode =  2008;
    aword = "fee", acode =   2025;
    aword = "fee", acode =   3001;
    aword = "feed", acode =   2021;
    aword = "fie", acode =   2025;
    aword = "fie", acode =   3002;
    aword = "fight", acode =  2012;
    aword = "figure", acode =  1027;
    aword = "fill", acode =   2022;
    aword = "find", acode =   2019;
    aword = "fissure", acode =  1012;
    aword = "floor", acode =  58;
    aword = "foe", acode =   2025;
    aword = "foe", acode =   3003;
    aword = "follow", acode =  2011;
    aword = "foo", acode =   2025;
    aword = "foo", acode =   3004;
    aword = "food", acode =   1019;
    aword = "forest", acode =  6;
    aword = "fork", acode =   77;
    aword = "forward", acode =  7;
    aword = "free", acode =   2002;
    aword = "fuck", acode =   3079;
    aword = "fum", acode =   2025;
    aword = "fum", acode =   3005;
    aword = "get", acode =   2001;
    aword = "geyser", acode =  1037;
    aword = "giant", acode =  27;
    aword = "go", acode =   2011;
    aword = "gold", acode =   1050;
    aword = "goto", acode =   2011;
    aword = "grate", acode =  1003;
    aword = "gully", acode =  13;
    aword = "h2o", acode =   1021;
    aword = "hall", acode =   38;
    aword = "headlamp", acode =  1002;
    aword = "help", acode =   3051;
    aword = "hill", acode =   2;
    aword = "hit", acode =   2012;
    aword = "hocus", acode =  3050;
    aword = "hole", acode =   52;
    aword = "hours", acode =  2031;
    aword = "house", acode =  12;
    aword = "i", acode =   2020;
    aword = "ignite", acode =  2023;
    aword = "in", acode =   19;
    aword = "info", acode =   3142;
    aword = "information", acode =  3142;
    aword = "inside", acode =  19;
    aword = "inventory", acode =  2020;
    aword = "inward", acode =  19;
    aword = "issue", acode =  1016;
    aword = "jar", acode =   1020;
    aword = "jewel", acode =  1053;
    aword = "jewelry", acode =  1053;
    aword = "jewels", acode =  1053;
    aword = "jump", acode =   39;
    aword = "keep", acode =   2001;
    aword = "key", acode =   1001;
    aword = "keys", acode =   1001;
    aword = "kill", acode =   2012;
    aword = "knife", acode =  1018;
    aword = "knives", acode =  1018;
    aword = "l", acode =   57;
    aword = "lamp", acode =   1002;
    aword = "lantern", acode =  1002;
    aword = "leave", acode =  11;
    aword = "left", acode =   36;
    aword = "light", acode =  2007;
    aword = "lite", acode =   2007;
    aword = "load", acode =   2033;
    aword = "lock", acode =   2006;
    aword = "log", acode =   2032;
    aword = "look", acode =   57;
    aword = "lost", acode =   3068;
    aword = "low", acode =   24;
    aword = "machine", acode =  1038;
    aword = "magazine", acode =  1016;
    aword = "main", acode =   76;
    aword = "message", acode =  1036;
    aword = "ming", acode =   1058;
    aword = "mirror", acode =  1023;
    aword = "mist", acode =   3069;
    aword = "moss", acode =   1040;
    aword = "mumble", acode =  2003;
    aword = "n", acode =   45;
    aword = "ne", acode =   47;
    aword = "nest", acode =   1056;
    aword = "north", acode =  45;
    aword = "nothing", acode =  2005;
    aword = "nowhere", acode =  21;
    aword = "nugget", acode =  1050;
    aword = "null", acode =   21;
    aword = "nw", acode =   50;
    aword = "off", acode =   2008;
    aword = "office", acode =  76;
    aword = "oil", acode =   1022;
    aword = "on", acode =   2007;
    aword = "onward", acode =  7;
    aword = "open", acode =   2004;
    aword = "opensesame", acode =  3050;
    aword = "oriental", acode =  72;
    aword = "out", acode =   11;
    aword = "outdoors", acode =  32;
    aword = "outside", acode =  11;
    aword = "over", acode =   41;
    aword = "oyster", acode =  1015;
    aword = "passage", acode =  23;
    aword = "pause", acode =  2030;
    aword = "pearl", acode =  1061;
    aword = "persian", acode =  1062;
    aword = "peruse", acode =  2027;
    aword = "pillow", acode =  1010;
    aword = "pirate", acode =  1030;
    aword = "pit", acode =   31;
    aword = "placate", acode =  2010;
    aword = "plant", acode =  1024;
    aword = "plant", acode =  1025;
    aword = "platinum", acode =  1060;
    aword = "plover", acode =  71;
    aword = "plugh", acode =  65;
    aword = "pocus", acode =  3050;
    aword = "pottery", acode =  1058;
    aword = "pour", acode =   2013;
    aword = "proceed", acode =  2011;
    aword = "pyramid", acode =  1060;
    aword = "quit", acode =   2018;
    aword = "rations", acode =  1019;
    aword = "read", acode =   2027;
    aword = "release", acode =  2002;
    aword = "reservoir", acode =  75;
    aword = "restore", acode =  2033;
    aword = "retreat", acode =  8;
    aword = "return", acode =  8;
    aword = "right", acode =  37;
    aword = "road", acode =   2;
    aword = "rock", acode =   15;
    aword = "rod", acode =   1005;
    aword = "rod", acode =   1006;
    aword = "room", acode =   59;
    aword = "rub", acode =   2016;
    aword = "rug", acode =   1062;
    aword = "run", acode =   2011;
    aword = "s", acode =   46;
    aword = "save", acode =   2030;
    aword = "say", acode =   2003;
    aword = "score", acode =  2024;
    aword = "se", acode =   48;
    aword = "secret", acode =  66;
    aword = "sesame", acode =  3050;
    aword = "shadow", acode =  1027;
    aword = "shake", acode =  2009;
    aword = "shard", acode =  1058;
    aword = "shatter", acode =  2028;
    aword = "shazam", acode =  3050;
    aword = "shell", acode =  74;
    aword = "shit", acode =   3079;
    aword = "silver", acode =  1052;
    aword = "sing", acode =   2003;
    aword = "slab", acode =   61;
    aword = "slit", acode =   60;
    aword = "smash", acode =  2028;
    aword = "snake", acode =  1011;
    aword = "south", acode =  46;
    aword = "spelunker", acode =  1016;
    aword = "spice", acode =  1063;
    aword = "spices", acode =  1063;
    aword = "stairs", acode =  10;
    aword = "stalactite", acode =  1026;
    aword = "steal", acode =  2001;
    aword = "steps", acode =  1007;
    aword = "steps", acode =  34;
    aword = "stop", acode =   3139;
    aword = "stream", acode =  14;
    aword = "strike", acode =  2012;
    aword = "surface", acode =  20;
    aword = "suspend", acode =  2030;
    aword = "sw", acode =   49;
    aword = "swim", acode =   3147;
    aword = "swing", acode =  2009;
    aword = "tablet", acode =  1013;
    aword = "take", acode =   2001;
    aword = "tame", acode =   2010;
    aword = "throw", acode =  2017;
    aword = "toss", acode =   2017;
    aword = "tote", acode =   2001;
    aword = "touch", acode =  57;
    aword = "travel", acode =  2011;
    aword = "treasure", acode =  1055;
    aword = "tree", acode =   3064;
    aword = "trees", acode =  3064;
    aword = "trident", acode =  1057;
    aword = "troll", acode =  1033;
    aword = "troll", acode =  1034;
    aword = "tunnel", acode =  23;
    aword = "turn", acode =   2011;
    aword = "u", acode =   29;
    aword = "unlock", acode =  2004;
    aword = "up", acode =   29;
    aword = "upstream", acode =  4;
    aword = "upward", acode =  29;
    aword = "utter", acode =  2003;
    aword = "valley", acode =  9;
    aword = "vase", acode =   1058;
    aword = "velvet", acode =  1010;
    aword = "vending", acode =  1038;
    aword = "view", acode =   28;
    aword = "volcano", acode =  1037;
    aword = "w", acode =   44;
    aword = "wake", acode =   2029;
    aword = "walk", acode =   2011;
    aword = "wall", acode =   53;
    aword = "water", acode =  1021;
    aword = "wave", acode =   2009;
    aword = "west", acode =   44;
    aword = "xyzzy", acode =  62;
    aword = "y2", acode =   55
]]



//
// advdef.h
//


/*
    Database variables
*/
var travel : trav[MAXTRAV];
var fd1 = null; var fd2 = null; var fd3 = null; var fd4 = null
var    actmsg : int[32]        /* action messages    */

/*
    English variables
*/
var verb = 0; var object = 0; var motion = 0
var word1 = ""; var word2 = ""


/*
    Play variables
*/

var turns = 0
var loc = 0; var oldloc = 0; var oldloc2 = 0; var newloc = 0 /* location variables */
var cond : int[MAXLOC]      /* location status    */
var    place : int[MAXOBJ]        /* object location    */
var    fixed : int[MAXOBJ]        /* second object loc    */
var    visited : int[MAXLOC]    /* >0 if has been here    */
var    prop : int[MAXOBJ];        /* status of object    */
var    tally = 0; var tally2 = 0;        /* item counts        */
var    limit = 0            /* time limit        */
var    lmwarn = 0            /* lamp warning flag    */
var    wzdark =0; var closing =0; var closed = 0    /* game state flags    */
var    holding = 0        /* count of held items    */
var    detail = 0            /* LOOK count        */
var    knfloc = 0            /* knife location    */
var    clock =0; var clock2 =0; var panic = 0    /* timing variables    */
var    dloc : int[DWARFMAX]        /* dwarf locations    */
var    dflag = 0            /* dwarf flag        */
var    dseen : int[DWARFMAX]    /* dwarf seen flag    */
var    odloc : int[DWARFMAX]    /* dwarf old locations    */
var    daltloc = 0        /* alternate appearance    */
var    dkill = 0            /* dwarves killed    */
var    chloc =0; var chloc2 = 0        /* chest locations    */
var    bonus = 0            /* to pass to end    */
var    numdie = 0            /* number of deaths    */
var    object1 = 0        /* to help varrans.    */
var    gaveup = 0            /* 1 if he quit early    */
var    foobar = 0            /* fie fie foe foo...    */
var    saveflg = 0        /* if game being saved    */
var    dbugflg = 0        /* if game is in debug    */

var    lastglob = 0        /* to get space req.    */




//
// database.c
//

/*
    Routine to fill travel array for a given location
*/
def gettrav(loc)

    //print("gettrav loc={loc}\n")        //!!!

    //var atrav <- cave[loc - 1]
    //print("gettrav loc={loc} {atrav}\n")        //!!!

    for i in range(0, MAXTRAV)
        if i < length(cave[loc - 1])
            var t = cave[loc - 1][i]
            travel[i].tcond = (t % 1000)
            t /= 1000
            travel[i].tverb = (t % 1000)
            t /= 1000
            travel[i].tdest = (t % 1000)
        elif (i == length(cave[loc - 1]))
            travel[i].tcond = 0
            travel[i].tverb = 0
            travel[i].tdest = -1
        else
            travel[i].tcond = 0
            travel[i].tverb = 0
            travel[i].tdest = 0

    if (dbugflg != 0)
        for i in range(0, MAXTRAV)
            print("cave[{loc}] = {travel[i].tdest} {travel[i].tverb} {travel[i].tcond}\n")

/*
    Function to scan a file up to a specified
    point and either print or return a string.
*/
def rdupto(fdi, uptoc, print; var str : string&)
    while true
        var c = [[int[1] 0]]
        _builtin_read(fdi, c, 1)
        if (c[0] == 0)
            return 0
        if (c[0] == uptoc)
            return 1
        let s = build_string() <| $ (var writer)
            write_char(writer, c[0])
        if (print == 1)
            print("{s}")
        else
            str = str + s
    return 1


/*
    Function to read a file skipping
    a given character a specified number
    of times, with or without repositioning
    the file.
*/
def rdskip(fdi, skipc, n, rewind)

    //print("rdskip {skipc} {n} {rewind}")      //!!!

    var nn = n
    if (rewind != 0)
        fseek(fdi, int64(0), 0)
    while (nn != 0)
        while true
            var c = [[int[1] 0]]
            _builtin_read(fdi, c, 1)
            if (c[0] == skipc)
                break
            if (c[0] == 0)
                bug(32);
        nn--


/*
    Routine to request a yes or no answer to a question.
*/
def yes(msg1, msg2, msg3)
    if (msg1 != 0)
        rspeak(msg1);
    print(">")
    var answer = fgets(fstdin())
    if (character_at(to_lower(answer), 0) == 'n')
        if (msg3 != 0)
            rspeak(msg3);
        return 0
    if (msg2 != 0)
        rspeak(msg2)
    return 1

/*
    Print a location description from "advent4.txt"
*/
def rspeak(msg)
    if (msg == 54)
        print("ok.\n")
    else
        if (dbugflg != 0)
            print("Seek loc msg #{msg} @ {idx4[msg]}\n")
        fseek(fd4, int64(idx4[msg - 1]), 0);
        var str : string = ""
        rdupto(fd4, '#', 1, str)

/*
    Print an item message for a given state from "advent3.txt"
*/
def pspeak(item, state)

    //print("pspeak {item} {state} {idx3[item - 1]}")       //!!!

    fseek(fd3, int64(idx3[item - 1]), 0);
    rdskip(fd3, '/', state+2, 0);
    var str : string = ""
    rdupto(fd3, '/', 1, str);


/*
    Print a long location description from "advent1.txt"
*/
def desclg(loc)
    fseek(fd1, int64(idx1[loc - 1]), 0);
    var str : string = ""
    rdupto(fd1, '#', 1, str);

/*
    Print a short location description from "advent2.txt"
*/
def descsh(loc)
    fseek(fd2, int64(idx2[loc - 1]), 0);
    var str : string = ""
    rdupto(fd2, '#', 1, str);

/*
    look-up vocabulary word in lex-ordered table.  words may have
    two entries with different codes. if minimum acceptable value
    = 0, then return minimum of different codes.  last word CANNOT
    have two entries(due to binary sort).
    word is the word to look up.
    val  is the minimum acceptable value,
        if != 0 return %1000
*/
def vocab(word, val)
    var v1 = 0; var v2 = 0

    v1 = binary(word, wc, MAXWC)
    if (v1 >= 0)
        v2 = binary(word, wc, MAXWC-1)
        if (v2 < 0)
            v2 = v1
        if (val == 0)
            return(wc[v1].acode < wc[v2].acode ? wc[v1].acode : wc[v2].acode);
        if (val <= wc[v1].acode)
            return(wc[v1].acode % 1000);
        elif (val <= wc[v2].acode)
            return(wc[v2].acode % 1000);
        else
            return(-1);
    else
        return(-1);


def binary(w, wctable, maxwc)
    var lo = 0; var mid = 0; var hi = 0; var check = 0

    lo = 0;
    hi = maxwc - 1;
    while (lo <= hi)
        mid = (lo + hi) / 2;
        //if ((check = strcmp(w, wctable[mid].aword)) < 0)
        if (w < wctable[mid].aword)
            hi = mid - 1;
        elif (w > wctable[mid].aword)
            lo = mid + 1;
        else
            return(mid);
    return -1;



/*
    Utility Routines
*/

/*
    Routine to test for darkness
*/
def dark()
    return((cond[loc] & LIGHT) == 0 && (prop[LAMP] == 0 || !here(LAMP)));

/*
    Routine to tell if an item is present.
*/
def here(item)
    return(place[item] == loc || toting(item));

/*
    Routine to tell if an item is being carried.
*/
def toting(item)
    return(place[item] == -1);

/*
    Routine to tell if a location causes
    a forced move.
*/
def forced(atloc)
    return(cond[atloc] == 2);

/*
    Routine true x% of the time.
*/
def pct(x)
    return(random_int(seed) % 100 < x);

/*
    Routine to tell if player is on
    either side of a two sided object.
*/
def at(item)
    return(place[item] == loc || fixed[item] == loc);

/*
    Routine to destroy an object
*/
def dstroy(obj)
    move(obj, 0);

/*
    Routine to move an object
*/
def move(obj, where1)
    var from = 0;

    from = (obj<MAXOBJ) ? place[obj] : fixed[obj];
    if (from>0 && from<=300)
        carry(obj, from);
    drop(obj, where1);

/*
    Juggle an object
    currently a no-op
*/
def juggle(loc)
    var dummy = 0

/*
    Routine to carry an object
*/
def carry(obj, where1)
    if (obj<MAXOBJ)
        if (place[obj] == -1)
            return
        place[obj]=-1;
        ++holding;

/*
    Routine to drop an object
*/
def drop(obj, where1)
    if (obj<MAXOBJ)
        if (place[obj] == -1)
            --holding
        place[obj]=where1
    else
        fixed[obj-MAXOBJ]=where1

/*
    routine to move an object and return a
    value used to set the negated prop values
    for the repository.
*/
def put(obj, where1, pval)
    move(obj, where1);
    return((-1)-pval);

/*
    Routine to check for presence
    of dwarves..
*/
def dcheck()
    var i = 0

    for i in range(1, DWARFMAX-1)
        if (dloc[i] == loc)
            return i
    return 0

/*
    Determine liquid in the bottle
*/
def liq()
    var i = 0; var j = 0
    i=prop[BOTTLE];
    j=-1-i;
    return(liq2(i>j ? i : j));

/*
    Determine liquid at a location
*/
def liqloc(loc)
    if ((cond[loc] & LIQUID) != 0)
        return(liq2(cond[loc] & WATOIL));
    else
        return(liq2(1));

/*
    Convert  0 to WATER
         1 to nothing
         2 to OIL
*/
def liq2(pbottle)
    return((1-pbottle)*WATER+(pbottle>>1)*(WATER+OIL));

/*
    Fatal error routine
*/
def bug(n)
    print("Fatal error number {n}\n")
    unsafe
        fio::exit(-1)



//
// english.c
//

/*
    Analyze a two word sentence
*/
def english()

    var msg = ""
    var type1 = 0; var type2 = 0; var val1 = 0; var val2 = 0

    verb = 0; object = 0; motion = 0
    type2 = -1; val2 = -1
    type1 = -1; val1 = -1
    msg = "bad grammar..."

    getwords();

    if (length(word1) == 0)
        return false  /* ignore whitespace */
    if (!analyze(word1, type1, val1)) /* check word1 */
        return false  /* didn't know it */

    if (type1 == 2 && val1 == SAY)
        verb = SAY; /* repeat word & act upon if.. */
        object = 1;
        return true

    if (length(word2) != 0)
        if (!analyze(word2, type2, val2))
            return false /* didn't know it */

    //print("type1={type1} type2={type2}\n")

    /* check his grammar */
    if ((type1 == 3) && (type2 == 3) && (val1 == 51) && (val2 == 51))
        outwords();
        return false
    elif (type1 == 3)
        rspeak(val1);
        return false
    elif (type2 == 3)
        rspeak(val2);
        return false
    elif (type1 == 0)
        if (type2 == 0)
            print("{msg}\n")
            return false
        else
            motion = val1;
    elif (type2 == 0)
        motion = val2;
    elif (type1 == 1)
        object = val1;
        if (type2 == 2)
            verb = val2;
        if (type2 == 1)
            print("{msg}\n")
            return false
    elif (type1 == 2)
        verb = val1;
        if (type2 == 1)
            object = val2;
        if (type2 == 2)
            print("{msg}\n")
            return false
    else
        bug(36);
    return true


/*
        Routine to analyze a word.
*/
def  analyze(word; var type1 : int&; var value : int&) //char *word; int *type, *value;
    var wordval = 0; var msg = 0;

    /* make sure I understand */
    wordval = vocab(word, 0)

    //print("word={word} wordval={wordval}\n")      //!!!

    if (wordval == -1)
        var rand = random_int(seed) % 3
        if rand == 0
            msg = 60;
        elif rand == 1
            msg = 61;
        else
            msg = 13;
        rspeak(msg);
        return false
    type1 = wordval/1000;
    value = wordval%1000;
    //print("type1={type1} value={value}\n")
    return true


/*
    retrieve input line (max 80 chars), convert to lower case
     & rescan for first two words (max. WORDSIZE-1 chars).
*/
def getwords()
    print(">")
    word1 = ""; word2 = "";
    var words = fgets(fstdin())
    words = to_lower(words)
    //sscanf(words, "%19s %19s", word1, word2);
    var sepPos = find(words, " ")
    if (sepPos == -1)
        word1 = strip(words)
    else
        word1 = strip(slice(words, 0, sepPos))
        word2 = strip(slice(words, sepPos, length(words)))
    if (dbugflg != 0)
        print("WORD1 = {word1}, WORD2 = {word2}\n");


/*
    output adventure word list (motion/0xxx & verb/2xxx) only
    6 words/line pausing at 20th line until keyboard active
*/
def outwords()
    var j = 0
    for i in range(0, MAXWC)
        if ((wc[i].acode < 1000) || ((wc[i].acode < 3000) && (wc[i].acode > 1999)))
            print("{wc[i].aword} ");
            j++
            if ((j == 6) || (i == MAXWC-1))
                j = 0;
                print("\n")




//
// itverb.c
//

/*
    Routines to process intransitive verbs
*/
def itverb()
    if verb == DROP || verb == SAY || verb == WAVE || verb == CALM || verb == RUB || verb == THROW || verb == FIND || verb == FEED || verb == BREAK || verb == WAKE
        needobj();
        
    elif verb ==  TAKE
        ivtake();
        
    elif verb == OPEN || verb == LOCK
        ivopen();
        
    elif verb == NOTHING
        rspeak(54);
        
    elif verb == ON || verb == OFF || verb == POUR
        trverb();
        
    elif verb == WALK
        actspk(verb);
        
    elif verb == KILL
        ivkill();
        
    elif verb == EAT
        iveat();
        
    elif verb == DRINK
        ivdrink();
        
    elif verb == QUIT
        ivquit();
        
    elif verb == FILL
        ivfill();
        
    elif verb == BLAST
        vblast();
        
    elif verb == SCORE
        score();
        
    elif verb == FOO
        ivfoo();
        
    elif verb == SUSPEND
        saveflg = 1;
        
    elif verb == INVENTORY
        inventory();
        
    //elif verb == LOAD
        //restore();
        
    else
        print("This intransitive not implemented yet\n")



/*
    CARRY, TAKE etc.
*/
def ivtake()
    var anobj = 0; var item = 0

    anobj = 0;
    for item in range(1, MAXOBJ)
        if(place[item]==loc) {
            if(anobj != 0) {
                needobj();
                return;
            }
            anobj = item;
        }
    if(anobj==0|| (dcheck() != 0 && dflag>=2)) {
        needobj();
        return;
    }
    object = anobj;
    vtake();



/*
    OPEN, LOCK, UNLOCK
*/
def ivopen()
    if(here(CLAM))
        object=CLAM;
    if(here(OYSTER))
        object=OYSTER;
    if(at(DOOR))
        object=DOOR;
    if(at(GRATE))
        object=GRATE;
    if(here(CHAIN)) {
        if(object != 0) {
            needobj();
            return;
        }
        object=CHAIN;
    }
    if(object==0) {
        rspeak(28);
        return;
    }
    vopen();


/*
    ATTACK, KILL etc
*/
def ivkill()
    object1 = 0;
    if(dcheck() != 0 && dflag >=2)
        object=DWARF;
    if(here(SNAKE))
        addobj(SNAKE);
    if(at(DRAGON) && prop[DRAGON]==0)
        addobj(DRAGON);
    if(at(TROLL))
        addobj(TROLL);
    if(here(BEAR) && prop[BEAR]==0)
        addobj(BEAR);
    if(object1 != 0) {
        needobj();
        return;
    }
    if(object != 0) {
        vkill();
        return;
    }
    if(here(BIRD) && verb!= THROW)
        object=BIRD;
    if(here(CLAM) || here(OYSTER))
        addobj(CLAM);
    if(object1 != 0) {
        needobj();
        return;
    }
    vkill();



/*
    EAT
*/
def iveat()

    if(!here(FOOD))
        needobj();
    else {
        object=FOOD;
        veat();
    }



/*
    DRINK
*/
def ivdrink()

    if(liqloc(loc) != WATER &&
      (liq()!= WATER || !here(BOTTLE)))
        needobj();
    else {
        object=WATER;
        vdrink();
    }


/*
    QUIT
*/
def ivquit()
    gaveup=yes(22,54,54)
    if(gaveup != 0)
        normend();


/*
    FILL
*/
def ivfill()
    if(!here(BOTTLE))
        needobj();
    else {
        object=BOTTLE;
        vfill();
    }


/*
    Handle fee fie foe foo...
*/
def ivfoo()
    var k = 0; var msg = 0
    k = vocab(word1,3000);
    msg = 42;
    if (foobar != 1-k)
        if (foobar != 0)
            msg = 151;
        rspeak(msg);
        return;
    
    foobar = k;
    if (k != 4)
        return;
    foobar = 0;
    if (place[EGGS] == 92 ||
       (toting(EGGS) && loc == 92)) {
        rspeak(msg);
        return;
    }
    if (place[EGGS] == 0 && place[TROLL] == 0 &&
        prop[TROLL] == 0)
        prop[TROLL] = 1;
    if (here(EGGS))
        k = 1;
    elif (loc == 92)
        k = 0;
    else
        k = 2;
    move(EGGS,92);
    pspeak(EGGS,k);
    return;



/*
    INVENTORY 
*/
def inventory()
    var msg = 0
    var i = 0

    msg = 98;
    for i in range(1, MAXOBJ)
        if (i==BEAR || !toting(i))
            continue;
        if (msg != 0)
            rspeak(99);
        msg = 0;
        pspeak(i,-1);

    if (toting(BEAR))
        msg = 141;
    if (msg != 0)
        rspeak(msg);


/*
    ensure uniqueness as objects are searched
    out for an intransitive verb
*/
def addobj(obj)
    if(object1 != 0)
        return;
    if(object != 0) {
        object1 = -1;
        return;
    }
    object = obj;






//
// verb.c
//

/*
    Routine to process a transitive verb
*/
def trverb()
    if (verb == CALM || verb == WALK || verb == QUIT || verb == SCORE || verb == FOO || verb == BRIEF || verb == SUSPEND || verb ==HOURS || verb == LOG)
        actspk(verb);
    elif (verb == TAKE)
        vtake();
    elif (verb == DROP)
        vdrop();
    elif (verb == OPEN || verb == LOCK)
        vopen();
    elif (verb == SAY)
        vsay();
    elif (verb == NOTHING)
        rspeak(54);
    elif (verb == ON)
        von();
    elif (verb == OFF)
        voff();
    elif (verb == WAVE)
        vwave();
    elif (verb == KILL)
        vkill();
    elif (verb == POUR)
        vpour();
    elif (verb == EAT)
        veat();
    elif (verb == DRINK)
        vdrink();
    elif (verb == RUB)
        if (object != LAMP)
            rspeak(76);
        else
            actspk(RUB);
    elif (verb == THROW)
        vthrow();
    elif (verb == FEED)
        vfeed();
    elif (verb == FIND || verb == INVENTORY)
        vfind();
    elif (verb == FILL)
        vfill();
    elif (verb == READ)
        vread();
    elif (verb == BLAST)
        vblast();
    elif (verb == BREAK)
        vbreak();
    elif (verb == WAKE)
        vwake();
    else
        print("This verb is not implemented yet.\n")



/*
    CARRY TAKE etc.
*/
def vtake()
    var msg = 0

    if (toting(object)) {
        actspk(verb);
        return;
    }
    /*
       special case objects and fixed objects
    */
    msg = 25;
    if (object == PLANT && prop[PLANT] <= 0)
        msg = 115;
    if (object == BEAR && prop[BEAR] == 1)
        msg = 169;
    if (object == CHAIN && prop[BEAR] != 0)
        msg = 170;
    if (fixed[object] != 0) {
        rspeak(msg);
        return;
    }
    /*
       special case for liquids
    */
    if (object == WATER || object == OIL)
        if (!here(BOTTLE) || liq() != object)
            object = BOTTLE;
            if (toting(BOTTLE)&&prop[BOTTLE] == 1)
                vfill()
                return

            if (prop[BOTTLE] != 1)
                msg = 105
            if (!toting(BOTTLE))
                msg = 104;
            rspeak(msg);
            return;

        object = BOTTLE;

    if (holding >= 7)
        rspeak(92);
        return;

    /*
       special case for bird.
    */
    if (object == BIRD && prop[BIRD] == 0) {
        if (toting(ROD)) {
            rspeak(26);
            return;
        }
        if (!toting(CAGE)) {
            rspeak(27);
            return;
        }
        prop[BIRD] = 1;
    }
    if ( (object == BIRD || object == CAGE) &&
        prop[BIRD] != 0)
        carry((BIRD+CAGE)-object,loc);
    carry(object,loc);
    /*
       handle liquid in bottle
    */
    var i = liq();
    if (object == BOTTLE && i != 0)
        place[i] = -1;
    rspeak(54);

/*
    DROP etc.
*/
def vdrop()
    var i = 0

    /*
       check for dynamite
    */
    if (toting(ROD2) && object == ROD && !toting(ROD))
        object = ROD2;
    if (!toting(object)){
        actspk(verb);
        return;
    }
    /*
       snake and bird
    */
    if (object == BIRD && here(SNAKE))
        rspeak(30);
        if (closed != 0)
            dwarfend();
        dstroy(SNAKE);
        prop[SNAKE] = -1;

    /*
       coins and vending machine
    */
    elif (object == COINS && here(VEND)) {
        dstroy(COINS);
        drop(BATTERIES,loc);
        pspeak(BATTERIES,0);
        return;
    }
    /*
       bird and dragon (ouch!!)
    */
    elif (object == BIRD && at(DRAGON) && prop[DRAGON] == 0)
        rspeak(154);
        dstroy(BIRD);
        prop[BIRD] = 0;
        if (place[SNAKE] != 0)
            ++tally2
        return;
    
    /*
       Bear and troll
    */
    if (object == BEAR && at(TROLL)) {
        rspeak(163);
        move(TROLL,0);
        move((TROLL+MAXOBJ),0);
        move(TROLL2,117);
        move((TROLL2+MAXOBJ),122);
        juggle(CHASM);
        prop[TROLL] = 2;
    }
    /*
       vase
    */
    elif (object == VASE)
        if (loc == 96)
            rspeak(54);
        else
            prop[VASE] = at(PILLOW) ? 0 : 2;
            pspeak(VASE,prop[VASE]+1);
            if (prop[VASE] != 0)
                fixed[VASE] = -1;
        
    
    /*
       handle liquid and bottle
    */
    i = liq();
    if (i == object)
        object = BOTTLE;
    if (object == BOTTLE && i != 0)
        place[i] = 0;
    /*
       handle bird and cage
    */
    if (object == CAGE && prop[BIRD] != 0)
        drop(BIRD,loc);
    if (object == BIRD)
        prop[BIRD] = 0;
    drop(object,loc);

/*
    LOCK, UNLOCK, OPEN, CLOSE etc.
*/
def vopen()
    var msg = 0; var oyclam = 0

    if (object == CLAM || object == OYSTER)
        oyclam = (object == OYSTER ? 1 : 0);
        if (verb == LOCK)
            msg = 61;
        elif (!toting(TRIDENT))
            msg = 122+oyclam;
        elif (toting(object))
            msg = 120+oyclam;
        else {
            msg = 124+oyclam;
            dstroy(CLAM);
            drop(OYSTER,loc);
            drop(PEARL,105);
        }
    elif object == DOOR
        msg = (prop[DOOR] == 1 ? 54 : 111);
    elif object ==  CAGE
        msg = 32;
    elif object ==  KEYS
        msg = 55;
    elif object ==  CHAIN
        if (!here(KEYS))
            msg = 31;
        elif (verb == LOCK)
            if (prop[CHAIN] != 0)
                msg = 34;
            elif (loc != 130)
                msg = 173;
            else
                prop[CHAIN] = 2;
                if (toting(CHAIN))
                    drop(CHAIN,loc);
                fixed[CHAIN] =  -1;
                msg = 172;
        else
            if (prop[BEAR] == 0)
                msg = 41;
            elif (prop[CHAIN] == 0)
                msg = 37;
            else
                prop[CHAIN] = 0;
                fixed[CHAIN] = 0;
                if (prop[BEAR] != 3)
                    prop[BEAR] = 2;
                fixed[BEAR] = 2-prop[BEAR];
                msg = 171;
    elif object ==  GRATE
        if (!here(KEYS))
            msg = 31;
        elif (closing != 0) {
            if (panic == 0) {
                clock2 = 15;
                ++panic;
            }
            msg = 130;
        }
        else {
            msg = 34+prop[GRATE];
            prop[GRATE] = (verb == LOCK ? 0 : 1);
            msg += 2*prop[GRATE];
        }
    else
        msg = 33;

    rspeak(msg);

/*
    SAY etc.
*/
def vsay()
    var wtype = 0; var wval = 0;

    analyze(word1, wtype, wval);
    print("Okay.\n{wval == SAY ? word2 : word1}\n")

/*
    ON etc.
*/
def von()
    if (!here(LAMP))
        actspk(verb);
    elif (limit<0)
        rspeak(184);
    else {
        prop[LAMP] = 1;
        rspeak(39);
        if (wzdark != 0) {
            wzdark = 0;
            describe();
        }
    }

/*
    OFF etc.
*/
def voff()
    if (!here(LAMP))
        actspk(verb);
    else {
        prop[LAMP] = 0;
        rspeak(40);
    }

/*
    WAVE etc.
*/
def vwave()
    if (!toting(object) &&
       (object != ROD || !toting(ROD2)))
        rspeak(29);
    elif (object != ROD || !at(FISSURE) ||
        !toting(object) || closing != 0)
        actspk(verb);
    else {
        prop[FISSURE] = 1-prop[FISSURE];
        pspeak(FISSURE,2-prop[FISSURE]);
    }

/*
    ATTACK, KILL etc.
*/
def vkill()
    var msg = 0
    var i = 0

    if object == BIRD
        if (closed != 0)
            msg = 137;
        else
            dstroy(BIRD);
            prop[BIRD] = 0;
            if (place[SNAKE] == 19)
                ++tally2
            msg = 45;

        
    elif object == 0
        msg = 44;
        
    elif object == CLAM || object == OYSTER
        msg = 150;
        
    elif object == SNAKE
        msg = 46;
        
    elif object == DWARF
        if (closed != 0)
            dwarfend();
        msg = 49;
        
    elif object == TROLL
        msg = 157;
        
    elif object == BEAR
        msg = 165+(prop[BEAR]+1)/2;
        
    elif object == DRAGON
        if (prop[DRAGON] != 0) {
            msg = 167;
            
        }
        if (yes(49,0,0) == 1)
            pspeak(DRAGON,1);
            prop[DRAGON] = 2;
            prop[RUG] = 0;
            move((DRAGON+MAXOBJ),-1);
            move((RUG+MAXOBJ),0);
            move(DRAGON,120);
            move(RUG,120);
            for i in range(1, MAXOBJ)
                if (place[i] == 119 || place[i] == 121)
                    move(i,120);
            newloc = 120;
            return;
    else
        actspk(verb);
        return;

    rspeak(msg);

/*
    POUR
*/
def vpour()
    if (object == BOTTLE || object == 0)
        object = liq();
    if (object == 0) {
        needobj();
        return;
    }
    if (!toting(object)) {
        actspk(verb);
        return;
    }
    if (object != OIL && object != WATER) {
        rspeak(78);
        return;
    }
    prop[BOTTLE] = 1;
    place[object] = 0;
    if (at(PLANT))
        if (object != WATER)
            rspeak(112);
        else
            pspeak(PLANT,prop[PLANT]+1);
            prop[PLANT] = (prop[PLANT]+2)%6;
            prop[PLANT2] = prop[PLANT]/2;
            describe();

    elif (at(DOOR))
        prop[DOOR] = (object == OIL ? 1 : 0);
        rspeak(113+prop[DOOR]);

    else
        rspeak(77);

/*
    EAT
*/
def veat()
    var msg = 0

    if object == FOOD
        dstroy(FOOD);
        msg = 72;
    elif object == FOOD || object ==  BIRD  || object == SNAKE  || object == CLAM  || object == OYSTER || object == DWARF  || object == DRAGON  || object == TROLL  || object == BEAR
        msg = 71;
    else
        actspk(verb);
        return;
    rspeak(msg);

/*
    DRINK
*/
def vdrink()
    if (object != WATER)
        rspeak(110);
    elif (liq() != WATER || !here(BOTTLE))
        actspk(verb);
    else {
        prop[BOTTLE] = 1;
        place[WATER] = 0;
        rspeak(74);
    }

/*
    THROW etc.
*/
def vthrow()
    var msg = 0
    var i = 0

    if (toting(ROD2) && object == ROD && !toting(ROD))
        object = ROD2;
    if (!toting(object)) {
        actspk(verb);
        return;
    }
    /*
       treasure to troll
    */
    if (at(TROLL) && object >= 50 && object<MAXOBJ) {
        rspeak(159);
        drop(object,0);
        move(TROLL,0);
        move((TROLL+MAXOBJ),0);
        drop(TROLL2,117);
        drop((TROLL2+MAXOBJ),122);
        juggle(CHASM);
        return;
    }
    /*
       feed the bears...
    */
    if (object == FOOD && here(BEAR)) {
        object = BEAR;
        vfeed();
        return;
    }
    /*
       if not axe, same as drop...
    */
    if (object != AXE) {
        vdrop();
        return;
    }
    /*
       AXE is THROWN
    */
    /*
       at a dwarf...
    */
    i = dcheck()
    if (i != 0)
        msg = 48;
        if (pct(33))
            dseen[i] = 0; dloc[i] = 0
            msg = 47;
            ++dkill;
            if (dkill == 1)
                msg = 149;
        
    
    /*
       at a dragon...
    */
    elif (at(DRAGON) && prop[DRAGON] == 0) 
        msg = 152;
    /*
       at the troll...
    */
    elif (at(TROLL))
        msg = 158;
    /*
       at the bear...
    */
    elif (here(BEAR) && prop[BEAR] == 0) {
        rspeak(164);
        drop(AXE,loc);
        fixed[AXE] = -1;
        prop[AXE] = 1;
        juggle(BEAR);
        return;
    }
    /*
       otherwise it is an attack
    */
    else {
        verb = KILL;
        object = 0;
        itverb();
        return;
    }
    /*
       handle the left over axe...
    */
    rspeak(msg);
    drop(AXE,loc);
    describe();

/*
    INVENTORY, FIND etc.
*/
def vfind()
    var msg = 0
    if (toting(object))
        msg = 24;
    elif (closed != 0)
        msg = 138;
    elif (dcheck() != 0 && dflag >= 2 && object == DWARF)
        msg = 94;
    elif (at(object) ||
        (liq() == object && here(BOTTLE)) ||
        object == liqloc(loc))
        msg = 94;
    else {
        actspk(verb);
        return;
    }
    rspeak(msg);

/*
    FILL
*/
def vfill()
    var msg = 0
    var i = 0

    if object == BOTTLE
        if (liq() != 0)
            msg = 105;
        elif (liqloc(loc) == 0)
            msg = 106;
        else
            prop[BOTTLE] = cond[loc] & WATOIL;
            i = liq();
            if (toting(BOTTLE))
                place[i] = -1;
            msg = (i == OIL ? 108 : 107);
        
    if object == VASE
        if (liqloc(loc) == 0) {
            msg = 144;
        }
        elif (!toting(VASE)) {
            msg = 29;
        }
        else
            rspeak(145);
            vdrop();
            return;
    else
        msg = 29;

    rspeak(msg);

/*
    FEED
*/
def vfeed()
    var msg = 0

    if object == BIRD
        msg = 100;
    elif object == DWARF
        if (!here(FOOD)) {
            actspk(verb);
            return;
        }
        ++dflag;
        msg = 103;
    elif object == BEAR
        if (!here(FOOD))
            if (prop[BEAR] == 0)
                msg = 102;
            elif (prop[BEAR] == 3)
                msg = 110;
            else
                actspk(verb);
                return;
            
        
        dstroy(FOOD);
        prop[BEAR] = 1;
        fixed[AXE] = 0;
        prop[AXE] = 0;
        msg = 168;
    elif object == DRAGON
        msg = (prop[DRAGON] != 0 ? 110 : 102);
    elif object == TROLL
        msg = 182;
    elif object == SNAKE
        if (closed != 0 || !here(BIRD)) {
            msg = 102;
        }
        else
            msg = 101;
            dstroy(BIRD);
            prop[BIRD] = 0;
            ++tally2;
    else
        msg = 14;

    rspeak(msg);

/*
    READ etc.
*/
def vread()
    var msg = 0

    msg = 0;
    if (dark())
        print("I see no {probj(object)} here.\n")
        return;
    
    if object == MAGAZINE
        msg = 190;
        
    elif object == TABLET
        msg = 196;
        
    elif object == MESSAGE
        msg = 191;
        
    elif object == OYSTER
        if (toting(OYSTER) && closed != 0)
            yes(192,193,54);
            return;

    if (msg != 0)
        rspeak(msg);
    else
        actspk(verb);

/*
    BLAST etc.
*/
def vblast()
    if (prop[ROD2] < 0 || closed == 0)
        actspk(verb);
    else
        bonus = 133;
        if (loc == 115)
            bonus = 134;
        if (here(ROD2))
            bonus = 135;
        rspeak(bonus);
        normend();
    

/*
    BREAK etc.
*/
def vbreak()
    var msg = 0
    if (object == MIRROR) {
        msg = 148;
        if (closed != 0) {
            rspeak(197);
            dwarfend();
        }
    }
    elif (object == VASE && prop[VASE] == 0)
        msg = 198;
        if (toting(VASE))
            drop(VASE,loc);
        prop[VASE] = 2;
        fixed[VASE] = -1;
    
    else {
        actspk(verb);
        return;
    }
    rspeak(msg);

/*
    WAKE etc.
*/
def vwake()
    if (object != DWARF || closed == 0)
        actspk(verb);
    else {
        rspeak(199);
        dwarfend();
    }

/*
    Routine to speak default verb message
*/
def actspk(verb)
    if (verb<1 || verb>31)
        bug(39);
    var i = actmsg[verb];
    if (i != 0)
        rspeak(i);

/*
    Routine to indicate no reasonable
    object for verb found.  Used mostly by
    intransitive verbs.
*/
def needobj()
    var wtype = 0; var wval = 0

    analyze(word1, wtype, wval);
    print("{wtype == 2 ? word1 : word2} what?\n")




//
// turn.c
//

/*
    Routine to take 1 turn
*/
def turn()
    var i = 0
    /*
        if closing, then he can't leave except via
        the main office.
    */
    if (newloc < 9 && newloc != 0 && closing != 0)
        rspeak(130)
        newloc = loc
        if (panic == 0)
            clock2 = 15
        panic = 1

    /*
        see if a dwarf has seen him and has come
        from where he wants to go.
    */
    if (newloc != loc && !forced(loc) && (cond[loc] & NOPIRAT)  ==  0)
        for i in range(1, DWARFMAX-1)
            if (odloc[i] == newloc && dseen[i] != 0)
                newloc  =  loc
                rspeak(2)
                break

    dwarves()    /* & special dwarf(pirate who steals)    */

    /* added by BDS C conversion */
    if (loc != newloc)
        ++turns
        loc = newloc

        /* check for death */
        if (loc == 0)
            death()
            return

        /* check for forced move */
        if (forced (loc))
            describe()
            domove()
            return

        /* check for wandering in dark */
        if (wzdark != 0 && dark() && pct(35))
            rspeak(23)
            oldloc2 = loc
            death()
            return

        /* describe his situation */
        describe()
        if (!dark())
            ++visited[loc]
            descitem()


    if (closed != 0)
        if (prop[OYSTER] < 0 && toting (OYSTER))
            pspeak(OYSTER, 1)
        for i in range(1, MAXOBJ + 1)
            if (toting (i) && prop[i] < 0)
                prop[i] = -1-prop[i]

    wzdark = dark() ? 1 : 0
    if (knfloc > 0 && knfloc != loc)
        knfloc  =  0

    if (stimer() != 0)    /* as the grains of sand slip by    */
        return

    while (!english())    /* retrieve player instructions    */
        var dummy = 0

    if (dbugflg != 0)
        print("loc = {loc}, verb = {verb}, object = {object}, motion = {motion}\n")

    if (motion != 0)        /* execute player instructions    */
        domove()
    elif (object != 0)
        doobj()
    else
        itverb()


/*
    Routine to describe current location
*/
def describe()
    if (toting(BEAR))
        rspeak(141)
    if (dark())
        rspeak(16)
    elif (visited[loc] != 0)
        descsh(loc)
    else
        desclg(loc)
    if (loc == 33 && pct(25) && closing == 0)
        rspeak(8)

/*
    Routine to describe visible items
*/
def descitem()
    var i = 0; var state = 0

    for i in range(1, MAXOBJ)
        if (at(i))
            if (i == STEPS && toting(NUGGET))
                continue
            if (prop[i]<0)
                if (closed != 0)
                    continue
                else
                    prop[i] = 0;
                    if (i == RUG || i == CHAIN)
                        ++prop[i]
                    --tally
            if (i == STEPS && loc == fixed[STEPS])
                state = 1;
            else
                state = prop[i];
            pspeak(i, state);

    if (tally == tally2 && tally != 0 && limit > 35)
        limit = 35;

/*
    Routine to handle motion requests
*/
def domove()
    gettrav(loc);
    if motion == NULLX
        var dummy = 0
    elif motion == BACK
        goback()
    elif motion == LOOK
        if (detail++<3)
            rspeak(15)
        wzdark = 0
        visited[loc] = 0
        newloc = loc
        loc = 0
    elif motion == CAVE
        if (loc<8)
            rspeak(57);
        else
            rspeak(58);
    else
        oldloc2 = oldloc;
        oldloc = loc;
        dotrav();

/*
    Routine to handle request to return
    from whence we came!
*/
def goback()
    var    kk = 0; var k2 = 0; var want = 0; var temp = 0
    var strav : trav[MAXTRAV]

    if (forced(oldloc))
        want = oldloc2;
    else
        want = oldloc;
    oldloc2 = oldloc;
    oldloc = loc;
    k2 = 0;
    if (want == loc) {
        rspeak(91);
        return;
    }
    copytrv(travel, strav);
    kk = 0
    while travel[kk].tdest != -1
        if (travel[kk].tcond == 0 && travel[kk].tdest == want) {
            motion = travel[kk].tverb;
            dotrav();
            return;
        }
        if (travel[kk].tcond == 0)
            k2 = kk
            temp = travel[kk].tdest
            gettrav(temp)
            if forced(temp) && travel[0].tdest == want
                k2 = temp
            copytrv(strav, travel);
        ++kk

    if (k2 != 0) {
        motion = travel[k2].tverb;
        dotrav();
    }
    else
        rspeak(140);

/*
    Routine to copy a travel array
*/
def copytrv(var trav1; var trav2) //struct trav *trav1, *trav2;
    var     i = 0

    for i in range(0, MAXTRAV)          // Bug in source?
        trav2[i].tdest = trav1[i].tdest
        trav2[i].tverb = trav1[i].tverb
        trav2[i].tcond = trav1[i].tcond

/*
    Routine to figure out a new location
    given current location and a motion.
*/
def dotrav()
    var     mvflag = 0; var  hitflag = 0; var  kk = 0
    var     rdest = 0; var  rverb = 0; var  rcond = 0; var  robject = 0
    var     pctt = 0

    newloc = loc;
    mvflag = 0; hitflag = 0;
    pctt = random_int(seed)%100;

    kk = 0
    while travel[kk].tdest>=0 && mvflag == 0
        rdest = travel[kk].tdest;
        rverb = travel[kk].tverb;
        rcond = travel[kk].tcond;
        robject = rcond%100;

        if (dbugflg != 0)
            print("rdest = {rdest}, rverb = {rverb}, rcond = {rcond}, robject = {robject} in dotrav\n")
        if ((rverb != 1) && (rverb != motion) && hitflag == 0)
            kk++
            continue
        ++hitflag;
        if rcond/100 == 0
            if ((rcond == 0) || (pctt < rcond))
                ++mvflag;
            if (rcond != 0 && dbugflg != 0)
                print("% move {pctt} {mvflag}\n")
        elif rcond/100 == 1
            if (robject == 0)
                ++mvflag;
            elif (toting(robject))
                ++mvflag;
        elif rcond/100 == 2
            if (toting(robject) || at(robject))
                ++mvflag;
        elif rcond/100 == 3 || rcond/100 == 4 || rcond/100 == 5 || rcond/100 == 7
            if (prop[robject] != (rcond/100)-3)
                ++mvflag;
        else
            bug(37);
        kk++
    
    if (mvflag == 0)
        badmove();
    elif (rdest>500)
        rspeak(rdest-500);
    elif (rdest>300)
        spcmove(rdest);
    else
        newloc = rdest;
        if (dbugflg != 0)
            print("newloc in dotrav = {newloc}\n")

/*
    The player tried a poor move option.
*/
def badmove()
    var     msg = 0

    msg = 12;
    if (motion >= 43 && motion <=50)
        msg = 9;
    if (motion == 29 || motion == 30)
        msg = 9;
    if (motion == 7 || motion == 36 || motion == 37)
        msg = 10;
    if (motion == 11 || motion == 19)
        msg = 11;
    if (verb == FIND || verb == INVENTORY)
        msg = 59;
    if (motion == 62 || motion == 65)
        msg = 42;
    if (motion == 17)
        msg = 80;
    rspeak(msg);

/*
    Routine to handle very special movement.
*/
def spcmove(rdest)
    if rdest-300 == 1  /* plover movement via alcove */
        if (holding == 0 || (holding == 1 && toting(EMERALD)))
            newloc = (99+100)-loc;
        else
            rspeak(117);
    elif rdest-300 == 2  /* trying to remove plover, bad route */
        drop(EMERALD, loc);
    elif rdest-300 == 3  /* troll bridge */
        if (prop[TROLL] == 1) {
            pspeak(TROLL, 1);
            prop[TROLL] = 0;
            move(TROLL2, 0);
            move((TROLL2+MAXOBJ), 0);
            move(TROLL, 117);
            move((TROLL+MAXOBJ), 122);
            juggle(CHASM);
            newloc = loc;
        }
        else
            newloc = (loc == 117 ? 122 : 117)
            if prop[TROLL] == 0
                prop[TROLL]++
            if (!toting (BEAR))
                return
            rspeak(162);
            prop[CHASM] = 1;
            prop[TROLL] = 2;
            drop(BEAR, newloc);
            fixed[BEAR] = -1;
            prop[BEAR] = 3;
            if (prop[SPICES]<0)
                ++tally2;
            oldloc2 = newloc;
            death();
    else
        bug(38);


/*
    Routine to handle player's demise via
    waking up the dwarves...
*/
def dwarfend()
    death();
    normend();

/*
    normal end of game
*/
def normend()
    score();
    unsafe
        fio::exit(-1)

/*
    scoring
*/
def score()
    var     t = 0; var  i = 0; var  k = 0; var  s = 0
    for i in range(50, MAXTRS)
        if (i == CHEST)
            k = 14;
        elif (i > CHEST)
            k = 16;
        else 
            k = 12;
        if (prop[i] >= 0)
            t += 2;
        if (place[i] == 3 && prop[i] == 0)
            t += k-2;

    s = t
    print("Treasures: {s}\n")
    t = (MAXDIE - numdie)*10;
    if (t != 0)
        print("Survival: {t}\n");
    s += t;
    if (gaveup == 0)
        s += 4;
    t = dflag != 0 ? 25 : 0;
    if (t != 0)
        print("Getting well in: {t}\n")
    s += t;
    t = closing != 0 ? 25 : 0;
    if (t != 0)
        print("Masters section: {t}\n")
    s += t;
    if (closed != 0)
        if (bonus == 0)
            t = 10
        elif (bonus == 135)
            t = 25
        elif (bonus == 134)
            t = 30
        elif (bonus == 133)
            t = 45
        print("Bonus: {t}\n")
        s += t
    if (place[MAGAZINE] == 108)
        s += 1
    s += 2
    print("Score: {s}\n")

/*
    Routine to handle the passing on of one
    of the player's incarnations...
*/
def death()
    var    yea = 0; var i = 0; var j = 0; var k = 0;

    if (closing == 0)
        yea = yes(81+numdie*2, 82+numdie*2, 54);
        if (++numdie >= MAXDIE || yea == 0)
            normend()
        place[WATER] = 0;
        place[OIL] = 0;
        if (toting(LAMP))
            prop[LAMP] = 0;
        for j in range(0, 100)      // Bug in source?
            i = 99-j;
            if (toting (i))
                drop(i, i == LAMP ? 1:oldloc2);

        newloc = 3;
        oldloc = loc;
        return;
    /*
       closing -- no resurrection...
    */
    rspeak(131);
    ++numdie;
    normend();

/*
    Routine to process an object.
*/
def doobj()
    var    i = 0
    /*
       is object here?  if so, transitive
    */
    if (fixed[object] == loc || here(object))
        trobj();
    /*
        did he give grate as destination?
    */
    elif (object == GRATE) {
        if (loc == 1 || loc == 4 || loc == 7) {
            motion = DEPRESSION;
            domove();
        }
        elif (loc>9 && loc<15) {
            motion = ENTRANCE;
            domove();
        }
    }
    /*
        is it a dwarf he is after?
    */
    elif (dcheck() != 0 && dflag >= 2) {
        object = DWARF;
        trobj();
    }
    /*
       is he trying to get/use a liquid?
    */
    elif ((liq() == object && here(BOTTLE)) ||
         liqloc(loc) == object)
        trobj();
    elif (object == PLANT && at(PLANT2) &&
        prop[PLANT2] == 0) {
        object = PLANT2;
        trobj();
    }
    /*
       is he trying to grab a knife?
    */
    elif (object == KNIFE && knfloc == loc) {
        rspeak(116);
        knfloc = -1;
    }
    /*
       is he trying to get at dynamite?
    */
    elif (object == ROD && here(ROD2)) {
        object = ROD2;
        trobj();
    }
    else
        print("I see no {probj(object)} here.\n")

/*
    Routine to process an object being
    referred to.
*/
def trobj()
    if (verb != 0)
        trverb();
    else
        print("What do you want to do with the {probj(object)}?\n")

/*
    Routine to print word corresponding to object
*/
def probj(object)//char *probj(object)          // Bug in source?
    var     wtype = 0; var wval = 0
    analyze(word1, wtype, wval);
    return (wtype == 1 ? word1 : word2);
/*
    dwarf stuff.
*/
def dwarves()
    var     i = 0; var  j = 0; var  k = 0; var  try1 = 0; var  attack = 0; var  stick = 0; var  dtotal = 0
    /*
        see if dwarves allowed here
    */
    if (newloc == 0 || forced(newloc) || (cond[newloc]&NOPIRAT) != 0)
        return;
    /*
        see if dwarves are active.
    */
    if (dflag == 0)
        if (newloc > 15)
            ++dflag;
        return;
    
    /*
        if first close encounter (of 3rd kind)
        kill 0, 1 or 2
    */
    if (dflag == 1)
        if (newloc < 15 || pct (95))
            return;
        ++dflag;
        for i in range(1, 3)
            if (pct (50))
                dloc[random_int(seed)%5+1] = 0;
        for i in range(1, DWARFMAX-1)
            if (dloc[i] == newloc)
                dloc[i] = daltloc;
            odloc[i] = dloc[i];

        rspeak(3);
        drop(AXE, newloc);
        return;

    dtotal = 0; attack = 0; stick = 0
    for i in range(1, DWARFMAX)
        if (dloc[i] == 0)
            continue;
        /*
            move a dwarf at random.  we don't
            have a matrix around to do it
            as in the original version...
        */
        for try1 in range(1, 20)
            j = random_int(seed)%106+15; /* allowed area */
            if (j != odloc[i] && j != dloc[i] &&
                !(i == (DWARFMAX-1) && (cond[j]&NOPIRAT) != 0))     // Bug in source?
                break;

        if (j == 0)
            j = odloc[i];
        odloc[i] = dloc[i];
        dloc[i] = j;
        if ((dseen[i] != 0 && newloc >= 15) ||
            dloc[i] == newloc || odloc[i] == newloc)
            dseen[i] = 1;
        else
            dseen[i] = 0;
        if (dseen[i] == 0)
            continue;
        dloc[i] = newloc;
        if (i == 6)
            dopirate();
        else
            ++dtotal;
            if (odloc[i] == dloc[i])
                ++attack;
                if (knfloc >= 0)
                    knfloc = newloc;
                if (random_int(seed)%1000 < 95*(dflag-2))
                    ++stick;

    if (dtotal == 0)
        return;
    if (dtotal > 1)
        print("There are {dtotal} threatening little dwarves in the room with you!\n")
    else
        rspeak(4);
    if (attack == 0)
        return;
    if (dflag == 2)
        ++dflag;
    if (attack > 1)
        print("{attack} of them throw knives at you!!\n")
        k = 6;
    else
        rspeak(5);
        k = 52;
    if (stick <= 1)
        rspeak(stick+k);
        if (stick == 0)
            return;
    else
        print("{stick} of them get you !!!\n")
    oldloc2 = newloc;
    death();

/*
    pirate stuff
*/
def dopirate()
    var     j = 0; var  k = 0
    if (newloc == chloc || prop[CHEST] >= 0)
        return;
    k = 0;
    var stealit = false
    for j in range(50, MAXTRS + 1)
        if (j != PYRAMID ||
            (newloc != place[PYRAMID] &&
             newloc != place[EMERALD]))
            if (toting(j))
                stealit = true
                break
            if (here(j))
                ++k;


    if (!stealit)
        if (tally == tally2+1 && k == 0 && place[CHEST] == 0 &&
            here(LAMP) && prop[LAMP] == 1)
            rspeak(186);
            move(CHEST, chloc);
            move(MESSAGE, chloc2);
            dloc[6] = chloc;
            odloc[6] = chloc;
            dseen[6] = 0;
            return;

        if (odloc[6] != dloc[6] && pct(20))
            rspeak(127);
            return;

        return;

    rspeak(128);
    if (place[MESSAGE] == 0)
        move(CHEST, chloc);
    move(MESSAGE, chloc2);
    for j in range(50, MAXTRS + 1)
        if (j == PYRAMID &&
            (newloc == place[PYRAMID] ||
             newloc == place[EMERALD]))
            continue;
        if (at(j) && fixed[j] == 0)
            carry(j, newloc);
        if (toting(j))
            drop(j, chloc);

    dloc[6] = chloc;
    odloc[6] = chloc;
    dseen[6] = 0;

/*
    special time limit stuff...
*/
def stimer()
    var     i = 0
    foobar = foobar > 0 ?  -foobar : 0;
    if (tally == 0 && loc >= 15 && loc != 33)
        --clock;
    if (clock == 0)
        /*
            start closing the cave
        */
        prop[GRATE] = 0;
        prop[FISSURE] = 0;
        for i in range(1, DWARFMAX)
            dseen[i] = 0;
        move(TROLL, 0);
        move((TROLL+MAXOBJ), 0);
        move(TROLL2, 117);
        move((TROLL2+MAXOBJ), 122);
        juggle(CHASM);
        if (prop[BEAR] != 3)
            dstroy(BEAR);
        prop[CHAIN] = 0;
        fixed[CHAIN] = 0;
        prop[AXE] = 0;
        fixed[AXE] = 0;
        rspeak(129);
        clock = -1;
        closing = 1;
        return(0);

    if (clock < 0)
        --clock2;
    if (clock2 == 0)
        /*
            set up storage room...
            and close the cave...
        */
        prop[BOTTLE] = put(BOTTLE, 115, 1);
        prop[PLANT] = put(PLANT, 115, 0);
        prop[OYSTER] = put(OYSTER, 115, 0);
        prop[LAMP] = put(LAMP, 115, 0);
        prop[ROD] = put(ROD, 115, 0);
        prop[DWARF] = put(DWARF, 115, 0);
        loc = 115;
        oldloc = 115;
        newloc = 115;
        put(GRATE, 116, 0);
        prop[SNAKE] = put(SNAKE, 116, 1);
        prop[BIRD] = put(BIRD, 116, 1);
        prop[CAGE] = put(CAGE, 116, 0);
        prop[ROD2] = put(ROD2, 116, 0);
        prop[PILLOW] = put(PILLOW, 116, 0);
        prop[MIRROR] = put(MIRROR, 115, 0);
        fixed[MIRROR] = 116;
        for i in range(1, MAXOBJ + 1)
            if (toting(i))
                dstroy(i);
        rspeak(132);
        closed = 1;
        return(1);

    if (prop[LAMP] == 1)
        --limit;
    if (limit <= 30 && here(BATTERIES) && prop[BATTERIES] == 0 && here(LAMP))
        rspeak(188);
        prop[BATTERIES] = 1;
        if (toting(BATTERIES))
            drop(BATTERIES, loc);
        limit += 2500;
        lmwarn = 0;
        return(0);

    if (limit == 0)
        --limit;
        prop[LAMP] = 0;
        if (here(LAMP))
            rspeak(184);
        return(0);

    if (limit < 0 && loc <= 8)
        rspeak(185);
        gaveup = 1;
        normend();

    if (limit <= 30)
        if (lmwarn != 0 || !here(LAMP))
            return(0);
        lmwarn = 1;
        i = 187;
        if (place[BATTERIES] == 0)
            i = 183;
        if (prop[BATTERIES] == 1)
            i = 189;
        rspeak(i);
        return(0);

    return(0);



//
// advent.c
//

[export]
def main
    dbugflg = 0     //!!!
    opentxt()
    initplay()

    if yes(65, 1, 0) == 1
        limit = 1000;
    else
        limit = 330;
    while(true)
        turn();





def initplay()
    turns = 0
    
    /* initialize location status array */
    for i in range(0, MAXLOC)
        cond[i] = 0
    var i = 1;     cond[i++] = 5; cond[i++] = 1; cond[i++] = 5; cond[i++] = 5; cond[i++] = 1; cond[i++] = 1; cond[i++] = 5; cond[i++] = 17; cond[i++] = 1; cond[i++] = 1
    i = 13; cond[i++] = 32; cond[i++] = 0; cond[i++] = 0; cond[i++] = 2; cond[i++] = 0; cond[i++] = 0; cond[i++] = 64; cond[i++] = 2
    i = 21; cond[i++] = 2; cond[i++] = 2; cond[i++] = 0; cond[i++] = 6; cond[i++] = 0; cond[i++] = 2
    i = 31; cond[i++] = 2; cond[i++] = 2; cond[i++] = 0; cond[i++] = 0; cond[i++] = 0; cond[i++] = 0; cond[i++] = 0; cond[i++] = 4; cond[i++] = 0; cond[i++] = 2
    i = 42; cond[i++] = 128; cond[i++] = 128; cond[i++] = 128; cond[i++] = 128; cond[i++] = 136; cond[i++] = 136; cond[i++] = 136; cond[i++] = 128; cond[i++] = 128
    i = 51; cond[i++] = 128; cond[i++] = 128; cond[i++] = 136; cond[i++] = 128; cond[i++] = 136; cond[i++] = 0; cond[i++] = 8; cond[i++] = 0; cond[i++] = 2
    i = 79; cond[i++] = 2; cond[i++] = 128; cond[i++] = 128; cond[i++] = 136; cond[i++] = 0; cond[i++] = 0; cond[i++] = 8; cond[i++] = 136; cond[i++] = 128; cond[i++] = 0; cond[i++] = 2; cond[i++] = 2
    i = 95; cond[i++] = 4; cond[i++] = 0; cond[i++] = 0; cond[i++] = 0; cond[i++] = 0; cond[i++] = 1
    i = 113; cond[i++] = 4; cond[i++] = 0; cond[i++] = 1; cond[i++] = 1
    i = 122; cond[i++] = 8; cond[i++] = 8; cond[i++] = 8; cond[i++] = 8; cond[i++] = 8; cond[i++] = 8; cond[i++] = 8; cond[i++] = 8; cond[i++] = 8
        
    /* initialize object locations */
    for i in range(0, MAXOBJ)
        place[i] = 0
    i = 1; place[i++] = 3; place[i++] = 3; place[i++] = 8; place[i++] = 10; place[i++] = 11; place[i++] = 0; place[i++] = 14; place[i++] = 13; place[i++] = 94; place[i++] = 96
    i = 11; place[i++] = 19; place[i++] = 17; place[i++] = 101; place[i++] = 103; place[i++] = 0; place[i++] = 106; place[i++] = 0; place[i++] = 0; place[i++] = 3; place[i++] = 3
    i = 23; place[i++] = 109; place[i++] = 25; place[i++] = 23; place[i++] = 111; place[i++] = 35; place[i++] = 0; place[i++] = 97
    i = 31; place[i++] = 119; place[i++] = 117; place[i++] = 117; place[i++] = 0; place[i++] = 130; place[i++] = 0; place[i++] = 126; place[i++] = 140; place[i++] = 0; place[i++] = 96
    i = 50; place[i++] = 18; place[i++] = 27; place[i++] = 28; place[i++] = 29; place[i++] = 30
    i = 56; place[i++] = 92; place[i++] = 95; place[i++] = 97; place[i++] = 100; place[i++] = 101; place[i++] = 0; place[i++] = 119; place[i++] = 127; place[i++] = 130

    /* initialize second (fixed) locations */
    for i in range(0, MAXOBJ)
        fixed[i] = 0
    i = 3; fixed[i++] = 9; fixed[i++] = 0; fixed[i++] = 0; fixed[i++] = 0; fixed[i++] = 15; fixed[i++] = 0; fixed[i++] = -1
    i = 11; fixed[i++] = -1; fixed[i++] = 27; fixed[i++] = -1; fixed[i++] = 0; fixed[i++] = 0; fixed[i++] = 0; fixed[i++] = -1
    i = 23; fixed[i++] = -1; fixed[i++] = -1; fixed[i++] = 67; fixed[i++] = -1; fixed[i++] = 110; fixed[i++] = 0; fixed[i++] = -1; fixed[i++] = -1
    i = 31; fixed[i++] = 121; fixed[i++] = 122; fixed[i++] = 122; fixed[i++] = 0; fixed[i++] = -1; fixed[i++] = -1; fixed[i++] = -1; fixed[i++] = -1; fixed[i++] = 0; fixed[i++] = -1
    i = 62; fixed[i++] = 121; fixed[i++] = -1

    /* initialize default verb messages */
    
    actmsg = [[int[32] 0;24;29;0;33;0;33;38;38;42;14;43;110;29;110;73;75;29;13;59;59;174;109;67;13;147;155;195;146;110;13;13]]

    for i in range(0, MAXLOC)
        visited[i] = 0

    for i in range(0, 50)
        prop[i] = 0

    for i in range(50, MAXOBJ)
        prop[i] = -1

    wzdark = 0; closed = 0; closing = 0; holding = 0; detail = 0
    limit = 100
    tally = 15
    tally2 = 0
    newloc = 1
    loc = 3; oldloc = 3; oldloc2 = 3
    knfloc = 0
    chloc = 114
    chloc2 = 140
    dloc =  [[int[7] 0;19;27;33;44;64;114]]
    odloc; [[int[7] 0;0;0;0;0;0;0]]
    dkill = 0
    dseen = [[int[7] 0;0;0;0;0;0;0]]
    clock = 30
    clock2 = 50
    panic = 0
    bonus = 0
    numdie = 0
    daltloc = 18
    lmwarn = 0
    foobar = 0
    dflag = 0
    gaveup = 0
    saveflg = 0


def opentxt()
    fd1 = fopen("advent1.txt", "r");
    fd2 = fopen("advent2.txt", "r");
    fd3 = fopen("advent3.txt", "r");
    fd4 = fopen("advent4.txt", "r");
