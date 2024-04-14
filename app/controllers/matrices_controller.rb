class MatricesController < ApplicationController
  def multiply
  end

  def matrix_multiplication
    matrix1_hash = params[:matrix1]
    matrix2_hash = params[:matrix2]

    matrix1 = matrix_hash_to_array(matrix1_hash)
    matrix2 = matrix_hash_to_array(matrix2_hash)

    result = multiply_matrices(matrix1, matrix2)

    render json: { result: result }
  end

  private

  def matrix_hash_to_array(matrix_hash)
    matrix_array = matrix_hash.values.map { |row| row.map(&:to_i) }
    matrix_array.sort_by { |row| row.first }
  end

  def multiply_matrices(matrix1, matrix2)
    return nil if matrix1[0].length != matrix2.length
    
    result = Array.new(matrix1.length) { Array.new(matrix2[0].length, 0) }

    matrix1.length.times do |i|
      matrix2[0].length.times do |j|
        matrix1[0].length.times do |k|
          result[i][j] += matrix1[i][k] * matrix2[k][j]
        end
      end
    end

    result
  end
end
