counter = 0
t_end = Time.now + (10)

until Time.now > t_end do
  counter += 1
end

pp counter
