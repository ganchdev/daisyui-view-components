# frozen_string_literal: true

module AvatarGroup
  # @label AvatarGroup
  class Preview < ViewComponent::Preview

    def default
      render_with_template template: 'avatar_group/default'
    end

  end
end
