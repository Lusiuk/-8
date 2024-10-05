begin
  var year := ReadInteger('Введите год: ');
  Assert(year > 0);
  var IsLeap := (year mod 4 = 0) and ((year mod 100 <> 0) or (year mod 400 = 0));
  Print($'Год високосный: {IsLeap}{newline}');
  
  var (frstDay, frstMonth, scdDay, scdMonth) := ReadInteger4($'{newline}Введите две даты: ');
  Assert((frstDay in 1..31) and (scdDay in 1..31) and (frstMonth in 1..12) and (scdMonth in 1..12));
  
  if (12 - frstMonth) < (12 - scdMonth) then
    Print($'1 дата ближе{newline}')
  else if (12 - frstMonth) > (12 - scdMonth) then
    Print($'2 дата ближе{newline}')
  else
  if (31 - frstDay) < (31 - scdDay) then
    PrintLn($'1 дата ближе{newline}')
  else if (31 - frstDay) > (31 - scdDay) then
    PrintLn($'2 дата ближе{newline}')
end.