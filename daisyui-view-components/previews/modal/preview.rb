# frozen_string_literal: true

module Modal
  # @label Modal
  class Preview < ViewComponent::Preview

    # @param open [Boolean] select [false, true] "Default modal to opened state"
    # @param backdrop [Boolean] select [true, false] "Whether to allow closing the modal on backdrop clicks"
    # @param close_button [Boolean] select [true, false] "Whether to show a close button 'x' in the top right corner of the modal"
    def default(open: false, backdrop: true, close_button: true)
      render_with_template locals: {
        open: open,
        backdrop: backdrop,
        close_button: close_button
      }, template: 'modal/default'
    end

  end
end
