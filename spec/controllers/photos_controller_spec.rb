require 'spec_helper'

describe PhotosController do
  it 'find the photos for the user' do
    photo = stub
    user = stub(:photos => [photo])
    username = 'bob'
    User.stub(:find_by_username!).with(username) { user }
    get :index, :username => username
    assigns[:photos].should == [photo]
  end
end

