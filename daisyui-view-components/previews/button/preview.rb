# frozen_string_literal: true

module Button
  # @label Button
  class Preview < ViewComponent::Preview

    def default(
      url: '',
      label: '',
      method: '',
      options: ''
    )
      render_with_template locals: {
        url: url,
        label: label,
        method: method,
        options: options
      }, template: 'button/default'
    end

  end
end
