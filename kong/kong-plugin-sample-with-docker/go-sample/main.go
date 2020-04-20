package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()

	r.GET("/", func(c *gin.Context) {
		header := c.GetHeader("x-custom-header")
		if header == "" {
			header = "nothing"
		}

		c.JSON(200, gin.H{
			"got-header-value": header,
		})
	})
	r.Run()
}
