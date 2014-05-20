% Wed Apr 16 09:51:15 2014

% Input layer: (1, 81)
% Output layer: (1, 81)
% Fanout size: (1, 5)
% Fanout spacing: (1, 1)
% Specified fanout weights

Connect(eg2c, ea2u)  {
  From:  (1, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001176)   }
  From:  (1, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000911)   }
  From:  (1, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001129)   }
  From:  (1, 4)  {
    ([ 1, 2]  0.001077)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 5)  {
    |              |     |              |     |              |     ([ 1, 6]  0.000464)     |              | 
  }
  From:  (1, 6)  {
    ([ 1, 4]  0.000851)     ([ 1, 5]  0.000945)     |              |     |              |     |              | 
  }
  From:  (1, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000477)   }
  From:  (1, 8)  {
    |              |     |              |     ([ 1, 8]  0.000990)     |              |     |              | 
  }
  From:  (1, 9)  {
    ([ 1, 7]  0.000461)     ([ 1, 8]  0.000639)     |              |     |              |     ([ 1,11]  0.000538) 
  }
  From:  (1, 10)  {
    |              |     |              |     |              |     ([ 1,11]  0.001160)     |              | 
  }
  From:  (1, 11)  {
    |              |     ([ 1,10]  0.000464)     ([ 1,11]  0.000787)     ([ 1,12]  0.000887)     ([ 1,13]  0.000609) 
  }
  From:  (1, 12)  {
    ([ 1,10]  0.000672)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 13)  {
    ([ 1,11]  0.001158)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 14)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000693)   }
  From:  (1, 15)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000885)   }
  From:  (1, 16)  {
    |              |     |              |     ([ 1,16]  0.000443)     |              |     |              | 
  }
  From:  (1, 17)  {
    |              |     |              |     |              |     |              |     ([ 1,19]  0.000499) 
  }
  From:  (1, 18)  {
    ([ 1,16]  0.001123)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 19)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000975)   }
  From:  (1, 20)  {
    ([ 1,18]  0.000661)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 21)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001165)   }
  From:  (1, 22)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000516)   }
  From:  (1, 23)  {
    |              |     |              |     |              |     ([ 1,24]  0.000887)     |              | 
  }
  From:  (1, 24)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000652)   }
  From:  (1, 25)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000757)   }
  From:  (1, 26)  {
    |              |     |              |     ([ 1,26]  0.000904)     |              |     ([ 1,28]  0.001038) 
  }
  From:  (1, 27)  {
    ([ 1,25]  0.000553)     ([ 1,26]  0.000445)     |              |     ([ 1,28]  0.000714)     |              | 
  }
  From:  (1, 28)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000412)   }
  From:  (1, 29)  {
    |              |     |              |     |              |     ([ 1,30]  0.001089)     ([ 1,31]  0.001152) 
  }
  From:  (1, 30)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001109)   }
  From:  (1, 31)  {
    |              |     ([ 1,30]  0.001197)     |              |     ([ 1,32]  0.000450)     |              | 
  }
  From:  (1, 32)  {
    |              |     |              |     |              |     ([ 1,33]  0.000681)     |              | 
  }
  From:  (1, 33)  {
    ([ 1,31]  0.000412)     |              |     |              |     |              |     ([ 1,35]  0.000458) 
  }
  From:  (1, 34)  {
    ([ 1,32]  0.000931)     |              |     |              |     ([ 1,35]  0.001000)     |              | 
  }
  From:  (1, 35)  {
    |              |     ([ 1,34]  0.000480)     |              |     |              |     |              | 
  }
  From:  (1, 36)  {
    ([ 1,34]  0.001158)     |              |     |              |     ([ 1,37]  0.000472)     |              | 
  }
  From:  (1, 37)  {
    |              |     |              |     ([ 1,37]  0.001146)     |              |     |              | 
  }
  From:  (1, 38)  {
    ([ 1,36]  0.000990)     |              |     |              |     |              |     ([ 1,40]  0.000461) 
  }
  From:  (1, 39)  {
    |              |     |              |     ([ 1,39]  0.000770)     ([ 1,40]  0.000455)     |              | 
  }
  From:  (1, 40)  {
    |              |     |              |     ([ 1,40]  0.000768)     |              |     ([ 1,42]  0.000982) 
  }
  From:  (1, 41)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001114)   }
  From:  (1, 42)  {
    |              |     ([ 1,41]  0.000993)     |              |     ([ 1,43]  0.001040)     ([ 1,44]  0.001058) 
  }
  From:  (1, 43)  {
    |              |     ([ 1,42]  0.000690)     |              |     |              |     |              | 
  }
  From:  (1, 44)  {
    ([ 1,42]  0.000949)     |              |     ([ 1,44]  0.001013)     |              |     |              | 
  }
  From:  (1, 45)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001056)   }
  From:  (1, 46)  {
    |              |     |              |     ([ 1,46]  0.000709)     |              |     |              | 
  }
  From:  (1, 47)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000750)   }
  From:  (1, 48)  {
    |              |     |              |     |              |     |              |     ([ 1,50]  0.000551) 
  }
  From:  (1, 49)  {
    |              |     ([ 1,48]  0.001153)     ([ 1,49]  0.000766)     ([ 1,50]  0.001028)     |              | 
  }
  From:  (1, 50)  {
    |              |     ([ 1,49]  0.001188)     |              |     |              |     |              | 
  }
  From:  (1, 51)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000707)   }
  From:  (1, 52)  {
    ([ 1,50]  0.000544)     |              |     |              |     |              |     |              | 
  }
  From:  (1, 53)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000898)   }
  From:  (1, 54)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001165)   }
  From:  (1, 55)  {
    |              |     |              |     ([ 1,55]  0.000783)     |              |     |              | 
  }
  From:  (1, 56)  {
    |              |     |              |     ([ 1,56]  0.001007)     ([ 1,57]  0.001085)     |              | 
  }
  From:  (1, 57)  {
    |              |     ([ 1,56]  0.001117)     ([ 1,57]  0.000490)     ([ 1,58]  0.000508)     |              | 
  }
  From:  (1, 58)  {
    |              |     |              |     ([ 1,58]  0.000539)     |              |     |              | 
  }
  From:  (1, 59)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000449)   }
  From:  (1, 60)  {
    ([ 1,58]  0.001192)     ([ 1,59]  0.000501)     |              |     |              |     ([ 1,62]  0.001122) 
  }
  From:  (1, 61)  {
    ([ 1,59]  0.000804)     |              |     |              |     ([ 1,62]  0.000821)     |              | 
  }
  From:  (1, 62)  {
    |              |     |              |     |              |     |              |     ([ 1,64]  0.001007) 
  }
  From:  (1, 63)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000748)   }
  From:  (1, 64)  {
    ([ 1,62]  0.000906)     |              |     |              |     ([ 1,65]  0.001156)     |              | 
  }
  From:  (1, 65)  {
    |              |     |              |     |              |     ([ 1,66]  0.000819)     |              | 
  }
  From:  (1, 66)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001038)   }
  From:  (1, 67)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000636)   }
  From:  (1, 68)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000723)   }
  From:  (1, 69)  {
    |              |     |              |     |              |     ([ 1,70]  0.001060)     ([ 1,71]  0.000574) 
  }
  From:  (1, 70)  {
    ([ 1,68]  0.000514)     ([ 1,69]  0.000841)     |              |     |              |     |              | 
  }
  From:  (1, 71)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000439)   }
  From:  (1, 72)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001014)   }
  From:  (1, 73)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000949)   }
  From:  (1, 74)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000475)   }
  From:  (1, 75)  {
    |              |     ([ 1,74]  0.000750)     |              |     ([ 1,76]  0.000484)     |              | 
  }
  From:  (1, 76)  {
    ([ 1,74]  0.001146)     |              |     |              |     |              |     ([ 1,78]  0.000920) 
  }
  From:  (1, 77)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000678)   }
  From:  (1, 78)  {
    |              |     |              |     ([ 1,78]  0.000763)     |              |     |              | 
  }
  From:  (1, 79)  {
    ([ 1,77]  0.000796)     |              |     |              |     ([ 1,80]  0.000864)     |              | 
  }
  From:  (1, 80)  {
    |              |     |              |     |              |     |              |     ([ 1, 1]  0.000968) 
  }
  From:  (1, 81)  {
    |              |     ([ 1,80]  0.000930)     |              |     ([ 1, 1]  0.000730)     |              | 
  }
}
