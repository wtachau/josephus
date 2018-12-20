def josephus(num)
  nums = [*1..num]
  killer = 0

  while nums.length > 1
    to_kill = killer + 1
    if killer == nums.length - 1
      to_kill = 0
    end

    killed = nums.delete_at(to_kill)

    killer += 1
    if killer > nums.length - 1
      killer = 0
    end
  end

  return nums.first
end

[*1..50].each do |num|
  puts "x: #{num} \t | \t J(x): #{josephus(num)}"
end
