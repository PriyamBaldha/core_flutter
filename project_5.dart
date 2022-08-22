void main(){
  int choice,i,j;
  dynamic sum=0;
  dynamic diag=0,anti_diag=0;

  var a=[
    [1,2,3],
    [4,5,6],
    [7,8,9]
  ];
  print("press 1for sum of all elements\npress 2 for sum of specefic row\n press 3 for sum of specific column\npress 4 for sum of diagonal elements \npress 5 for  sum of anti-diagonal elements\n press 0 for exit");
  do{
    switch(choice){
      case 1:
      for(i=0;i<3;i++){
        for(j=0;j<3;j++){
          sum=sum+a[i][j];
        }
      }
      print("sum of all elements is $sum");
      break;

      case 2:
      for(i=0;i<3;i++){
        sum=0;
        for(j=0;j<3;j++){
          sum=sum+a[i][j];
        }
      }
      print("sum of row ${i+1} is $sum");
    }
      break;

      case 3:
      for(i=0;i<3;i++){
        sum=0;
        for(j=0;j<3;j++){
          sum=sum+a[j][i];
        }
      }
      print("sum of column ${i+1} is $sum");
    }
      break;


      case 4:
      for(i=0;i<3;i++){
        for(j=0;j<3;j++){
          if(i==j){
            diag+=a[i][j];
          }
        }
      }
      print("sum of diagonal elements is $diag");
    
      break;

      
      case 5:
      for(i=0;i<3;i++){
        for(j=0;j<3;j++){
          anti_diag+=a[i][j];
        }
      }
}
      print("sum of Anti diagonal os $anti_diag");
    
      break;

case 0;
break;


default:
print("Enter valid choice");
break;
}
}while (choice!=0); 
}
  
