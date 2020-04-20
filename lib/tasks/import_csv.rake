require 'csv'

namespace :import_csv do
  # rails import_csv:aws_texts
  desc "aws_text_dataをインポートするタスク"

  task aws_texts: :environment do
    path = File.join Rails.root, "db/csv_data/aws_text_data.csv"
    Import.csv_data(path: "db/csv_data/aws_text_data.csv")
  end
end
