% Tue Apr 15 14:42:28 2014

% Input layer: (9, 9)
% Output layer: (1, 81)
% Fanout size: (1, 5)
% Fanout spacing: (1, 1)
% Specified fanout weights

Connect(egfr, ea2d)  {
  From:  (1, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001174)   }
  From:  (1, 2)  {
    |              |     |              |     |              |     |              |     ([ 1, 4]  0.000484) 
  }
  From:  (1, 3)  {
    |              |     |              |     |              |     ([ 1, 4]  0.000902)     |              | 
  }
  From:  (1, 4)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000718)   }
  From:  (1, 5)  {
    |              |     ([ 1, 4]  0.001106)     |              |     ([ 1, 6]  0.000705)     |              | 
  }
  From:  (1, 6)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.000830)   }
  From:  (1, 7)  {
    ([ 1, 5]  0.000404)     |              |     |              |     |              |     ([ 1, 9]  0.000472) 
  }
  From:  (1, 8)  {
    ([ 1, 6]  0.000839)     |              |     |              |     ([ 1, 9]  0.000617)     |              | 
  }
  From:  (1, 9)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1]  0.001060)   }
  From:  (2, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 2, 1]  0.000989)   }
  From:  (2, 2)  {
    ([ 1, 9]  0.000804)     |              |     |              |     ([ 1,12]  0.001011)     |              | 
  }
  From:  (2, 3)  {
    |              |     |              |     ([ 1,12]  0.000576)     ([ 1,13]  0.000453)     ([ 1,14]  0.000840) 
  }
  From:  (2, 4)  {
    |              |     |              |     |              |     |              |     ([ 1,15]  0.000527) 
  }
  From:  (2, 5)  {
    |              |     |              |     ([ 1,14]  0.000595)     |              |     |              | 
  }
  From:  (2, 6)  {
    |              |     ([ 1,14]  0.000912)     |              |     |              |     |              | 
  }
  From:  (2, 7)  {
    |              |     |              |     ([ 1,16]  0.000746)     |              |     |              | 
  }
  From:  (2, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 2, 1]  0.000545)   }
  From:  (2, 9)  {
    |              |     |              |     ([ 1,18]  0.000826)     |              |     |              | 
  }
  From:  (3, 1)  {
    |              |     ([ 1,18]  0.001097)     |              |     |              |     |              | 
  }
  From:  (3, 2)  {
    |              |     |              |     |              |     ([ 1,21]  0.000856)     |              | 
  }
  From:  (3, 3)  {
    ([ 1,19]  0.001088)     ([ 1,20]  0.001193)     ([ 1,21]  0.000744)     |              |     |              | 
  }
  From:  (3, 4)  {
    ([ 1,20]  0.000574)     |              |     |              |     |              |     |              | 
  }
  From:  (3, 5)  {
    ([ 1,21]  0.001112)     |              |     |              |     |              |     |              | 
  }
  From:  (3, 6)  {
    ([ 1,22]  0.000933)     |              |     |              |     |              |     |              | 
  }
  From:  (3, 7)  {
    ([ 1,23]  0.000637)     |              |     |              |     |              |     |              | 
  }
  From:  (3, 8)  {
    |              |     |              |     |              |     |              |     ([ 1,28]  0.000812) 
  }
  From:  (3, 9)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 3, 1]  0.000687)   }
  From:  (4, 1)  {
    |              |     |              |     |              |     ([ 1,29]  0.000606)     |              | 
  }
  From:  (4, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 4, 1]  0.000486)   }
  From:  (4, 3)  {
    |              |     |              |     ([ 1,30]  0.000669)     |              |     |              | 
  }
  From:  (4, 4)  {
    |              |     |              |     |              |     |              |     ([ 1,33]  0.000449) 
  }
  From:  (4, 5)  {
    |              |     |              |     ([ 1,32]  0.000924)     |              |     |              | 
  }
  From:  (4, 6)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 4, 1]  0.000766)   }
  From:  (4, 7)  {
    |              |     ([ 1,33]  0.000531)     |              |     |              |     |              | 
  }
  From:  (4, 8)  {
    |              |     |              |     |              |     ([ 1,36]  0.000481)     ([ 1,37]  0.000510) 
  }
  From:  (4, 9)  {
    |              |     ([ 1,35]  0.000617)     |              |     |              |     |              | 
  }
  From:  (5, 1)  {
    ([ 1,35]  0.000481)     |              |     |              |     |              |     |              | 
  }
  From:  (5, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1]  0.000521)   }
  From:  (5, 3)  {
    |              |     ([ 1,38]  0.001079)     |              |     |              |     |              | 
  }
  From:  (5, 4)  {
    |              |     ([ 1,39]  0.000552)     ([ 1,40]  0.000807)     |              |     |              | 
  }
  From:  (5, 5)  {
    |              |     |              |     ([ 1,41]  0.001001)     ([ 1,42]  0.000803)     |              | 
  }
  From:  (5, 6)  {
    |              |     |              |     ([ 1,42]  0.000655)     |              |     |              | 
  }
  From:  (5, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1]  0.000604)   }
  From:  (5, 8)  {
    |              |     |              |     |              |     ([ 1,45]  0.000893)     |              | 
  }
  From:  (5, 9)  {
    ([ 1,43]  0.001006)     |              |     ([ 1,45]  0.000946)     |              |     |              | 
  }
  From:  (6, 1)  {
    |              |     |              |     ([ 1,46]  0.001008)     |              |     |              | 
  }
  From:  (6, 2)  {
    ([ 1,45]  0.000814)     ([ 1,46]  0.000844)     |              |     |              |     |              | 
  }
  From:  (6, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 6, 1]  0.000694)   }
  From:  (6, 4)  {
    |              |     ([ 1,48]  0.000760)     ([ 1,49]  0.000704)     |              |     ([ 1,51]  0.000520) 
  }
  From:  (6, 5)  {
    |              |     ([ 1,49]  0.000714)     |              |     ([ 1,51]  0.001176)     |              | 
  }
  From:  (6, 6)  {
    ([ 1,49]  0.001032)     |              |     |              |     |              |     ([ 1,53]  0.000638) 
  }
  From:  (6, 7)  {
    |              |     ([ 1,51]  0.000552)     |              |     |              |     |              | 
  }
  From:  (6, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 6, 1]  0.000512)   }
  From:  (6, 9)  {
    |              |     ([ 1,53]  0.000590)     |              |     |              |     ([ 1,56]  0.000436) 
  }
  From:  (7, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1]  0.000690)   }
  From:  (7, 2)  {
    |              |     |              |     ([ 1,56]  0.000963)     |              |     |              | 
  }
  From:  (7, 3)  {
    ([ 1,55]  0.001060)     ([ 1,56]  0.001122)     |              |     |              |     |              | 
  }
  From:  (7, 4)  {
    |              |     ([ 1,57]  0.000540)     ([ 1,58]  0.001021)     |              |     ([ 1,60]  0.000795) 
  }
  From:  (7, 5)  {
    |              |     |              |     |              |     |              |     ([ 1,61]  0.000855) 
  }
  From:  (7, 6)  {
    |              |     |              |     |              |     |              |     ([ 1,62]  0.000894) 
  }
  From:  (7, 7)  {
    |              |     |              |     |              |     ([ 1,62]  0.001070)     |              | 
  }
  From:  (7, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1]  0.001127)   }
  From:  (7, 9)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1]  0.000545)   }
  From:  (8, 1)  {
    ([ 1,62]  0.000555)     |              |     |              |     ([ 1,65]  0.000912)     |              | 
  }
  From:  (8, 2)  {
    |              |     ([ 1,64]  0.000514)     ([ 1,65]  0.000800)     ([ 1,66]  0.001178)     ([ 1,67]  0.000575) 
  }
  From:  (8, 3)  {
    ([ 1,64]  0.000529)     |              |     |              |     |              |     |              | 
  }
  From:  (8, 4)  {
    ([ 1,65]  0.000762)     |              |     |              |     ([ 1,68]  0.000468)     |              | 
  }
  From:  (8, 5)  {
    |              |     |              |     |              |     ([ 1,69]  0.000961)     |              | 
  }
  From:  (8, 6)  {
    ([ 1,67]  0.000761)     |              |     |              |     |              |     |              | 
  }
  From:  (8, 7)  {
    |              |     |              |     ([ 1,70]  0.000950)     |              |     |              | 
  }
  From:  (8, 8)  {
    |              |     ([ 1,70]  0.000763)     |              |     ([ 1,72]  0.001040)     |              | 
  }
  From:  (8, 9)  {
    |              |     |              |     |              |     ([ 1,73]  0.001013)     |              | 
  }
  From:  (9, 1)  {
    |              |     |              |     |              |     |              |     ([ 1,75]  0.000927) 
  }
  From:  (9, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1]  0.000771)   }
  From:  (9, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1]  0.000568)   }
  From:  (9, 4)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1]  0.001143)   }
  From:  (9, 5)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1]  0.000766)   }
  From:  (9, 6)  {
    ([ 1,76]  0.000605)     |              |     |              |     |              |     |              | 
  }
  From:  (9, 7)  {
    |              |     ([ 1,78]  0.001023)     |              |     |              |     |              | 
  }
  From:  (9, 8)  {
    |              |     |              |     |              |     ([ 1,81]  0.001028)     |              | 
  }
  From:  (9, 9)  {
    |              |     ([ 1,80]  0.000954)     |              |     |              |     |              | 
  }
}
