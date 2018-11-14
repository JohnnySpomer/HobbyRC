# frozen_string_literal: true

# class documentation here
class ContactController < ApplicationController
  def show
    @contacts = Contact.all
  end
end
