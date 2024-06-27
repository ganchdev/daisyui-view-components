# frozen_string_literal: true

module Avatar
  # @label Avatar
  class Preview < ViewComponent::Preview

    # @param online [Boolean] select [false, true] "shows a green dot as online indicator"
    # @param offline [Boolean] select [true, false] "shows a gray dot as offline indicator"
    # @param placeholder [Boolean] select [true, false] "Whether to show some letters as avatar placeholder"
    def default(online: false, offline: false, placeholder: false)
      render_with_template locals: {
        online: online,
        offline: offline,
        placeholder: placeholder
      }, template: 'avatar/default'
    end

  end
end
