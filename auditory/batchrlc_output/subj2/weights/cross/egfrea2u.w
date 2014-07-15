% Mon Jul 14 15:00:24 2014

% Input layer: (9, 9)
% Output layer: (1, 81)
% Fanout size: (1, 5)
% Fanout spacing: (1, 1)
% Specified fanout weights

Connect(egfr, ea2u)  {
  From:  (1, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001058)   }
  From:  (1, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000750)   }
  From:  (1, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000535)   }
  From:  (1, 4)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001192)   }
  From:  (1, 5)  {
    ([ 1, 3]  0.000892)     |              |     ([ 1, 5]  0.000982)     |              |     |              | 
  }
  From:  (1, 6)  {
    |              |     ([ 1, 5]  0.000535)     ([ 1, 6]  0.000578)     ([ 1, 7]  0.001033)     |              | 
  }
  From:  (1, 7)  {
    |              |     |              |     |              |     |              |     ([ 1, 9]  0.001034) 
  }
  From:  (1, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000950)   }
  From:  (1, 9)  {
    |              |     ([ 1, 8]  0.000804)     |              |     |              |     ([ 1,11]  0.000648) 
  }
  From:  (2, 1)  {
    |              |     |              |     |              |     ([ 1,11]  0.001074)     |              | 
  }
  From:  (2, 2)  {
    |              |     ([ 1,10]  0.001133)     |              |     |              |     ([ 1,13]  0.000881) 
  }
  From:  (2, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 2, 1]  0.000769)   }
  From:  (2, 4)  {
    |              |     |              |     ([ 1,13]  0.000955)     |              |     |              | 
  }
  From:  (2, 5)  {
    |              |     ([ 1,13]  0.000407)     |              |     |              |     ([ 1,16]  0.000982) 
  }
  From:  (2, 6)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 2, 1]  0.001136)   }
  From:  (2, 7)  {
    |              |     |              |     |              |     ([ 1,17]  0.000790)     |              | 
  }
  From:  (2, 8)  {
    |              |     ([ 1,16]  0.000411)     |              |     |              |     |              | 
  }
  From:  (2, 9)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 2, 1]  0.001168)   }
  From:  (3, 1)  {
    |              |     |              |     ([ 1,19]  0.000882)     |              |     |              | 
  }
  From:  (3, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 3, 1]  0.000508)   }
  From:  (3, 3)  {
    |              |     |              |     ([ 1,21]  0.000418)     |              |     ([ 1,23]  0.000410) 
  }
  From:  (3, 4)  {
    ([ 1,20]  0.000921)     ([ 1,21]  0.000958)     |              |     |              |     |              | 
  }
  From:  (3, 5)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 3, 1]  0.000654)   }
  From:  (3, 6)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 3, 1]  0.000843)   }
  From:  (3, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 3, 1]  0.001167)   }
  From:  (3, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 3, 1]  0.000881)   }
  From:  (3, 9)  {
    |              |     |              |     |              |     ([ 1,28]  0.000880)     |              | 
  }
  From:  (4, 1)  {
    |              |     ([ 1,27]  0.000518)     |              |     ([ 1,29]  0.000557)     |              | 
  }
  From:  (4, 2)  {
    ([ 1,27]  0.001055)     |              |     |              |     ([ 1,30]  0.000849)     |              | 
  }
  From:  (4, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 4, 1]  0.000462)   }
  From:  (4, 4)  {
    |              |     |              |     |              |     ([ 1,32]  0.001173)     |              | 
  }
  From:  (4, 5)  {
    ([ 1,30]  0.000701)     |              |     |              |     |              |     |              | 
  }
  From:  (4, 6)  {
    |              |     |              |     |              |     |              |     ([ 1,35]  0.000921) 
  }
  From:  (4, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 4, 1]  0.001189)   }
  From:  (4, 8)  {
    |              |     ([ 1,34]  0.000975)     |              |     |              |     |              | 
  }
  From:  (4, 9)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 4, 1]  0.000922)   }
  From:  (5, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1]  0.000418)   }
  From:  (5, 2)  {
    |              |     ([ 1,37]  0.000521)     |              |     |              |     |              | 
  }
  From:  (5, 3)  {
    ([ 1,37]  0.001098)     |              |     |              |     |              |     |              | 
  }
  From:  (5, 4)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1]  0.000752)   }
  From:  (5, 5)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1]  0.000448)   }
  From:  (5, 6)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1]  0.000724)   }
  From:  (5, 7)  {
    ([ 1,41]  0.000647)     ([ 1,42]  0.000595)     |              |     |              |     |              | 
  }
  From:  (5, 8)  {
    ([ 1,42]  0.000868)     |              |     |              |     |              |     ([ 1,46]  0.000939) 
  }
  From:  (5, 9)  {
    |              |     |              |     |              |     |              |     ([ 1,47]  0.000848) 
  }
  From:  (6, 1)  {
    |              |     ([ 1,45]  0.000481)     |              |     |              |     |              | 
  }
  From:  (6, 2)  {
    |              |     ([ 1,46]  0.000748)     |              |     |              |     |              | 
  }
  From:  (6, 3)  {
    |              |     |              |     |              |     ([ 1,49]  0.001171)     ([ 1,50]  0.000697) 
  }
  From:  (6, 4)  {
    ([ 1,47]  0.000862)     |              |     ([ 1,49]  0.001157)     |              |     ([ 1,51]  0.000983) 
  }
  From:  (6, 5)  {
    |              |     |              |     ([ 1,50]  0.001044)     |              |     ([ 1,52]  0.000906) 
  }
  From:  (6, 6)  {
    |              |     |              |     |              |     ([ 1,52]  0.000526)     ([ 1,53]  0.000501) 
  }
  From:  (6, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 6, 1]  0.000525)   }
  From:  (6, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 6, 1]  0.000542)   }
  From:  (6, 9)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 6, 1]  0.000673)   }
  From:  (7, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1]  0.001175)   }
  From:  (7, 2)  {
    |              |     |              |     |              |     |              |     ([ 1,58]  0.000726) 
  }
  From:  (7, 3)  {
    |              |     ([ 1,56]  0.000875)     |              |     |              |     |              | 
  }
  From:  (7, 4)  {
    ([ 1,56]  0.000750)     ([ 1,57]  0.000711)     ([ 1,58]  0.000833)     |              |     ([ 1,60]  0.001184) 
  }
  From:  (7, 5)  {
    |              |     |              |     |              |     |              |     ([ 1,61]  0.000548) 
  }
  From:  (7, 6)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1]  0.001010)   }
  From:  (7, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1]  0.000911)   }
  From:  (7, 8)  {
    |              |     ([ 1,61]  0.000521)     |              |     |              |     |              | 
  }
  From:  (7, 9)  {
    |              |     |              |     ([ 1,63]  0.000802)     |              |     |              | 
  }
  From:  (8, 1)  {
    ([ 1,62]  0.000707)     |              |     ([ 1,64]  0.000676)     |              |     |              | 
  }
  From:  (8, 2)  {
    ([ 1,63]  0.000896)     |              |     |              |     |              |     |              | 
  }
  From:  (8, 3)  {
    |              |     ([ 1,65]  0.000694)     |              |     |              |     ([ 1,68]  0.000457) 
  }
  From:  (8, 4)  {
    |              |     ([ 1,66]  0.000561)     |              |     ([ 1,68]  0.000487)     |              | 
  }
  From:  (8, 5)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 8, 1]  0.000700)   }
  From:  (8, 6)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 8, 1]  0.001097)   }
  From:  (8, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 8, 1]  0.000992)   }
  From:  (8, 8)  {
    |              |     |              |     |              |     ([ 1,72]  0.000665)     |              | 
  }
  From:  (8, 9)  {
    ([ 1,70]  0.000704)     |              |     |              |     |              |     |              | 
  }
  From:  (9, 1)  {
    |              |     |              |     |              |     ([ 1,74]  0.001097)     |              | 
  }
  From:  (9, 2)  {
    |              |     |              |     ([ 1,74]  0.000993)     |              |     |              | 
  }
  From:  (9, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1]  0.000566)   }
  From:  (9, 4)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1]  0.000750)   }
  From:  (9, 5)  {
    |              |     |              |     ([ 1,77]  0.000422)     |              |     |              | 
  }
  From:  (9, 6)  {
    ([ 1,76]  0.000507)     ([ 1,77]  0.000469)     ([ 1,78]  0.000658)     |              |     |              | 
  }
  From:  (9, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1]  0.000767)   }
  From:  (9, 8)  {
    |              |     ([ 1,79]  0.000916)     |              |     |              |     |              | 
  }
  From:  (9, 9)  {
    |              |     |              |     |              |     |              |     ([ 1, 2]  0.001071) 
  }
}