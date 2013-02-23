class Board
  attr_reader :cells
  def initialize
    @cube = build_cells
    @square = @cube[0]
  end
 

  def build_cells
    cube_array = []
    (0..2).each do |x| #cube of 3 squares
      square_array = []
      (0..2).each do |y| #square of 3 rows
        row_array = []
        (0..2).each do |z| #row of 3 cells
          row_array << '_' #cell.New(x,y,z)
        end
        square_array << row_array
        #[cell,cell,cell]
      end 
      cube_array << square_array
    end
    cube_array
  end

  def to_s
    board_length = 5
    square1 = @cube[0]
    square2 = @cube[1]
    square3 = @cube[2]
    print_square(@square) 
    #{}"#{print_square(@cube[0],board_length*2)}\n#{print_square(@cube[1],board_length)}\n#{print_square(@cube[2],0)}"
  end

  def print_square(rows,offset=0)
    row1 = rows[0]
    row2 = rows[1]
    row3 = rows[2]    
    "#{(' '*offset)+row1.join(' ')}\n#{(' '*offset)+row2.join(' ')}\n#{(' '*offset)+row3.join(' ')}\n"
  end

  def mark(symbol, x, y, z=1)
    @cube[z-1][x-1][y-1] = symbol
  end

end