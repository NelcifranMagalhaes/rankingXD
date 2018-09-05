require 'rails_helper'

RSpec.describe University, type: :model do
	describe 'Salvando' do

	  context 'Quando todos os dados são válidos' do

	  	it "Universidade" do
	  		university = create(:university)
	  		expect(university).to be_valid
	  	 end

	  	it "Cursos" do
	  		course = create(:course)
	  		expect(course).to be_valid
	  	 end
	  end

	  context 'Quando há dados invalidos' do
	  	it "Universidade sem nome" do
	  		university = build(:university,name: nil)
	  		university.valid?
	  		expect(university.errors[:name]).to include("não pode ficar em branco")
	  	 end

	  	it "Cursos sem nome" do
	  		course = build(:course,name: nil)
	  		course.valid?
	  		expect(course.errors[:name]).to include("não pode ficar em branco")
	  	 end

	  	it "Cursos Sem universidade" do
	  		course = build(:course,university: nil)
	  		course.valid?
	  		expect(course.errors[:university]).to include("é obrigatório(a)")
	  	 end

	  	it "Cursos Com nota maior que 5" do
	  		course = build(:course,rate: 6)
	  		course.valid?
	  		expect(course.errors[:rate]).to include("deve ser menor ou igual a 5")
	  	 end

	  	it "Cursos com média maior que 5" do
	  		course = build(:course,average_students: 5.2)
	  		course.valid?
	  		expect(course.errors[:average_students]).to include("deve ser menor ou igual a 5")
	  	 end

	  	it "Universidade com nota geral maior que 5" do
	  		university = build(:university,geral_rate: 9.5)
	  		university.valid?
	  		expect(university.errors[:geral_rate]).to include("deve ser menor ou igual a 5")
	  	 end
	  end
	end
end
