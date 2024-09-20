object Hello {

    def fibSequenceRecursion(sequenceSize: Int): Seq[Long] = {
        def getNextNum(num: Long): Long = {
            if (num <= 1) {
            num
            } else {
            getNextNum(num - 1) + getNextNum(num - 2)
            }
        }
        (0L until sequenceSize).map(getNextNum)
    }

    def main(args: Array[String]) = {
        println("Fibonnaci(12): " + fibSequenceRecursion(12))
        println("Fibonnaci(12): " + fibSequenceRecursion(12))

        println("Hello, world")
        println("Hello, world")
        println("Hello, world")
        println("Fibonnaci(12): " + fibSequenceRecursion(12))
        println("Fibonnaci(12): " + fibSequenceRecursion(12))
        println("Fibonnaci(12): " + fibSequenceRecursion(12))
    }

    def fibTailRec(sequenceSize: Int): Seq[Long] = {
        @tailrec
        def fib(n: Int, a: Long, b: Long, acc: List[Long]): List[Long] = {
            if (n <= 0) acc
            else fib(n - 1, b, a + b, acc :+ a)
        }
        fib(sequenceSize, 0L, 1, Nil)
    }
}