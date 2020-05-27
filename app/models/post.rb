class Post < ApplicationRecord
  include Shared::Callbacks

  belongs_to :user
  acts_as_votable
  acts_as_commentable

  include PublicActivity::Model
  tracked only: [:create], owner: Proc.new{ |controller, model| controller.current_user }

  default_scope -> { order('created_at DESC')}

  mount_uploader :attachment, AvatarUploader

  validate_presence_of :content
  validate_presence_of :user

  auto_html_for :content do
    image
    youtube(width: 400, height: 250, autoplay: true)
    link target: '_blank', rel: 'nofollow'
    simple_format
  end
end
