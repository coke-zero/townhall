class CreateTopicMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :topic_memberships do |t|
      t.references :topic, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true

      t.timestamps
    end
  end
end
