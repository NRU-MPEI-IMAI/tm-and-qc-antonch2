namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
    operation Solve (qs : Qubit[]) : Int 
    {
        body
        {
            mutable ones = 0;
            for i in 0..Length(qs) - 1 {
                if (M(qs[i]) == One) {  // measurement
                    set ones += 1;
                }
            }
            if (ones == 1) {
                return 1;
            }
            return 0;
        }
    }
}