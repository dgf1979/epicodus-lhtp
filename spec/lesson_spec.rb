describe Lesson do
  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :text => 'asdfasdf', :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :text => 'asdfasdfasdf', :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end
  context '#prev' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :text => 'asdfasdf', :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :text => 'asdfasdfasdf', :number => 2})
      expect(next_lesson.prev).to eq current_lesson
    end
  end
end
