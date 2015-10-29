Lotus::Model.migration do
  change do
    create_table :images do
      column :title, String
      column :url, String
    end
  end
end
