namespace :import_csv do
  # rails import_csv:aws_texts
  desc "aws_text_dataをインポートするタスク"

  task aws_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")

    puts "インポート処理を開始"
    # インポートができなかった場合の例外処理
    begin
      AwsText.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end

  #rails import_csv:movies
  desc "movie_dataをインポートするタスク"

  task movies: :environment do
    list = Import.csv_data(path:"db/csv_data/movie_data.csv")

    puts "インポート処理を開始"
    # インポートができなかった場合の例外処理
    begin
      Movie.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
