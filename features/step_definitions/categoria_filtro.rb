Before('tres_tarefas') do
  Task.new(title: 'A tarefa', category: 'A categoria').save
  Task.new(title: 'B tarefa', category: 'A categoria').save
  Task.new(title: 'C tarefa', category: 'B categoria').save
end

Quando('clico em filtrar') do
  click_on 'Filtrar'
end

Então('deverei ver {string}') do |string|
  expect(page).to have_content(string)
end

Então('não deverei ver {string}') do |string|
  expect(page).not_to have_content(string)
end

