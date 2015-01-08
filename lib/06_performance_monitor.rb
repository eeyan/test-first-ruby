def measure(n = 1)
  start_time = Time.now
  n.times do
    yield
  end
  end_time = Time.now
  average_elapsed_time = (end_time - start_time) / n
  average_elapsed_time
end
