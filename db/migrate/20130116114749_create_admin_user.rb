class CreateAdminUser < ActiveRecord::Migration
  def self.up
    user = User.create!( :email => 'admin@gmail.com', :name => 'admin', :password => 'admin123', :admin => '1')
  end

  def self.down
    user = User.find_by_name('admin')
    user.destroy
  end
end
