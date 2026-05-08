if (((pixel_index >= 0) && (pixel_index <= 23)) ||
    ((pixel_index >= 96) && (pixel_index <= 119)) ||
    ((pixel_index >= 192) && (pixel_index <= 215)) ||
    ((pixel_index >= 288) && (pixel_index <= 311)) ||
    ((pixel_index >= 384) && (pixel_index <= 407)) ||
    ((pixel_index >= 480) && (pixel_index <= 502)) ||
    ((pixel_index >= 576) && (pixel_index <= 599)) ||
    ((pixel_index >= 672) && (pixel_index <= 694)) ||
    ((pixel_index >= 768) && (pixel_index <= 790)) ||
    ((pixel_index >= 864) && (pixel_index <= 886)) ||
    ((pixel_index >= 960) && (pixel_index <= 981)) ||
    ((pixel_index >= 1056) && (pixel_index <= 1077)) ||
    ((pixel_index >= 1152) && (pixel_index <= 1172)) ||
    ((pixel_index >= 1248) && (pixel_index <= 1267)) ||
    ((pixel_index >= 1344) && (pixel_index <= 1363)) ||
    ((pixel_index >= 1440) && (pixel_index <= 1458)) ||
    ((pixel_index >= 1536) && (pixel_index <= 1554)) ||
    ((pixel_index >= 1632) && (pixel_index <= 1648)) ||
    ((pixel_index >= 1728) && (pixel_index <= 1744)) ||
    ((pixel_index >= 1824) && (pixel_index <= 1838)) ||
    ((pixel_index >= 1920) && (pixel_index <= 1932)) ||
    ((pixel_index >= 2016) && (pixel_index <= 2026)) ||
    ((pixel_index >= 2112) && (pixel_index <= 2120)) ||
    (pixel_index >= 2208) && (pixel_index <= 2211))
  oled_data = 16'b0000011110011110;
else if (((pixel_index >= 24) && (pixel_index <= 43)) ||
         ((pixel_index >= 120) && (pixel_index <= 139)) ||
         ((pixel_index >= 216) && (pixel_index <= 235)) ||
         ((pixel_index >= 312) && (pixel_index <= 331)) ||
         ((pixel_index >= 408) && (pixel_index <= 427)) ||
         ((pixel_index >= 503) && (pixel_index <= 523)) ||
         ((pixel_index >= 600) && (pixel_index <= 619)) ||
         ((pixel_index >= 695) && (pixel_index <= 715)) ||
         ((pixel_index >= 791) && (pixel_index <= 809)) ||
         ((pixel_index >= 887) && (pixel_index <= 904)) ||
         ((pixel_index >= 982) && (pixel_index <= 998)) ||
         ((pixel_index >= 1078) && (pixel_index <= 1092)) ||
         ((pixel_index >= 1173) && (pixel_index <= 1187)) ||
         ((pixel_index >= 1268) && (pixel_index <= 1282)) ||
         ((pixel_index >= 1364) && (pixel_index <= 1376)) ||
         ((pixel_index >= 1459) && (pixel_index <= 1472)) ||
         ((pixel_index >= 1555) && (pixel_index <= 1567)) ||
         ((pixel_index >= 1649) && (pixel_index <= 1662)) ||
         ((pixel_index >= 1745) && (pixel_index <= 1757)) ||
         ((pixel_index >= 1839) && (pixel_index <= 1852)) ||
         ((pixel_index >= 1933) && (pixel_index <= 1948)) ||
         ((pixel_index >= 2027) && (pixel_index <= 2043)) ||
         ((pixel_index >= 2121) && (pixel_index <= 2139)) ||
         ((pixel_index >= 2212) && (pixel_index <= 2234)) ||
         ((pixel_index >= 2304) && (pixel_index <= 2330)) ||
         ((pixel_index >= 2400) && (pixel_index <= 2425)) ||
         ((pixel_index >= 2496) && (pixel_index <= 2521)) ||
         ((pixel_index >= 2592) && (pixel_index <= 2617)) ||
         ((pixel_index >= 2688) && (pixel_index <= 2713)) ||
         ((pixel_index >= 2784) && (pixel_index <= 2808)) ||
         ((pixel_index >= 2880) && (pixel_index <= 2904)) ||
         ((pixel_index >= 2976) && (pixel_index <= 3000)) ||
         ((pixel_index >= 3072) && (pixel_index <= 3097)) ||
         ((pixel_index >= 3168) && (pixel_index <= 3192)) ||
         ((pixel_index >= 3264) && (pixel_index <= 3287)) ||
         ((pixel_index >= 3360) && (pixel_index <= 3382)) ||
         ((pixel_index >= 3456) && (pixel_index <= 3477)) ||
         ((pixel_index >= 3552) && (pixel_index <= 3573)) ||
         ((pixel_index >= 3648) && (pixel_index <= 3668)) ||
         ((pixel_index >= 3744) && (pixel_index <= 3763)) ||
         ((pixel_index >= 3840) && (pixel_index <= 3857)) ||
         ((pixel_index >= 3936) && (pixel_index <= 3951)) ||
         ((pixel_index >= 4032) && (pixel_index <= 4044)) ||
         (pixel_index >= 4128) && (pixel_index <= 4134))
  oled_data = 16'b0000010100011110;
else if (((pixel_index >= 44) && (pixel_index <= 57)) ||
         ((pixel_index >= 140) && (pixel_index <= 153)) ||
         ((pixel_index >= 236) && (pixel_index <= 249)) ||
         ((pixel_index >= 332) && (pixel_index <= 345)) ||
         ((pixel_index >= 428) && (pixel_index <= 441)) ||
         ((pixel_index >= 524) && (pixel_index <= 537)) ||
         ((pixel_index >= 620) && (pixel_index <= 632)) ||
         ((pixel_index >= 716) && (pixel_index <= 728)) ||
         ((pixel_index >= 810) && (pixel_index <= 824)) ||
         ((pixel_index >= 905) && (pixel_index <= 906)) ||
         ((pixel_index >= 919) && (pixel_index <= 920)) || pixel_index == 999 ||
         ((pixel_index >= 1093) && (pixel_index <= 1094)) ||
         pixel_index == 1188 || pixel_index == 1283 || pixel_index == 1377 ||
         pixel_index == 1663 || pixel_index == 1758 || pixel_index == 1853 ||
         pixel_index == 2044 || pixel_index == 2235 || pixel_index == 2331 ||
         pixel_index == 2426 || pixel_index == 2522 || pixel_index == 2618 ||
         pixel_index == 2809 || pixel_index == 2905 || pixel_index == 3001 ||
         pixel_index == 3193 || pixel_index == 3288 || pixel_index == 3383 ||
         pixel_index == 3478 || pixel_index == 3669 || pixel_index == 3764 ||
         ((pixel_index >= 3858) && (pixel_index <= 3859)) ||
         ((pixel_index >= 3952) && (pixel_index <= 3955)) ||
         ((pixel_index >= 4045) && (pixel_index <= 4050)) ||
         ((pixel_index >= 4135) && (pixel_index <= 4146)) ||
         ((pixel_index >= 4224) && (pixel_index <= 4242)) ||
         ((pixel_index >= 4320) && (pixel_index <= 4337)) ||
         ((pixel_index >= 4416) && (pixel_index <= 4433)) ||
         ((pixel_index >= 4512) && (pixel_index <= 4530)) ||
         ((pixel_index >= 4608) && (pixel_index <= 4626)) ||
         ((pixel_index >= 4704) && (pixel_index <= 4722)) ||
         ((pixel_index >= 4800) && (pixel_index <= 4819)) ||
         ((pixel_index >= 4896) && (pixel_index <= 4916)) ||
         ((pixel_index >= 4992) && (pixel_index <= 5014)) ||
         ((pixel_index >= 5088) && (pixel_index <= 5110)) ||
         ((pixel_index >= 5184) && (pixel_index <= 5203)) ||
         ((pixel_index >= 5280) && (pixel_index <= 5295)) ||
         ((pixel_index >= 5376) && (pixel_index <= 5387)) ||
         pixel_index == 5472 ||
         ((pixel_index >= 5474) && (pixel_index <= 5475)) ||
         (pixel_index >= 5477) && (pixel_index <= 5478))
  oled_data = 16'b0101010100011110;
else if (((pixel_index >= 58) && (pixel_index <= 63)) ||
         ((pixel_index >= 154) && (pixel_index <= 159)) ||
         ((pixel_index >= 250) && (pixel_index <= 255)) ||
         ((pixel_index >= 346) && (pixel_index <= 351)) ||
         ((pixel_index >= 442) && (pixel_index <= 447)) ||
         ((pixel_index >= 538) && (pixel_index <= 543)) ||
         ((pixel_index >= 633) && (pixel_index <= 639)) ||
         ((pixel_index >= 729) && (pixel_index <= 735)) ||
         ((pixel_index >= 825) && (pixel_index <= 831)) ||
         ((pixel_index >= 907) && (pixel_index <= 918)) ||
         ((pixel_index >= 921) && (pixel_index <= 926)) ||
         ((pixel_index >= 1000) && (pixel_index <= 1001)) ||
         ((pixel_index >= 1012) && (pixel_index <= 1022)) ||
         pixel_index == 1095 ||
         ((pixel_index >= 1111) && (pixel_index <= 1118)) ||
         ((pixel_index >= 1189) && (pixel_index <= 1190)) ||
         ((pixel_index >= 1210) && (pixel_index <= 1214)) ||
         pixel_index == 1284 ||
         ((pixel_index >= 1308) && (pixel_index <= 1311)) ||
         ((pixel_index >= 1378) && (pixel_index <= 1379)) ||
         ((pixel_index >= 1406) && (pixel_index <= 1408)) ||
         ((pixel_index >= 1473) && (pixel_index <= 1474)) ||
         ((pixel_index >= 1503) && (pixel_index <= 1505)) ||
         pixel_index == 1568 ||
         ((pixel_index >= 1600) && (pixel_index <= 1602)) ||
         pixel_index == 1664 ||
         ((pixel_index >= 1698) && (pixel_index <= 1699)) ||
         pixel_index == 1759 ||
         ((pixel_index >= 1794) && (pixel_index <= 1795)) ||
         pixel_index == 1854 ||
         ((pixel_index >= 1891) && (pixel_index <= 1892)) ||
         pixel_index == 1949 || pixel_index == 1988 || pixel_index == 2084 ||
         pixel_index == 2140 ||
         ((pixel_index >= 2180) && (pixel_index <= 2181)) ||
         pixel_index == 2277 || pixel_index == 2373 || pixel_index == 2469 ||
         pixel_index == 2565 || pixel_index == 2661 || pixel_index == 2714 ||
         ((pixel_index >= 2757) && (pixel_index <= 2758)) ||
         pixel_index == 2854 || pixel_index == 2950 || pixel_index == 3047 ||
         pixel_index == 3144 || pixel_index == 3242 || pixel_index == 3339 ||
         pixel_index == 3384 || pixel_index == 3479 || pixel_index == 3574 ||
         pixel_index == 3765 || pixel_index == 3860 || pixel_index == 4051 ||
         pixel_index == 4338 || pixel_index == 4434 || pixel_index == 4723 ||
         pixel_index == 4820 ||
         ((pixel_index >= 4917) && (pixel_index <= 4918)) ||
         ((pixel_index >= 5015) && (pixel_index <= 5017)) ||
         ((pixel_index >= 5111) && (pixel_index <= 5116)) ||
         ((pixel_index >= 5204) && (pixel_index <= 5211)) ||
         ((pixel_index >= 5296) && (pixel_index <= 5307)) ||
         ((pixel_index >= 5388) && (pixel_index <= 5403)) ||
         pixel_index == 5473 || pixel_index == 5476 ||
         ((pixel_index >= 5479) && (pixel_index <= 5499)) ||
         ((pixel_index >= 5568) && (pixel_index <= 5594)) ||
         ((pixel_index >= 5664) && (pixel_index <= 5687)) ||
         pixel_index == 5690 ||
         ((pixel_index >= 5760) && (pixel_index <= 5780)) ||
         pixel_index == 5785 ||
         ((pixel_index >= 5856) && (pixel_index <= 5874)) ||
         pixel_index == 5881 ||
         ((pixel_index >= 5952) && (pixel_index <= 5964)) ||
         pixel_index == 5977 ||
         ((pixel_index >= 6048) && (pixel_index <= 6053)) ||
         pixel_index == 6055)
  oled_data = 16'b1010010100011110;
else if (((pixel_index >= 64) && (pixel_index <= 78)) ||
         ((pixel_index >= 160) && (pixel_index <= 174)) ||
         ((pixel_index >= 256) && (pixel_index <= 270)) ||
         ((pixel_index >= 352) && (pixel_index <= 366)) ||
         ((pixel_index >= 448) && (pixel_index <= 462)) ||
         ((pixel_index >= 544) && (pixel_index <= 558)) ||
         ((pixel_index >= 640) && (pixel_index <= 654)) ||
         ((pixel_index >= 736) && (pixel_index <= 749)) ||
         ((pixel_index >= 832) && (pixel_index <= 846)) ||
         ((pixel_index >= 927) && (pixel_index <= 941)) ||
         ((pixel_index >= 1023) && (pixel_index <= 1037)) ||
         ((pixel_index >= 1119) && (pixel_index <= 1133)) ||
         ((pixel_index >= 1215) && (pixel_index <= 1229)) ||
         ((pixel_index >= 1312) && (pixel_index <= 1325)) ||
         ((pixel_index >= 1409) && (pixel_index <= 1421)) ||
         ((pixel_index >= 1506) && (pixel_index <= 1516)) ||
         ((pixel_index >= 1603) && (pixel_index <= 1612)) ||
         ((pixel_index >= 1700) && (pixel_index <= 1708)) ||
         ((pixel_index >= 1796) && (pixel_index <= 1804)) ||
         ((pixel_index >= 1893) && (pixel_index <= 1899)) ||
         ((pixel_index >= 1989) && (pixel_index <= 1995)) ||
         ((pixel_index >= 2085) && (pixel_index <= 2091)) ||
         ((pixel_index >= 2182) && (pixel_index <= 2187)) ||
         ((pixel_index >= 2278) && (pixel_index <= 2283)) ||
         ((pixel_index >= 2374) && (pixel_index <= 2378)) ||
         ((pixel_index >= 2470) && (pixel_index <= 2474)) ||
         ((pixel_index >= 2566) && (pixel_index <= 2569)) ||
         ((pixel_index >= 2662) && (pixel_index <= 2665)) ||
         ((pixel_index >= 2759) && (pixel_index <= 2761)) ||
         ((pixel_index >= 2855) && (pixel_index <= 2856)) ||
         ((pixel_index >= 2951) && (pixel_index <= 2952)) ||
         ((pixel_index >= 3048) && (pixel_index <= 3049)) ||
         ((pixel_index >= 3145) && (pixel_index <= 3146)) ||
         pixel_index == 3243 || pixel_index == 3340 || pixel_index == 3436 ||
         pixel_index == 3533 || pixel_index == 3629 || pixel_index == 3726 ||
         pixel_index == 3822 || pixel_index == 3918 || pixel_index == 4206 ||
         pixel_index == 4302 || pixel_index == 4397 || pixel_index == 4492 ||
         pixel_index == 4586 || pixel_index == 4679 || pixel_index == 4774 ||
         pixel_index == 4869 || pixel_index == 4964 || pixel_index == 5059 ||
         pixel_index == 5154 || pixel_index == 5344 || pixel_index == 5440 ||
         ((pixel_index >= 5688) && (pixel_index <= 5689)) ||
         ((pixel_index >= 5781) && (pixel_index <= 5784)) ||
         ((pixel_index >= 5875) && (pixel_index <= 5880)) ||
         pixel_index == 5920 ||
         ((pixel_index >= 5965) && (pixel_index <= 5976)) ||
         pixel_index == 6016 || pixel_index == 6054 ||
         ((pixel_index >= 6056) && (pixel_index <= 6072)) ||
         pixel_index == 6112)
  oled_data = 16'b1010001010011110;
else if (((pixel_index >= 79) && (pixel_index <= 95)) ||
         ((pixel_index >= 175) && (pixel_index <= 191)) ||
         ((pixel_index >= 271) && (pixel_index <= 287)) ||
         ((pixel_index >= 367) && (pixel_index <= 383)) ||
         ((pixel_index >= 463) && (pixel_index <= 479)) ||
         ((pixel_index >= 559) && (pixel_index <= 575)) ||
         ((pixel_index >= 655) && (pixel_index <= 671)) ||
         ((pixel_index >= 750) && (pixel_index <= 767)) ||
         ((pixel_index >= 847) && (pixel_index <= 863)) ||
         ((pixel_index >= 942) && (pixel_index <= 959)) ||
         ((pixel_index >= 1038) && (pixel_index <= 1055)) ||
         ((pixel_index >= 1134) && (pixel_index <= 1150)) ||
         ((pixel_index >= 1230) && (pixel_index <= 1246)) ||
         ((pixel_index >= 1326) && (pixel_index <= 1342)) ||
         ((pixel_index >= 1422) && (pixel_index <= 1438)) ||
         ((pixel_index >= 1517) && (pixel_index <= 1534)) ||
         ((pixel_index >= 1613) && (pixel_index <= 1630)) ||
         ((pixel_index >= 1709) && (pixel_index <= 1725)) ||
         ((pixel_index >= 1805) && (pixel_index <= 1822)) ||
         ((pixel_index >= 1900) && (pixel_index <= 1917)) ||
         ((pixel_index >= 1996) && (pixel_index <= 2013)) ||
         ((pixel_index >= 2092) && (pixel_index <= 2109)) ||
         ((pixel_index >= 2188) && (pixel_index <= 2205)) ||
         ((pixel_index >= 2284) && (pixel_index <= 2300)) ||
         ((pixel_index >= 2379) && (pixel_index <= 2396)) ||
         ((pixel_index >= 2475) && (pixel_index <= 2492)) ||
         ((pixel_index >= 2570) && (pixel_index <= 2588)) ||
         ((pixel_index >= 2666) && (pixel_index <= 2683)) ||
         ((pixel_index >= 2762) && (pixel_index <= 2779)) ||
         ((pixel_index >= 2857) && (pixel_index <= 2875)) ||
         ((pixel_index >= 2953) && (pixel_index <= 2970)) ||
         ((pixel_index >= 3050) && (pixel_index <= 3066)) ||
         ((pixel_index >= 3147) && (pixel_index <= 3161)) ||
         ((pixel_index >= 3244) && (pixel_index <= 3257)) ||
         ((pixel_index >= 3341) && (pixel_index <= 3353)) ||
         ((pixel_index >= 3437) && (pixel_index <= 3449)) ||
         ((pixel_index >= 3534) && (pixel_index <= 3544)) ||
         ((pixel_index >= 3630) && (pixel_index <= 3639)) ||
         ((pixel_index >= 3727) && (pixel_index <= 3735)) ||
         ((pixel_index >= 3823) && (pixel_index <= 3831)) ||
         ((pixel_index >= 3919) && (pixel_index <= 3926)) ||
         ((pixel_index >= 4015) && (pixel_index <= 4022)) ||
         ((pixel_index >= 4111) && (pixel_index <= 4117)) ||
         ((pixel_index >= 4207) && (pixel_index <= 4213)) ||
         ((pixel_index >= 4303) && (pixel_index <= 4309)) ||
         ((pixel_index >= 4398) && (pixel_index <= 4404)) ||
         ((pixel_index >= 4493) && (pixel_index <= 4499)) ||
         ((pixel_index >= 4587) && (pixel_index <= 4595)) ||
         ((pixel_index >= 4680) && (pixel_index <= 4690)) ||
         ((pixel_index >= 4775) && (pixel_index <= 4786)) ||
         ((pixel_index >= 4870) && (pixel_index <= 4881)) ||
         ((pixel_index >= 4965) && (pixel_index <= 4976)) ||
         ((pixel_index >= 5060) && (pixel_index <= 5072)) ||
         ((pixel_index >= 5155) && (pixel_index <= 5167)) ||
         ((pixel_index >= 5249) && (pixel_index <= 5263)) ||
         ((pixel_index >= 5345) && (pixel_index <= 5358)) ||
         ((pixel_index >= 5441) && (pixel_index <= 5453)) ||
         ((pixel_index >= 5536) && (pixel_index <= 5548)) ||
         ((pixel_index >= 5632) && (pixel_index <= 5644)) ||
         ((pixel_index >= 5728) && (pixel_index <= 5739)) ||
         ((pixel_index >= 5824) && (pixel_index <= 5834)) ||
         ((pixel_index >= 5921) && (pixel_index <= 5929)) ||
         ((pixel_index >= 6017) && (pixel_index <= 6024)) ||
         (pixel_index >= 6113) && (pixel_index <= 6120))
  oled_data = 16'b1010000000011110;
else if (((pixel_index >= 1002) && (pixel_index <= 1011)) ||
         ((pixel_index >= 1096) && (pixel_index <= 1098)) ||
         ((pixel_index >= 1104) && (pixel_index <= 1110)) ||
         pixel_index == 1209 || pixel_index == 2045 || pixel_index == 2141 ||
         pixel_index == 2236 ||
         ((pixel_index >= 2332) && (pixel_index <= 2333)) ||
         ((pixel_index >= 2427) && (pixel_index <= 2429)) ||
         ((pixel_index >= 2523) && (pixel_index <= 2525)) ||
         ((pixel_index >= 2619) && (pixel_index <= 2620)) ||
         ((pixel_index >= 2715) && (pixel_index <= 2716)) ||
         ((pixel_index >= 2810) && (pixel_index <= 2812)) ||
         ((pixel_index >= 2906) && (pixel_index <= 2908)) ||
         ((pixel_index >= 3002) && (pixel_index <= 3005)) ||
         ((pixel_index >= 3098) && (pixel_index <= 3100)) ||
         pixel_index == 3128 ||
         ((pixel_index >= 3194) && (pixel_index <= 3195)) ||
         ((pixel_index >= 3211) && (pixel_index <= 3212)) ||
         ((pixel_index >= 3289) && (pixel_index <= 3291)) ||
         pixel_index == 3307 ||
         ((pixel_index >= 3385) && (pixel_index <= 3387)) ||
         pixel_index == 3412 ||
         ((pixel_index >= 3480) && (pixel_index <= 3483)) ||
         ((pixel_index >= 3575) && (pixel_index <= 3579)) ||
         pixel_index == 3601 ||
         ((pixel_index >= 3670) && (pixel_index <= 3672)) ||
         pixel_index == 3693 ||
         ((pixel_index >= 3766) && (pixel_index <= 3767)) ||
         ((pixel_index >= 3861) && (pixel_index <= 3863)) ||
         pixel_index == 3884 ||
         ((pixel_index >= 3956) && (pixel_index <= 3958)) ||
         pixel_index == 3975 || pixel_index == 3979 ||
         ((pixel_index >= 4052) && (pixel_index <= 4056)) ||
         pixel_index == 4059 ||
         ((pixel_index >= 4068) && (pixel_index <= 4069)) ||
         pixel_index == 4071 || pixel_index == 4074 || pixel_index == 4079 ||
         ((pixel_index >= 4147) && (pixel_index <= 4153)) ||
         pixel_index == 4155 ||
         ((pixel_index >= 4166) && (pixel_index <= 4168)) ||
         ((pixel_index >= 4243) && (pixel_index <= 4248)) ||
         pixel_index == 4263 || pixel_index == 4297 || pixel_index == 4301 ||
         ((pixel_index >= 4339) && (pixel_index <= 4343)) ||
         pixel_index == 4384 ||
         ((pixel_index >= 4394) && (pixel_index <= 4396)) ||
         ((pixel_index >= 4435) && (pixel_index <= 4438)) ||
         pixel_index == 4481 ||
         ((pixel_index >= 4487) && (pixel_index <= 4488)) ||
         ((pixel_index >= 4531) && (pixel_index <= 4533)) ||
         ((pixel_index >= 4627) && (pixel_index <= 4630)) ||
         ((pixel_index >= 4674) && (pixel_index <= 4678)) ||
         ((pixel_index >= 4724) && (pixel_index <= 4728)) ||
         ((pixel_index >= 4770) && (pixel_index <= 4773)) ||
         ((pixel_index >= 4821) && (pixel_index <= 4827)) ||
         ((pixel_index >= 4866) && (pixel_index <= 4867)) ||
         ((pixel_index >= 4919) && (pixel_index <= 4923)) ||
         ((pixel_index >= 4961) && (pixel_index <= 4962)) ||
         ((pixel_index >= 5018) && (pixel_index <= 5021)) ||
         pixel_index == 5056 ||
         ((pixel_index >= 5117) && (pixel_index <= 5118)) ||
         pixel_index == 5151 ||
         ((pixel_index >= 5212) && (pixel_index <= 5214)) ||
         ((pixel_index >= 5246) && (pixel_index <= 5247)) ||
         ((pixel_index >= 5308) && (pixel_index <= 5309)) ||
         pixel_index == 5342 ||
         ((pixel_index >= 5404) && (pixel_index <= 5405)) ||
         pixel_index == 5438 ||
         ((pixel_index >= 5500) && (pixel_index <= 5501)) ||
         ((pixel_index >= 5595) && (pixel_index <= 5597)) ||
         ((pixel_index >= 5691) && (pixel_index <= 5692)) ||
         ((pixel_index >= 5786) && (pixel_index <= 5788)) ||
         pixel_index == 5822 ||
         ((pixel_index >= 5882) && (pixel_index <= 5884)) ||
         pixel_index == 5918 ||
         ((pixel_index >= 5978) && (pixel_index <= 5979)) ||
         pixel_index == 6014 ||
         ((pixel_index >= 6073) && (pixel_index <= 6075)) ||
         (pixel_index >= 6110) && (pixel_index <= 6111))
  oled_data = 16'b1010010100010100;
else if (pixel_index == 1099 ||
         ((pixel_index >= 1191) && (pixel_index <= 1192)) ||
         pixel_index == 1286 || pixel_index == 1381 || pixel_index == 1475 ||
         pixel_index == 1665 || pixel_index == 1760 || pixel_index == 1855 ||
         pixel_index == 2046 || pixel_index == 2237)
  oled_data = 16'b1010011110010100;
else if (((pixel_index >= 1100) && (pixel_index <= 1102)) ||
         ((pixel_index >= 1193) && (pixel_index <= 1207)) ||
         ((pixel_index >= 1287) && (pixel_index <= 1306)) ||
         ((pixel_index >= 1382) && (pixel_index <= 1404)) ||
         ((pixel_index >= 1476) && (pixel_index <= 1501)) ||
         ((pixel_index >= 1571) && (pixel_index <= 1598)) ||
         ((pixel_index >= 1666) && (pixel_index <= 1695)) ||
         ((pixel_index >= 1761) && (pixel_index <= 1793)) ||
         ((pixel_index >= 1856) && (pixel_index <= 1889)) ||
         ((pixel_index >= 1951) && (pixel_index <= 1985)) ||
         ((pixel_index >= 2047) && (pixel_index <= 2082)) ||
         ((pixel_index >= 2142) && (pixel_index <= 2178)) ||
         ((pixel_index >= 2238) && (pixel_index <= 2258)) ||
         ((pixel_index >= 2260) && (pixel_index <= 2274)) ||
         ((pixel_index >= 2335) && (pixel_index <= 2349)) ||
         pixel_index == 2352 ||
         ((pixel_index >= 2359) && (pixel_index <= 2371)) ||
         ((pixel_index >= 2431) && (pixel_index <= 2442)) ||
         ((pixel_index >= 2459) && (pixel_index <= 2467)) ||
         ((pixel_index >= 2530) && (pixel_index <= 2535)) ||
         ((pixel_index >= 2556) && (pixel_index <= 2563)) ||
         pixel_index == 2625 ||
         ((pixel_index >= 2629) && (pixel_index <= 2631)) ||
         ((pixel_index >= 2653) && (pixel_index <= 2659)) ||
         ((pixel_index >= 2750) && (pixel_index <= 2755)) ||
         ((pixel_index >= 2848) && (pixel_index <= 2851)) ||
         ((pixel_index >= 2944) && (pixel_index <= 2947)) ||
         pixel_index == 3040 || pixel_index == 3044 || pixel_index == 3137 ||
         pixel_index == 3222 || pixel_index == 3224 ||
         ((pixel_index >= 3309) && (pixel_index <= 3312)) ||
         ((pixel_index >= 3317) && (pixel_index <= 3318)) ||
         pixel_index == 3320 ||
         ((pixel_index >= 3322) && (pixel_index <= 3324)) ||
         ((pixel_index >= 3333) && (pixel_index <= 3335)) ||
         ((pixel_index >= 3405) && (pixel_index <= 3410)) ||
         pixel_index == 3414 ||
         ((pixel_index >= 3416) && (pixel_index <= 3421)) ||
         ((pixel_index >= 3430) && (pixel_index <= 3432)) ||
         ((pixel_index >= 3500) && (pixel_index <= 3504)) ||
         ((pixel_index >= 3512) && (pixel_index <= 3519)) ||
         ((pixel_index >= 3525) && (pixel_index <= 3529)) ||
         pixel_index == 3596 || pixel_index == 3598 || pixel_index == 3610 ||
         ((pixel_index >= 3612) && (pixel_index <= 3616)) ||
         ((pixel_index >= 3622) && (pixel_index <= 3623)) ||
         ((pixel_index >= 3625) && (pixel_index <= 3626)) ||
         pixel_index == 3673 ||
         ((pixel_index >= 3708) && (pixel_index <= 3714)) ||
         ((pixel_index >= 3717) && (pixel_index <= 3721)) ||
         ((pixel_index >= 3805) && (pixel_index <= 3811)) ||
         ((pixel_index >= 3813) && (pixel_index <= 3815)) ||
         ((pixel_index >= 3902) && (pixel_index <= 3908)) ||
         ((pixel_index >= 3910) && (pixel_index <= 3911)) ||
         pixel_index == 3959 ||
         ((pixel_index >= 3999) && (pixel_index <= 4004)) ||
         pixel_index == 4006 ||
         ((pixel_index >= 4097) && (pixel_index <= 4101)) ||
         pixel_index == 4103 ||
         ((pixel_index >= 4196) && (pixel_index <= 4197)) ||
         pixel_index == 4293)
  oled_data = 16'b1111011110010100;
else if (pixel_index == 1103 || pixel_index == 1208 || pixel_index == 1502 ||
         pixel_index == 2259 || pixel_index == 2334 ||
         ((pixel_index >= 2350) && (pixel_index <= 2351)) ||
         ((pixel_index >= 2353) && (pixel_index <= 2358)) ||
         pixel_index == 2430 ||
         ((pixel_index >= 2443) && (pixel_index <= 2458)) ||
         ((pixel_index >= 2526) && (pixel_index <= 2529)) ||
         ((pixel_index >= 2536) && (pixel_index <= 2540)) ||
         pixel_index == 2543 ||
         ((pixel_index >= 2554) && (pixel_index <= 2555)) ||
         ((pixel_index >= 2621) && (pixel_index <= 2624)) ||
         ((pixel_index >= 2626) && (pixel_index <= 2628)) ||
         ((pixel_index >= 2632) && (pixel_index <= 2634)) ||
         ((pixel_index >= 2651) && (pixel_index <= 2652)) ||
         pixel_index == 2660 ||
         ((pixel_index >= 2717) && (pixel_index <= 2728)) ||
         ((pixel_index >= 2748) && (pixel_index <= 2749)) ||
         pixel_index == 2756 ||
         ((pixel_index >= 2813) && (pixel_index <= 2824)) ||
         ((pixel_index >= 2845) && (pixel_index <= 2847)) ||
         pixel_index == 2852 ||
         ((pixel_index >= 2909) && (pixel_index <= 2919)) ||
         ((pixel_index >= 2942) && (pixel_index <= 2943)) ||
         ((pixel_index >= 2948) && (pixel_index <= 2949)) ||
         ((pixel_index >= 3007) && (pixel_index <= 3011)) ||
         ((pixel_index >= 3038) && (pixel_index <= 3039)) ||
         ((pixel_index >= 3041) && (pixel_index <= 3043)) ||
         ((pixel_index >= 3045) && (pixel_index <= 3046)) ||
         ((pixel_index >= 3104) && (pixel_index <= 3105)) ||
         ((pixel_index >= 3123) && (pixel_index <= 3125)) ||
         pixel_index == 3127 || pixel_index == 3129 ||
         ((pixel_index >= 3135) && (pixel_index <= 3136)) ||
         ((pixel_index >= 3138) && (pixel_index <= 3142)) ||
         pixel_index == 3213 ||
         ((pixel_index >= 3215) && (pixel_index <= 3221)) ||
         pixel_index == 3223 ||
         ((pixel_index >= 3225) && (pixel_index <= 3226)) ||
         ((pixel_index >= 3232) && (pixel_index <= 3238)) ||
         pixel_index == 3308 ||
         ((pixel_index >= 3313) && (pixel_index <= 3316)) ||
         pixel_index == 3319 || pixel_index == 3321 ||
         ((pixel_index >= 3325) && (pixel_index <= 3332)) ||
         ((pixel_index >= 3402) && (pixel_index <= 3404)) ||
         pixel_index == 3411 || pixel_index == 3413 || pixel_index == 3415 ||
         ((pixel_index >= 3422) && (pixel_index <= 3429)) ||
         ((pixel_index >= 3496) && (pixel_index <= 3499)) ||
         ((pixel_index >= 3505) && (pixel_index <= 3506)) ||
         ((pixel_index >= 3510) && (pixel_index <= 3511)) ||
         ((pixel_index >= 3520) && (pixel_index <= 3521)) ||
         ((pixel_index >= 3523) && (pixel_index <= 3524)) ||
         ((pixel_index >= 3592) && (pixel_index <= 3595)) ||
         pixel_index == 3597 ||
         ((pixel_index >= 3599) && (pixel_index <= 3600)) ||
         ((pixel_index >= 3608) && (pixel_index <= 3609)) ||
         pixel_index == 3611 ||
         ((pixel_index >= 3617) && (pixel_index <= 3621)) ||
         pixel_index == 3624 || pixel_index == 3627 ||
         ((pixel_index >= 3674) && (pixel_index <= 3675)) ||
         pixel_index == 3677 ||
         ((pixel_index >= 3688) && (pixel_index <= 3692)) ||
         pixel_index == 3694 ||
         ((pixel_index >= 3706) && (pixel_index <= 3707)) ||
         ((pixel_index >= 3715) && (pixel_index <= 3716)) ||
         ((pixel_index >= 3722) && (pixel_index <= 3724)) ||
         ((pixel_index >= 3768) && (pixel_index <= 3772)) ||
         ((pixel_index >= 3783) && (pixel_index <= 3789)) ||
         ((pixel_index >= 3803) && (pixel_index <= 3804)) ||
         pixel_index == 3812 ||
         ((pixel_index >= 3816) && (pixel_index <= 3820)) ||
         ((pixel_index >= 3864) && (pixel_index <= 3867)) ||
         ((pixel_index >= 3878) && (pixel_index <= 3883)) ||
         ((pixel_index >= 3900) && (pixel_index <= 3901)) ||
         pixel_index == 3909 ||
         ((pixel_index >= 3912) && (pixel_index <= 3916)) ||
         ((pixel_index >= 3960) && (pixel_index <= 3963)) ||
         pixel_index == 3974 ||
         ((pixel_index >= 3976) && (pixel_index <= 3978)) ||
         ((pixel_index >= 3996) && (pixel_index <= 3998)) ||
         pixel_index == 4005 ||
         ((pixel_index >= 4007) && (pixel_index <= 4013)) ||
         ((pixel_index >= 4057) && (pixel_index <= 4058)) ||
         ((pixel_index >= 4072) && (pixel_index <= 4073)) ||
         ((pixel_index >= 4093) && (pixel_index <= 4096)) ||
         pixel_index == 4102 ||
         ((pixel_index >= 4104) && (pixel_index <= 4109)) ||
         pixel_index == 4154 ||
         ((pixel_index >= 4190) && (pixel_index <= 4195)) ||
         ((pixel_index >= 4198) && (pixel_index <= 4205)) ||
         ((pixel_index >= 4287) && (pixel_index <= 4292)) ||
         ((pixel_index >= 4294) && (pixel_index <= 4296)) ||
         ((pixel_index >= 4298) && (pixel_index <= 4300)) ||
         ((pixel_index >= 4385) && (pixel_index <= 4393)) ||
         ((pixel_index >= 4482) && (pixel_index <= 4486)) ||
         (pixel_index >= 4578) && (pixel_index <= 4582))
  oled_data = 16'b1111010100010100;
else if (pixel_index == 1151 || pixel_index == 1247 || pixel_index == 1343 ||
         pixel_index == 1439 || pixel_index == 1535 || pixel_index == 1631 ||
         ((pixel_index >= 1726) && (pixel_index <= 1727)) ||
         pixel_index == 1823 ||
         ((pixel_index >= 1918) && (pixel_index <= 1919)) ||
         ((pixel_index >= 2014) && (pixel_index <= 2015)) ||
         ((pixel_index >= 2110) && (pixel_index <= 2111)) ||
         ((pixel_index >= 2206) && (pixel_index <= 2207)) ||
         ((pixel_index >= 2301) && (pixel_index <= 2303)) ||
         ((pixel_index >= 2397) && (pixel_index <= 2399)) ||
         ((pixel_index >= 2493) && (pixel_index <= 2495)) ||
         ((pixel_index >= 2589) && (pixel_index <= 2591)) ||
         ((pixel_index >= 2684) && (pixel_index <= 2687)) ||
         ((pixel_index >= 2780) && (pixel_index <= 2783)) ||
         ((pixel_index >= 2876) && (pixel_index <= 2879)) ||
         ((pixel_index >= 2971) && (pixel_index <= 2975)) ||
         ((pixel_index >= 3067) && (pixel_index <= 3071)) ||
         ((pixel_index >= 3162) && (pixel_index <= 3167)) ||
         ((pixel_index >= 3258) && (pixel_index <= 3263)) ||
         ((pixel_index >= 3354) && (pixel_index <= 3359)) ||
         ((pixel_index >= 3450) && (pixel_index <= 3455)) ||
         ((pixel_index >= 3545) && (pixel_index <= 3551)) ||
         ((pixel_index >= 3640) && (pixel_index <= 3647)) ||
         ((pixel_index >= 3736) && (pixel_index <= 3743)) ||
         ((pixel_index >= 3832) && (pixel_index <= 3839)) ||
         ((pixel_index >= 3927) && (pixel_index <= 3935)) ||
         ((pixel_index >= 4023) && (pixel_index <= 4031)) ||
         ((pixel_index >= 4118) && (pixel_index <= 4127)) ||
         ((pixel_index >= 4214) && (pixel_index <= 4223)) ||
         ((pixel_index >= 4310) && (pixel_index <= 4319)) ||
         ((pixel_index >= 4405) && (pixel_index <= 4415)) ||
         ((pixel_index >= 4500) && (pixel_index <= 4511)) ||
         ((pixel_index >= 4596) && (pixel_index <= 4607)) ||
         ((pixel_index >= 4691) && (pixel_index <= 4703)) ||
         ((pixel_index >= 4787) && (pixel_index <= 4799)) ||
         ((pixel_index >= 4882) && (pixel_index <= 4895)) ||
         ((pixel_index >= 4977) && (pixel_index <= 4991)) ||
         ((pixel_index >= 5073) && (pixel_index <= 5087)) ||
         ((pixel_index >= 5168) && (pixel_index <= 5183)) ||
         ((pixel_index >= 5264) && (pixel_index <= 5279)) ||
         ((pixel_index >= 5359) && (pixel_index <= 5375)) ||
         ((pixel_index >= 5454) && (pixel_index <= 5471)) ||
         ((pixel_index >= 5549) && (pixel_index <= 5567)) ||
         ((pixel_index >= 5645) && (pixel_index <= 5663)) ||
         ((pixel_index >= 5740) && (pixel_index <= 5759)) ||
         ((pixel_index >= 5835) && (pixel_index <= 5855)) ||
         ((pixel_index >= 5930) && (pixel_index <= 5951)) ||
         ((pixel_index >= 6025) && (pixel_index <= 6047)) ||
         (pixel_index >= 6121) && (pixel_index <= 6143))
  oled_data = 16'b1111000000011110;
else if (pixel_index == 1285 || pixel_index == 1380 ||
         ((pixel_index >= 1569) && (pixel_index <= 1570)) ||
         pixel_index == 1950)
  oled_data = 16'b1010011110011110;
else if (pixel_index == 1307 || pixel_index == 1405 || pixel_index == 1697 ||
         pixel_index == 1890 || pixel_index == 1987 || pixel_index == 2083 ||
         pixel_index == 2276 || pixel_index == 2372 || pixel_index == 2468 ||
         pixel_index == 2564 || pixel_index == 2853 || pixel_index == 3143 ||
         ((pixel_index >= 3239) && (pixel_index <= 3241)) ||
         ((pixel_index >= 3337) && (pixel_index <= 3338)) ||
         ((pixel_index >= 3434) && (pixel_index <= 3435)) ||
         ((pixel_index >= 3531) && (pixel_index <= 3532)) ||
         pixel_index == 3628 || pixel_index == 3725 || pixel_index == 3821 ||
         pixel_index == 3917)
  oled_data = 16'b1111010100011110;
else if (pixel_index == 1599 || pixel_index == 1696 || pixel_index == 1986 ||
         pixel_index == 2179 || pixel_index == 2275 || pixel_index == 3336 ||
         pixel_index == 3433 || pixel_index == 3530)
  oled_data = 16'b1111011110011110;
else if (pixel_index == 2541 || pixel_index == 2544 || pixel_index == 2546 ||
         pixel_index == 2553 || pixel_index == 2635 || pixel_index == 3106 ||
         pixel_index == 3522 || pixel_index == 4060)
  oled_data = 16'b1111010100001010;
else if (
    pixel_index == 2542 || pixel_index == 2545 ||
    ((pixel_index >= 2547) && (pixel_index <= 2552)) ||
    ((pixel_index >= 2636) && (pixel_index <= 2644)) ||
    ((pixel_index >= 2648) && (pixel_index <= 2650)) ||
    ((pixel_index >= 2729) && (pixel_index <= 2730)) || pixel_index == 2741 ||
    pixel_index == 2747 || pixel_index == 2825 || pixel_index == 2832 ||
    pixel_index == 2844 || pixel_index == 2920 || pixel_index == 2941 ||
    pixel_index == 3006 || ((pixel_index >= 3012) && (pixel_index <= 3015)) ||
    pixel_index == 3025 || pixel_index == 3028 || pixel_index == 3034 ||
    pixel_index == 3037 || ((pixel_index >= 3101) && (pixel_index <= 3103)) ||
    ((pixel_index >= 3107) && (pixel_index <= 3111)) || pixel_index == 3122 ||
    pixel_index == 3126 || pixel_index == 3130 ||
    ((pixel_index >= 3133) && (pixel_index <= 3134)) ||
    ((pixel_index >= 3196) && (pixel_index <= 3206)) || pixel_index == 3214 ||
    ((pixel_index >= 3227) && (pixel_index <= 3231)) ||
    ((pixel_index >= 3292) && (pixel_index <= 3294)) ||
    ((pixel_index >= 3296) && (pixel_index <= 3301)) || pixel_index == 3306 ||
    ((pixel_index >= 3388) && (pixel_index <= 3389)) ||
    ((pixel_index >= 3391) && (pixel_index <= 3392)) ||
    ((pixel_index >= 3396) && (pixel_index <= 3397)) || pixel_index == 3401 ||
    ((pixel_index >= 3484) && (pixel_index <= 3485)) ||
    ((pixel_index >= 3487) && (pixel_index <= 3489)) ||
    ((pixel_index >= 3491) && (pixel_index <= 3495)) || pixel_index == 3507 ||
    pixel_index == 3509 || ((pixel_index >= 3580) && (pixel_index <= 3581)) ||
    pixel_index == 3583 || ((pixel_index >= 3587) && (pixel_index <= 3591)) ||
    pixel_index == 3602 || pixel_index == 3607 || pixel_index == 3676 ||
    pixel_index == 3681 || ((pixel_index >= 3685) && (pixel_index <= 3687)) ||
    ((pixel_index >= 3695) && (pixel_index <= 3696)) ||
    ((pixel_index >= 3704) && (pixel_index <= 3705)) || pixel_index == 3773 ||
    ((pixel_index >= 3781) && (pixel_index <= 3782)) || pixel_index == 3790 ||
    pixel_index == 3792 || ((pixel_index >= 3801) && (pixel_index <= 3802)) ||
    ((pixel_index >= 3868) && (pixel_index <= 3869)) ||
    ((pixel_index >= 3876) && (pixel_index <= 3877)) ||
    ((pixel_index >= 3885) && (pixel_index <= 3887)) || pixel_index == 3896 ||
    ((pixel_index >= 3898) && (pixel_index <= 3899)) || pixel_index == 3964 ||
    pixel_index == 3966 || ((pixel_index >= 3972) && (pixel_index <= 3973)) ||
    ((pixel_index >= 3980) && (pixel_index <= 3982)) || pixel_index == 3995 ||
    pixel_index == 4062 || pixel_index == 4070 ||
    ((pixel_index >= 4075) && (pixel_index <= 4078)) || pixel_index == 4092 ||
    ((pixel_index >= 4163) && (pixel_index <= 4165)) ||
    ((pixel_index >= 4169) && (pixel_index <= 4172)) ||
    ((pixel_index >= 4188) && (pixel_index <= 4189)) ||
    ((pixel_index >= 4249) && (pixel_index <= 4253)) ||
    ((pixel_index >= 4259) && (pixel_index <= 4262)) ||
    ((pixel_index >= 4264) && (pixel_index <= 4267)) ||
    ((pixel_index >= 4285) && (pixel_index <= 4286)) ||
    ((pixel_index >= 4344) && (pixel_index <= 4349)) ||
    ((pixel_index >= 4355) && (pixel_index <= 4362)) ||
    ((pixel_index >= 4364) && (pixel_index <= 4365)) ||
    ((pixel_index >= 4381) && (pixel_index <= 4383)) ||
    ((pixel_index >= 4439) && (pixel_index <= 4443)) ||
    ((pixel_index >= 4449) && (pixel_index <= 4458)) ||
    ((pixel_index >= 4478) && (pixel_index <= 4480)) ||
    ((pixel_index >= 4534) && (pixel_index <= 4539)) || pixel_index == 4546 ||
    ((pixel_index >= 4548) && (pixel_index <= 4553)) ||
    ((pixel_index >= 4575) && (pixel_index <= 4577)) ||
    ((pixel_index >= 4631) && (pixel_index <= 4636)) || pixel_index == 4640 ||
    ((pixel_index >= 4643) && (pixel_index <= 4648)) ||
    ((pixel_index >= 4671) && (pixel_index <= 4673)) ||
    ((pixel_index >= 4729) && (pixel_index <= 4731)) ||
    ((pixel_index >= 4736) && (pixel_index <= 4737)) ||
    ((pixel_index >= 4740) && (pixel_index <= 4744)) ||
    ((pixel_index >= 4767) && (pixel_index <= 4769)) || pixel_index == 4832 ||
    ((pixel_index >= 4834) && (pixel_index <= 4839)) ||
    ((pixel_index >= 4864) && (pixel_index <= 4865)) ||
    ((pixel_index >= 4927) && (pixel_index <= 4928)) || pixel_index == 4930 ||
    ((pixel_index >= 4932) && (pixel_index <= 4933)) || pixel_index == 4935 ||
    pixel_index == 4951 || ((pixel_index >= 4959) && (pixel_index <= 4960)) ||
    pixel_index == 5025 || pixel_index == 5027 || pixel_index == 5049 ||
    ((pixel_index >= 5051) && (pixel_index <= 5055)) || pixel_index == 5119 ||
    pixel_index == 5123 || ((pixel_index >= 5143) && (pixel_index <= 5150)) ||
    ((pixel_index >= 5215) && (pixel_index <= 5216)) || pixel_index == 5218 ||
    ((pixel_index >= 5235) && (pixel_index <= 5236)) ||
    ((pixel_index >= 5239) && (pixel_index <= 5245)) || pixel_index == 5310 ||
    pixel_index == 5314 || ((pixel_index >= 5317) && (pixel_index <= 5318)) ||
    pixel_index == 5324 || pixel_index == 5326 ||
    ((pixel_index >= 5331) && (pixel_index <= 5341)) || pixel_index == 5406 ||
    ((pixel_index >= 5419) && (pixel_index <= 5420)) ||
    ((pixel_index >= 5424) && (pixel_index <= 5437)) || pixel_index == 5502 ||
    ((pixel_index >= 5521) && (pixel_index <= 5525)) || pixel_index == 5527 ||
    pixel_index == 5531 || pixel_index == 5533 || pixel_index == 5629 ||
    pixel_index == 5693 || pixel_index == 5725 || pixel_index == 5789 ||
    pixel_index == 5821 || pixel_index == 5885 || pixel_index == 5917 ||
    pixel_index == 5980 || ((pixel_index >= 6012) && (pixel_index <= 6013)) ||
    ((pixel_index >= 6076) && (pixel_index <= 6077)) ||
    (pixel_index >= 6108) && (pixel_index <= 6109))
  oled_data = 16'b1010010100001010;
else if (((pixel_index >= 2645) && (pixel_index <= 2647)) ||
         pixel_index == 2731 ||
         ((pixel_index >= 2736) && (pixel_index <= 2740)) ||
         pixel_index == 2743 || pixel_index == 2833 ||
         ((pixel_index >= 2835) && (pixel_index <= 2836)) ||
         pixel_index == 2932 || pixel_index == 2940 || pixel_index == 3016 ||
         pixel_index == 3026 || pixel_index == 3036 || pixel_index == 3132 ||
         pixel_index == 3295 || pixel_index == 3302 || pixel_index == 3305 ||
         pixel_index == 3390 ||
         ((pixel_index >= 3393) && (pixel_index <= 3395)) ||
         pixel_index == 3398 || pixel_index == 3486 || pixel_index == 3490 ||
         pixel_index == 3582 ||
         ((pixel_index >= 3584) && (pixel_index <= 3586)) ||
         pixel_index == 3678 || pixel_index == 3680 || pixel_index == 3682 ||
         pixel_index == 3684 ||
         ((pixel_index >= 3776) && (pixel_index <= 3778)) ||
         pixel_index == 3780 || pixel_index == 3791 || pixel_index == 3870 ||
         pixel_index == 3873 || pixel_index == 3897 || pixel_index == 3965 ||
         pixel_index == 3970 || pixel_index == 4061 || pixel_index == 4063 ||
         pixel_index == 4065 || pixel_index == 4067 || pixel_index == 4091 ||
         pixel_index == 4156 || pixel_index == 4159 ||
         ((pixel_index >= 4173) && (pixel_index <= 4174)) ||
         pixel_index == 4268 || pixel_index == 4284 || pixel_index == 4350 ||
         ((pixel_index >= 4353) && (pixel_index <= 4354)) ||
         pixel_index == 4363 ||
         ((pixel_index >= 4444) && (pixel_index <= 4446)) ||
         ((pixel_index >= 4476) && (pixel_index <= 4477)) ||
         ((pixel_index >= 4540) && (pixel_index <= 4541)) ||
         ((pixel_index >= 4544) && (pixel_index <= 4545)) ||
         pixel_index == 4547 || pixel_index == 4574 ||
         ((pixel_index >= 4641) && (pixel_index <= 4642)) ||
         pixel_index == 4649 ||
         ((pixel_index >= 4669) && (pixel_index <= 4670)) ||
         ((pixel_index >= 4738) && (pixel_index <= 4739)) ||
         pixel_index == 4745 ||
         ((pixel_index >= 4765) && (pixel_index <= 4766)) ||
         pixel_index == 4833 ||
         ((pixel_index >= 4840) && (pixel_index <= 4841)) ||
         ((pixel_index >= 4857) && (pixel_index <= 4858)) ||
         pixel_index == 4861 || pixel_index == 4863 || pixel_index == 4929 ||
         pixel_index == 4931 || pixel_index == 4934 || pixel_index == 4936 ||
         ((pixel_index >= 4952) && (pixel_index <= 4957)) ||
         pixel_index == 5024 || pixel_index == 5026 ||
         ((pixel_index >= 5028) && (pixel_index <= 5032)) ||
         ((pixel_index >= 5046) && (pixel_index <= 5048)) ||
         pixel_index == 5050 ||
         ((pixel_index >= 5120) && (pixel_index <= 5122)) ||
         ((pixel_index >= 5124) && (pixel_index <= 5128)) ||
         pixel_index == 5132 ||
         ((pixel_index >= 5138) && (pixel_index <= 5140)) ||
         pixel_index == 5142 || pixel_index == 5217 ||
         ((pixel_index >= 5219) && (pixel_index <= 5224)) ||
         ((pixel_index >= 5227) && (pixel_index <= 5232)) ||
         pixel_index == 5234 ||
         ((pixel_index >= 5237) && (pixel_index <= 5238)) ||
         pixel_index == 5313 ||
         ((pixel_index >= 5315) && (pixel_index <= 5316)) ||
         ((pixel_index >= 5319) && (pixel_index <= 5323)) ||
         pixel_index == 5325 ||
         ((pixel_index >= 5327) && (pixel_index <= 5330)) ||
         pixel_index == 5415 || pixel_index == 5418 ||
         ((pixel_index >= 5421) && (pixel_index <= 5423)) ||
         pixel_index == 5520 || pixel_index == 5528 || pixel_index == 5530 ||
         pixel_index == 5816 || pixel_index == 5916 || pixel_index == 6011)
  oled_data = 16'b1010010100000000;
else if (((pixel_index >= 2732) && (pixel_index <= 2733)) ||
         pixel_index == 2735 || pixel_index == 2742 ||
         ((pixel_index >= 2745) && (pixel_index <= 2746)) ||
         ((pixel_index >= 2826) && (pixel_index <= 2827)) ||
         pixel_index == 2831 || pixel_index == 2834 || pixel_index == 2837 ||
         pixel_index == 2839 || pixel_index == 2843 || pixel_index == 2921 ||
         ((pixel_index >= 2928) && (pixel_index <= 2931)) ||
         pixel_index == 2933 || pixel_index == 3027 ||
         ((pixel_index >= 3029) && (pixel_index <= 3030)) ||
         pixel_index == 3112 || pixel_index == 3121 || pixel_index == 3131 ||
         ((pixel_index >= 3207) && (pixel_index <= 3209)) ||
         ((pixel_index >= 3303) && (pixel_index <= 3304)) ||
         ((pixel_index >= 3399) && (pixel_index <= 3400)) ||
         pixel_index == 3508 || pixel_index == 3603 ||
         ((pixel_index >= 3605) && (pixel_index <= 3606)) ||
         pixel_index == 3679 || pixel_index == 3683 ||
         ((pixel_index >= 3774) && (pixel_index <= 3775)) ||
         pixel_index == 3779 ||
         ((pixel_index >= 3871) && (pixel_index <= 3872)) ||
         ((pixel_index >= 3874) && (pixel_index <= 3875)) ||
         pixel_index == 3888 ||
         ((pixel_index >= 3967) && (pixel_index <= 3969)) ||
         pixel_index == 3971 || pixel_index == 3983 ||
         ((pixel_index >= 3992) && (pixel_index <= 3994)) ||
         pixel_index == 4064 || pixel_index == 4066 || pixel_index == 4090 ||
         ((pixel_index >= 4157) && (pixel_index <= 4158)) ||
         ((pixel_index >= 4160) && (pixel_index <= 4162)) ||
         ((pixel_index >= 4186) && (pixel_index <= 4187)) ||
         ((pixel_index >= 4254) && (pixel_index <= 4258)) ||
         ((pixel_index >= 4269) && (pixel_index <= 4270)) ||
         pixel_index == 4283 ||
         ((pixel_index >= 4351) && (pixel_index <= 4352)) ||
         ((pixel_index >= 4379) && (pixel_index <= 4380)) ||
         ((pixel_index >= 4447) && (pixel_index <= 4448)) ||
         ((pixel_index >= 4459) && (pixel_index <= 4461)) ||
         pixel_index == 4475 ||
         ((pixel_index >= 4542) && (pixel_index <= 4543)) ||
         ((pixel_index >= 4554) && (pixel_index <= 4555)) ||
         pixel_index == 4570 ||
         ((pixel_index >= 4572) && (pixel_index <= 4573)) ||
         ((pixel_index >= 4637) && (pixel_index <= 4639)) ||
         ((pixel_index >= 4650) && (pixel_index <= 4651)) ||
         ((pixel_index >= 4665) && (pixel_index <= 4668)) ||
         ((pixel_index >= 4734) && (pixel_index <= 4735)) ||
         ((pixel_index >= 4746) && (pixel_index <= 4747)) ||
         pixel_index == 4750 ||
         ((pixel_index >= 4761) && (pixel_index <= 4764)) ||
         ((pixel_index >= 4830) && (pixel_index <= 4831)) ||
         pixel_index == 4842 || pixel_index == 4846 || pixel_index == 4856 ||
         ((pixel_index >= 4859) && (pixel_index <= 4860)) ||
         pixel_index == 4862 || pixel_index == 4937 ||
         ((pixel_index >= 4940) && (pixel_index <= 4946)) ||
         pixel_index == 4958 || pixel_index == 5023 ||
         ((pixel_index >= 5033) && (pixel_index <= 5045)) ||
         ((pixel_index >= 5129) && (pixel_index <= 5131)) ||
         ((pixel_index >= 5133) && (pixel_index <= 5137)) ||
         pixel_index == 5141 ||
         ((pixel_index >= 5225) && (pixel_index <= 5226)) ||
         pixel_index == 5233 || pixel_index == 5312 ||
         ((pixel_index >= 5407) && (pixel_index <= 5409)) ||
         ((pixel_index >= 5413) && (pixel_index <= 5414)) ||
         ((pixel_index >= 5416) && (pixel_index <= 5417)) ||
         ((pixel_index >= 5503) && (pixel_index <= 5506)) ||
         pixel_index == 5511 ||
         ((pixel_index >= 5514) && (pixel_index <= 5519)) ||
         pixel_index == 5526 || pixel_index == 5529 || pixel_index == 5532 ||
         ((pixel_index >= 5599) && (pixel_index <= 5601)) ||
         pixel_index == 5609 || pixel_index == 5611 ||
         ((pixel_index >= 5613) && (pixel_index <= 5614)) ||
         ((pixel_index >= 5616) && (pixel_index <= 5628)) ||
         ((pixel_index >= 5694) && (pixel_index <= 5699)) ||
         ((pixel_index >= 5708) && (pixel_index <= 5724)) ||
         ((pixel_index >= 5790) && (pixel_index <= 5797)) ||
         ((pixel_index >= 5802) && (pixel_index <= 5806)) ||
         ((pixel_index >= 5808) && (pixel_index <= 5815)) ||
         ((pixel_index >= 5817) && (pixel_index <= 5820)) ||
         ((pixel_index >= 5886) && (pixel_index <= 5892)) ||
         ((pixel_index >= 5897) && (pixel_index <= 5903)) ||
         ((pixel_index >= 5905) && (pixel_index <= 5915)) ||
         ((pixel_index >= 5981) && (pixel_index <= 5986)) ||
         pixel_index == 5988 ||
         ((pixel_index >= 5991) && (pixel_index <= 5993)) ||
         pixel_index == 5995 ||
         ((pixel_index >= 5997) && (pixel_index <= 6010)) ||
         pixel_index == 6078 ||
         ((pixel_index >= 6080) && (pixel_index <= 6085)) ||
         ((pixel_index >= 6087) && (pixel_index <= 6089)) ||
         (pixel_index >= 6091) && (pixel_index <= 6107))
  oled_data = 16'b1010001010000000;
else if (pixel_index == 2734 || pixel_index == 2744 ||
         ((pixel_index >= 2828) && (pixel_index <= 2830)) ||
         pixel_index == 2922 ||
         ((pixel_index >= 2925) && (pixel_index <= 2926)) ||
         pixel_index == 3024 ||
         ((pixel_index >= 3119) && (pixel_index <= 3120)) ||
         pixel_index == 3604 ||
         ((pixel_index >= 3984) && (pixel_index <= 3985)) ||
         pixel_index == 4080 || pixel_index == 4089 || pixel_index == 4175 ||
         pixel_index == 4377 || pixel_index == 4472 || pixel_index == 4474 ||
         ((pixel_index >= 4556) && (pixel_index <= 4557)) ||
         ((pixel_index >= 4561) && (pixel_index <= 4562)) ||
         ((pixel_index >= 4568) && (pixel_index <= 4569)) ||
         pixel_index == 4571 ||
         ((pixel_index >= 4653) && (pixel_index <= 4654)) ||
         pixel_index == 4658 ||
         ((pixel_index >= 4663) && (pixel_index <= 4664)) ||
         ((pixel_index >= 4748) && (pixel_index <= 4749)) ||
         ((pixel_index >= 4751) && (pixel_index <= 4752)) ||
         pixel_index == 4755 ||
         ((pixel_index >= 4758) && (pixel_index <= 4759)) ||
         ((pixel_index >= 4843) && (pixel_index <= 4845)) ||
         ((pixel_index >= 4847) && (pixel_index <= 4849)) ||
         ((pixel_index >= 4852) && (pixel_index <= 4854)) ||
         ((pixel_index >= 4938) && (pixel_index <= 4939)) ||
         ((pixel_index >= 5410) && (pixel_index <= 5412)) ||
         ((pixel_index >= 5507) && (pixel_index <= 5510)) ||
         ((pixel_index >= 5512) && (pixel_index <= 5513)) ||
         ((pixel_index >= 5602) && (pixel_index <= 5608)) ||
         pixel_index == 5610 || pixel_index == 5612 || pixel_index == 5615 ||
         ((pixel_index >= 5700) && (pixel_index <= 5707)) ||
         ((pixel_index >= 5798) && (pixel_index <= 5801)) ||
         pixel_index == 5807 ||
         ((pixel_index >= 5893) && (pixel_index <= 5896)) ||
         pixel_index == 5904 || pixel_index == 5987 ||
         ((pixel_index >= 5989) && (pixel_index <= 5990)) ||
         pixel_index == 5994 || pixel_index == 5996 || pixel_index == 6079 ||
         pixel_index == 6086 || pixel_index == 6090)
  oled_data = 16'b1010000000000000;
else if (pixel_index == 2838 || pixel_index == 2927 || pixel_index == 2934 ||
         pixel_index == 3017 ||
         ((pixel_index >= 3022) && (pixel_index <= 3023)) ||
         pixel_index == 3031 || pixel_index == 3035 || pixel_index == 3210 ||
         ((pixel_index >= 3697) && (pixel_index <= 3698)) ||
         ((pixel_index >= 3700) && (pixel_index <= 3701)) ||
         pixel_index == 3703 || pixel_index == 3800 ||
         ((pixel_index >= 4081) && (pixel_index <= 4082)) ||
         ((pixel_index >= 4087) && (pixel_index <= 4088)) ||
         ((pixel_index >= 4176) && (pixel_index <= 4177)) ||
         ((pixel_index >= 4182) && (pixel_index <= 4185)) ||
         pixel_index == 4271 || pixel_index == 4282 || pixel_index == 4366 ||
         pixel_index == 4378 || pixel_index == 4462 || pixel_index == 4466 ||
         pixel_index == 4471 || pixel_index == 4473 ||
         ((pixel_index >= 4558) && (pixel_index <= 4559)) ||
         ((pixel_index >= 4563) && (pixel_index <= 4564)) ||
         ((pixel_index >= 4566) && (pixel_index <= 4567)) ||
         pixel_index == 4652 ||
         ((pixel_index >= 4655) && (pixel_index <= 4656)) ||
         ((pixel_index >= 4659) && (pixel_index <= 4660)) ||
         pixel_index == 4662 ||
         ((pixel_index >= 4756) && (pixel_index <= 4757)) ||
         pixel_index == 4851)
  oled_data = 16'b0101000000000000;
else if (pixel_index == 4014 || pixel_index == 4110)
  oled_data = 16'b1111001010011110;
else if (((pixel_index >= 4489) && (pixel_index <= 4491)) ||
         ((pixel_index >= 4583) && (pixel_index <= 4585)) ||
         pixel_index == 4868 || pixel_index == 4924 || pixel_index == 4963 ||
         ((pixel_index >= 5057) && (pixel_index <= 5058)) ||
         ((pixel_index >= 5152) && (pixel_index <= 5153)) ||
         pixel_index == 5248 || pixel_index == 5343 || pixel_index == 5439 ||
         ((pixel_index >= 5534) && (pixel_index <= 5535)) ||
         ((pixel_index >= 5630) && (pixel_index <= 5631)) ||
         ((pixel_index >= 5726) && (pixel_index <= 5727)) ||
         pixel_index == 5823 || pixel_index == 5919 || pixel_index == 6015)
  oled_data = 16'b1010001010010100;
else if (((pixel_index >= 4732) && (pixel_index <= 4733)) ||
         ((pixel_index >= 4828) && (pixel_index <= 4829)) ||
         ((pixel_index >= 4925) && (pixel_index <= 4926)) ||
         pixel_index == 5022 || pixel_index == 5311 || pixel_index == 5598)
  oled_data = 16'b1010001010001010;
else
  oled_data = 0;
end
