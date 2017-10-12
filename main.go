
/*
go run main.go 300
*/
package main
import (
        "fmt"
        "os"
)
func main() {
        if len(os.Args) != 2 {
                os.Exit(1)
        }
        fmt.Println("It's over", os.Args[1])
        //Arrays
        scores := make([]int, 0, 10)
        scores = scores[0:8]
        scores[7] = 9033
        fmt.Println(scores)
}