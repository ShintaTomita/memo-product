require "csv"

def memo_product
 puts "1(新規でメモを作成) 2（既存のメモを編集する)"
 select_num = gets.to_i

 if select_num == 1
   puts "ファイル名を入力してください（拡張子は除く）"
   file_name = gets.chomp
   puts "文字を入力してください。"
   puts "Enterキーか,Ctrl+Dで保存！"
   memo_type = [gets.chomp]
  
  CSV.open("#{file_name}.csv","w") do |csv|
   csv << memo_type
  end
  memo_product
  
 elsif select_num == 2
   puts "ファイル名を入力してください。"
   file_name = gets.chomp
   puts "入力してください"
   puts "Enterキーか,Ctrl+Dで保存！"
   memo_type = [gets.chomp]
  
  CSV.open("#{file_name}.csv","a") do |csv|
   csv << memo_type
  end
  memo_product
  
 else 
   puts "入力ミスです。初めからやり直してください。"
 memo_product
 end
end

memo_product


