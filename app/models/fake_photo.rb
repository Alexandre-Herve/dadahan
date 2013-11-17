class FakePhoto < ActiveRecord::Base

  def url
    [
      'http://www.rubberrepublic.com/wp-content/uploads/2011/09/lolcat-funny-picture-moderator1.jpg',
      'http://upload.wikimedia.org/wikipedia/commons/7/7b/I_IZ_SERIUS_STEWARD_lolcat.jpg',
      'http://crmdynamo.com/wp-content/uploads/2009/01/lolcat-serverz-250x187.jpg',
      'http://kickstand.typepad.com/.a/6a00d83454060469e201156f134a2b970c-800wi',
      'http://blogs.cio.com/sites/cio.com/files/u7736/lolcat___computer_eating.jpg',
      'http://reflets.info/wp-content/uploads/2013/06/lolcat-cable.jpg',
    ].sample
  end

end
