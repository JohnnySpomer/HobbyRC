# frozen_string_literal: true

# class documentation here
class AboutController < ApplicationController
  def show
    @abouts = About.all
  end
end
