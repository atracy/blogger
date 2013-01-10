class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	#ID is created by default as well as the time stamps
    	t.string :title #this was created by me, it's a name
    	t.text :body
      t.timestamps
    end
  end
end
