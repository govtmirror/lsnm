% Tue Apr 15 14:42:27 2014

% Input layer: (1, 81)
% Output layer: (1, 81)
% Fanout size: (1, 5)
% Fanout spacing: (1, 1)
% Specified fanout weights

Connect(eg2d, ea2u)  {
  From:  (1, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001001)   }
  From:  (1, 2)  {
    |              |     |              |     ([ 1, 2]  0.000449)     ([ 1, 3]  0.001108)     |              | 
  }
  From:  (1, 3)  {
    |              |     |              |     |              |     ([ 1, 4]  0.001084)     ([ 1, 5]  0.000913) 
  }
  From:  (1, 4)  {
    ([ 1, 2]  0.000789)     ([ 1, 3]  0.000572)     |              |     |              |     ([ 1, 6]  0.000999) 
  }
  From:  (1, 5)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000578)   }
  From:  (1, 6)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000459)   }
  From:  (1, 7)  {
    |              |     |              |     |              |     ([ 1, 8]  0.000872)     |              | 
  }
  From:  (1, 8)  {
    ([ 1, 6]  0.000560)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 9)  {
    ([ 1, 7]  0.000843)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 10)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000613)   }
  From:  (1, 11)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001042)   }
  From:  (1, 12)  {
    ([ 1,10]  0.000921)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 13)  {
    |              |     |              |     |              |     |              |     ([ 1,15]  0.001177) 
  }
  From:  (1, 14)  {
    |              |     ([ 1,13]  0.000759)     |              |     |              |     |              | 
  }
  From:  (1, 15)  {
    ([ 1,13]  0.000530)     ([ 1,14]  0.000590)     |              |     |              |     |              | 
  }
  From:  (1, 16)  {
    ([ 1,14]  0.000444)     |              |     |              |     ([ 1,17]  0.000869)     |              | 
  }
  From:  (1, 17)  {
    |              |     |              |     |              |     |              |     ([ 1,19]  0.000702) 
  }
  From:  (1, 18)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001144)   }
  From:  (1, 19)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001023)   }
  From:  (1, 20)  {
    |              |     |              |     |              |     ([ 1,21]  0.001142)     |              | 
  }
  From:  (1, 21)  {
    ([ 1,19]  0.000588)     ([ 1,20]  0.000680)     |              |     |              |     |              | 
  }
  From:  (1, 22)  {
    |              |     ([ 1,21]  0.000422)     |              |     |              |     |              | 
  }
  From:  (1, 23)  {
    |              |     ([ 1,22]  0.000752)     ([ 1,23]  0.000779)     |              |     |              | 
  }
  From:  (1, 24)  {
    ([ 1,22]  0.001156)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 25)  {
    |              |     |              |     |              |     ([ 1,26]  0.001169)     |              | 
  }
  From:  (1, 26)  {
    |              |     ([ 1,25]  0.000991)     ([ 1,26]  0.000911)     ([ 1,27]  0.000589)     |              | 
  }
  From:  (1, 27)  {
    |              |     |              |     ([ 1,27]  0.000431)     ([ 1,28]  0.000687)     |              | 
  }
  From:  (1, 28)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000418)   }
  From:  (1, 29)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001006)   }
  From:  (1, 30)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000570)   }
  From:  (1, 31)  {
    ([ 1,29]  0.000537)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 32)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001195)   }
  From:  (1, 33)  {
    |              |     |              |     ([ 1,33]  0.001157)     |              |     |              | 
  }
  From:  (1, 34)  {
    |              |     |              |     ([ 1,34]  0.001063)     |              |     |              | 
  }
  From:  (1, 35)  {
    |              |     ([ 1,34]  0.000850)     |              |     |              |     ([ 1,37]  0.000962) 
  }
  From:  (1, 36)  {
    |              |     |              |     |              |     ([ 1,37]  0.000856)     |              | 
  }
  From:  (1, 37)  {
    |              |     |              |     ([ 1,37]  0.000568)     |              |     |              | 
  }
  From:  (1, 38)  {
    |              |     ([ 1,37]  0.000538)     ([ 1,38]  0.001181)     |              |     |              | 
  }
  From:  (1, 39)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001132)   }
  From:  (1, 40)  {
    ([ 1,38]  0.000706)     ([ 1,39]  0.000403)     |              |     |              |     |              | 
  }
  From:  (1, 41)  {
    |              |     |              |     ([ 1,41]  0.001091)     |              |     |              | 
  }
  From:  (1, 42)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000699)   }
  From:  (1, 43)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001123)   }
  From:  (1, 44)  {
    ([ 1,42]  0.000679)     |              |     |              |     ([ 1,45]  0.000463)     |              | 
  }
  From:  (1, 45)  {
    |              |     ([ 1,44]  0.001039)     |              |     |              |     |              | 
  }
  From:  (1, 46)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000892)   }
  From:  (1, 47)  {
    |              |     |              |     |              |     ([ 1,48]  0.000542)     |              | 
  }
  From:  (1, 48)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000466)   }
  From:  (1, 49)  {
    |              |     |              |     |              |     ([ 1,50]  0.000717)     |              | 
  }
  From:  (1, 50)  {
    ([ 1,48]  0.001062)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 51)  {
    |              |     ([ 1,50]  0.001084)     |              |     |              |     |              | 
  }
  From:  (1, 52)  {
    |              |     ([ 1,51]  0.000928)     |              |     |              |     |              | 
  }
  From:  (1, 53)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000478)   }
  From:  (1, 54)  {
    |              |     ([ 1,53]  0.000670)     |              |     |              |     |              | 
  }
  From:  (1, 55)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001160)   }
  From:  (1, 56)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000521)   }
  From:  (1, 57)  {
    ([ 1,55]  0.000569)     ([ 1,56]  0.000931)     ([ 1,57]  0.001064)     ([ 1,58]  0.001040)     |              | 
  }
  From:  (1, 58)  {
    |              |     |              |     |              |     |              |     ([ 1,60]  0.000436) 
  }
  From:  (1, 59)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000891)   }
  From:  (1, 60)  {
    ([ 1,58]  0.001017)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 61)  {
    |              |     |              |     |              |     ([ 1,62]  0.001030)     |              | 
  }
  From:  (1, 62)  {
    |              |     ([ 1,61]  0.000659)     |              |     |              |     |              | 
  }
  From:  (1, 63)  {
    |              |     ([ 1,62]  0.001004)     ([ 1,63]  0.000747)     ([ 1,64]  0.000744)     |              | 
  }
  From:  (1, 64)  {
    ([ 1,62]  0.000620)     ([ 1,63]  0.000910)     |              |     |              |     |              | 
  }
  From:  (1, 65)  {
    |              |     ([ 1,64]  0.000878)     |              |     |              |     |              | 
  }
  From:  (1, 66)  {
    |              |     ([ 1,65]  0.001159)     |              |     |              |     |              | 
  }
  From:  (1, 67)  {
    |              |     |              |     |              |     |              |     ([ 1,69]  0.000700) 
  }
  From:  (1, 68)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000670)   }
  From:  (1, 69)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001142)   }
  From:  (1, 70)  {
    ([ 1,68]  0.000421)     ([ 1,69]  0.000610)     |              |     ([ 1,71]  0.001146)     |              | 
  }
  From:  (1, 71)  {
    |              |     ([ 1,70]  0.001046)     ([ 1,71]  0.001122)     |              |     |              | 
  }
  From:  (1, 72)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000675)   }
  From:  (1, 73)  {
    |              |     ([ 1,72]  0.000750)     ([ 1,73]  0.001065)     ([ 1,74]  0.000962)     |              | 
  }
  From:  (1, 74)  {
    ([ 1,72]  0.000464)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 75)  {
    ([ 1,73]  0.000524)     |              |     |              |     |              |     ([ 1,77]  0.001180) 
  }
  From:  (1, 76)  {
    |              |     |              |     ([ 1,76]  0.000967)     |              |     |              | 
  }
  From:  (1, 77)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000649)   }
  From:  (1, 78)  {
    ([ 1,76]  0.000956)     |              |     |              |     ([ 1,79]  0.000899)     ([ 1,80]  0.000531) 
  }
  From:  (1, 79)  {
    ([ 1,77]  0.000417)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 80)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000641)   }
  From:  (1, 81)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000609)   }
}
