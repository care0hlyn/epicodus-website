require 'rails_helper'

describe Lesson do

  it { should validate_presence_of :name }
  it { should validate_presence_of :text }
  it { should validate_numericality_of :lesson }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :text => 'stuff!', :lesson => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :text => 'stuff!', :lesson => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#previous' do
    it 'returns the lesson with the next-lowest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson2', :text => 'stuff!', :lesson => 2})
      prev_lesson = Lesson.create({:name => 'lesson1', :text => 'stuff!', :lesson => 1})
      expect(current_lesson.previous).to eq prev_lesson
    end
  end

end
