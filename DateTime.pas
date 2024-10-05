begin
  var year := ReadInteger('Введите год: ');
  Assert(year > 0);
  var IsLeap := (year mod 4 = 0) and ((year mod 100 <> 0) or (year mod 400 = 0));
  Print($'Год високосный: {IsLeap}');
  Println;
  if IsLeap then
    Print('В году 366 дней')
  else
    Print('В году 365 дней'); 
  
  var (frstDay, frstMonth, scdDay, scdMonth) := ReadInteger4($'{newline}Введите две даты: ');
  Assert((frstDay in 1..31) and (scdDay in 1..31) and (frstMonth in 1..12) and (scdMonth in 1..12));
  
  if (12 - frstMonth) < (12 - scdMonth) then
    Print($'1 дата ближе')
  else if (12 - frstMonth) > (12 - scdMonth) then
    Print($'2 дата ближе')
  else
  if (31 - frstDay) < (31 - scdDay) then
    PrintLn($'1 дата ближе')
  else if (31 - frstDay) > (31 - scdDay) then
    PrintLn($'2 дата ближе');
  
  Println;
  var (frstYear, scdYear) := ReadInteger2('Введите года, сумму дней между которыми необходимо определить: ');
  Assert((frstYear > 0) and (scdYear > 0));
  
  var DaysBtw := 0;
  
  for var i := frstYear to scdYear do
  begin
    if (i mod 4 = 0) and ((i mod 100 <> 0) or (i mod 400 = 0)) then
      DaysBtw += 366
    else
      DaysBtw += 365;
  end;
  
  PrintLn($'Сумма дней: {DaysBtw}');
end.