# frozen_string_literal: true

require 'tailwind_merge'

module DaisyUIViewComponents
  class TailwindMerger

    class << self

      def merge(...)
        merger.merge(...)
      end

      private

      def merger
        @merger ||= TailwindMerge::Merger.new
      end

    end

  end
end
