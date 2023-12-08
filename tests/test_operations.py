from calculator.operations import add, subtract, multiply, divide


def test_add():
    assert add(2, 3) == 5


def test_subtract():
    assert subtract(5, 2) == 3

def test_multiply():
    assert multiply(4, 6) == 24


def test_divide():
    assert divide(8, 4) == 2

def test_divide_by_zero():
    try:
        divide(5, 0)
    except ValueError as e:
        assert str(e) == "Cannot divide by zero"
