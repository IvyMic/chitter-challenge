feature 'Adding peeps' do
  scenario 'user can add a peep to the database' do
    visit '/peeps'
    fill_in 'peep_to_add', with: 'peeptest'
    click_button("Add Peep")
    expect(page).to have_content('peeptest')
  end
end
=begin
	
CREATE TABLE table_name(
     column_name_1 data_type default value column_constraint,
     column_name_2 data_type default value column_constraint,
     ...,
     table_constraint
);

CREATE TABLE comments(
  id SERIAL PRIMARY KEY, 
  text VARCHAR(240), 
  bookmark_id INTEGER REFERENCES bookmarks (id));

1
2
	
ALTER TABLE table_name
ADD COLUMN new_column_name data_type;  
=end
