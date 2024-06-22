# frozen_string_literal: true

module Alert
  # @label Alert
  class Preview < ViewComponent::Preview


    # Primary button
    # ---------------
    # This is the button style you should use for most things.
    #
    # @label Primary
    # @param klass [String] text "use 'class' instead"
    def default(klass: "")
      render_with_template locals: { klass: klass }, template: 'alert/default'
    end

    def info_color
      render_with_template template: 'alert/info_color'
    end

    def with_buttons
      render_with_template template: 'alert/with_buttons'
    end

    def with_icon_title_and_description
      render_with_template template: 'alert/with_icon_title_and_description'
    end

  end
end
