Sequel.migration do
  change do
    create_table(:houses) do
      primary_key :id
      String :address
    end
  end
end
