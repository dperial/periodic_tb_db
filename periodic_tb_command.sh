    1  echo hello Periodic table db
    2  mkdir periodic_table
    3  cd periodic_table/
    4  git int
    5  git init
    6  git branch
    7  git config --global init.defaultBranch main
    8  git branch
    9  git branch -m main
   10  git branch
   11  git checkout -b main
   12  git branch
   13  ls -a
   14  git status
   15  git branch
   16  git
   17  git log
   18  touch element.sh
   19  git status
   20  rm elment.sh
   21  touch README.md
   22  nano README.md 
   23  git add .
   24  git status
   25  rm element.sh
   26  git status
   27  git commit -m "Initial commit"
   28  git checkout -b feat/element_info
   29  git branch
   30  touch element.sh
   31  chmod +x element.sh 
   32  ./element.sh 
   33  ./element.sh 
   34  ./element.sh 2
   35  ./element.sh 2
   36  ./element.sh 2
   37  ./element.sh 2
   38  ./element.sh 2
   39  ./element.sh 2
   40  ./element.sh 2
   41  ./element.sh 2
   42  ./element.sh 2
   43  ./element.sh 1
   44  ./element.sh 10
   45  ./element.sh neon
   46  ./element.sh Neon
   47  git add .
   48  git commit -m "feat: display the arguments into the string result,they are comming from element table"
   49  git checkout main
   50  git merge feat/element_info
   51  git checkout -b fix/error_not_found
   52  git status
   53  ./element.sh neon
   54  git commit -m "fix: not found element mesasge"
   55  git add .
   56  git commit -m "fix: not found element mesasge"
   57  git checkout main
   58  git merge fix/error_not_found 
   59  git checkout feat/element_info 
   60  git rebase main
   61  git log --oneline
   62  ./element.sh
   63  ./element.sh
   64  ./element.sh 1
   65  ./element.sh 1
   66  ./element.sh
   67  ./element.sh
   68  ./element.sh 8
   69  ./element.sh 8
   70  ./element.sh
   71  ./element.sh
   72  ./element.sh 8
   73  ./element.sh 8
   74  ./element.sh 8
   75  ./element.sh 
   76  ./element.sh 
   77  ./element.sh 4
   78  ./element.sh 4
   79  ./element.sh 4
   80  ./element.sh 4
   81  ./element.sh 4
   82  ./element.sh 4
   83  ./element.sh 4
   84  ./element.sh 4
   85  ./element.sh 4
   86  ./element.sh 4
   87  ./element.sh 4
   88  ./element.sh 4
   89  ./element.sh
   90  ./element.sh 9
   91  ./element.sh 9
   92  ./element.sh 9
   93  ./element.sh 9
   94  ./element.sh 9
   95  ./element.sh 9
   96  ./element.sh 9
   97  10
   98  ./element.sh 10
   99  ./element.sh 1
  100  git branch
  101  git add .
  102  git commit -m "feat: display the correct dtring form with all the arguments coming from elements and properties tables"
  103  git checkout main
  104  git merge feat/element_info 
  105  git branch
  106  git ckeckout -b fix/missing_type_in_tb_properties
  107  git checkout -b fix/missing_type_in_tb_properties
  108  ./element.sh 
  109  ./element.sh 1
  110  ./element.sh 1
  111  ./element.sh 1
  112  ./element.sh 1
  113  ./element.sh 1
  114  ./element.sh 10
  115  ./element.sh 3
  116  ./element.sh 3
  117  git branch
  118  git status
  119  git add .
  120  git commit -m "fix: improve the code with the type argument comming from types table, and not more properties table"
  121  git push
  122  git checkout main
  123  git branch
  124  git merge fix/missing_type_in_tb_properties 
  125  git branch -d fix/error_not_found 
  126  git checkout feat/element_info 
  127  git reabse main
  128  git rebase main
  129  git checkout main
  130  git checkout -b fix/element_name_lowercase
  131  ./element.sh 
  132  ./element.sh 1
  133  ./element.sh neoon
  134  ./element.sh neon
  135  ./element.sh ne
  136  ./element.sh f
  137  ./element.sh F
  138  ./element.sh f
  139  ./element.sh r
  140  ./element.sh li
  141  ./element.sh he
  142  ./element.sh o
  143  ./element.sh b
  144  git status
  145  git add .
  146  git branch
  147  git commit -m "fix: the giving argument could be a string(symbol, name), so we change the format to set the first letter uppercase"
  148  git checkout main
  149  git merge fix/element_name_lowercase 
  150  ./element.sh o
  151  ./element.sh
  152  ./element.sh e
  153  ./element.sh l
  154  ./element.sh li
  155  ./element.sh h
  156  ./element.sh hhe
  157  ./element.sh he
  158  ./element.sh c
  159  ./element.sh f
  160  git log --oneline
  161  git remote add origin https://github.com/dperial/periodic_tb_db.git
  162  git push -u origin main
  163  git pull origin main --rebase
  164  git add .
  165  git commit -m "update: README.md file"
  166  git push -u origin main
  167  git pull
  168  git pull origin main
  169  git push -u origin main
  170  git pull --rebase origin main
  171  git rebase --continue
  172  git push -u origin main
  173  history > periodic_tb_command.sh
