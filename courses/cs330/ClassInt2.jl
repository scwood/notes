module ClassInt2
using Error

abstract AE

type Num <: AE
  n::Real
end

type Plus <: AE
  lhs::AE
  rhs::AE
end

type Minus <: AE
  lhs::AE
  rhs::AE
end

function parse(expr:::Real)
  Num(expr)
end

function parse(expr:::Array{Any})
  op_symbol = expr[1]
  lhs = expr[2]
  rhs = expr[3]

  if op_symbol == :+
    return Plus(parse(lhs), parse(rhs))
  elseif op_symbol == :-
    return Minus(parse(lhs), parse(rhs))
  else
    throw(LispError("WARGH!"))
  end
end

function calc(ast::Num)
  ast.n
end

function calc(ast::Plus)
  calc(ast.lhs) + calc(ast.rhs)
end

function calc(ast::Minus)
  calc(ast.lhs) - calc(ast.rhs)
end
