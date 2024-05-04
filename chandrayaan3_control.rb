class Chandrayaan3
  def initialize
    @position = [0, 0, 0]
    @direction = 'N'
  end

  # Implementing getters & setters
  def get_position
    @position
  end

  def get_direction
    @direction
  end

  def set_position(x, y, z)
    @position = [x, y, z]
  end

  def set_direction(dir)
    @direction = dir
  end
  # getters and setters completed

  def move_forward
    # Implement forward movement
    x, y, z = @position
    case @direction
    when 'N'
      set_position(x, y + 1, z)
    when 'S'
      set_position(x, y - 1, z)
    when 'E'
      set_position(x + 1, y, z)
    when 'W'
      set_position(x - 1, y, z)
    when 'U'
      set_position(x, y, z + 1)
    when 'D'
      set_position(x, y, z - 1)
    end
  end

  def move_backward
    # Implement backward movement
    x, y, z = @position
    case @direction
    when 'N'
      set_position(x, y - 1, z)
    when 'S'
      set_position(x, y + 1, z)
    when 'E'
      set_position(x - 1, y, z)
    when 'W'
      set_position(x + 1, y, z)
    when 'U'
      set_position(x, y, z - 1)
    when 'D'
      set_position(x, y, z + 1)
    end
  end

  def turn_left
    # Implement left turn
    case @direction
    when 'N'
      set_direction('W')
    when 'S'
      set_direction('E')
    when 'E'
      set_direction('N')
    when 'W'
      set_direction('S')
    when 'U'
      set_direction('N')
    when 'D'
      set_direction('S')
    end
  end

  def turn_right
    # Implement right turn
    case @direction
    when 'N'
      set_direction('E')
    when 'S'
      set_direction('W')
    when 'E'
      set_direction('S')
    when 'W'
      set_direction('N')
    when 'U'
      set_direction('S')
    when 'D'
      set_direction('N')
    end
  end

  def turn_up
    # Implement up turn
    set_direction('U')
  end

  def turn_down
    # Implement down turn
    set_direction('D')
  end

  def take_user_input
    # initializing variables
    ch, input_list = '', []

    # while user-input is not 'cc or 'C', take user input
    while ch != "c" && ch != "C"
      puts "Enter input (f, b, l, r, u, d) or end input (c/C): "
      ch = gets.chomp

      # checking if user input is is valid or not
      # if invalid, then we do not append it to the input_list
      # if input is 'c' or 'C', then we do not append it to the input_list
      if %w[f b l r u d].include?(ch)
        input_list << ch
      elsif %w[c C].include?(ch)
        next
      else
        puts "Error! Enter a valid input(f/b/l/r/u/d/c/C)"
      end
    end

    # iterating input_list elements via element variable, one by one
    input_list.each do |element|
      case element
      when "f"
        move_forward
      when "b"
        move_backward
      when "l"
        turn_left
      when "r"
        turn_right
      when "u"
        turn_up
      when "d"
        turn_down
      end
    end
  end
end

obj = Chandrayaan3.new
obj.take_user_input

