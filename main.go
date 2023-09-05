package main

import (
	"hack_aichi/database"
	"strconv"

	"net/http"

	"github.com/labstack/echo/v4"
)

type Food struct {
	Id            int     `json:"id" param:"id"`
	Name          string  `json:"name"`
	Energy        float64 `json:"energy"`
	Protein       float64 `json:"protein"`
	Lipid         float64 `json:"lipid"`
	Cholesterol   float64 `json:"cholesterol"`
	Carbohydrates float64 `json:"carbohybrates"`
}

type Employee struct {
	ID     int    `json:"id"`
	Name   string `json:"name"`
	Age    int    `json:"age"`
	Gender string `json:"gender"`
}

type EmployeeHealthJoin struct {
	EmployeeID    int     `json:"employee_id" param:"employee_id"`
	Name          string  `json:"name"`
	Age           int     `json:"age"`
	Gender        string  `json:"gender"`
	CheckupDate   string  `json:"checkup_date" param:"checkup_date"`
	Height        float64 `json:"height"`
	Weight        float64 `json:"weight"`
	BloodPressure string  `json:"blood_pressure"`
	BloodSugar    float64 `json:"blood_sugar"`
	Cholesterol   float64 `json:"cholesterol"`
}

type EmployeeFood struct {
	EmployeeID int    `json:"employee_id" param:"employee_id"`
	FoodID     int    `json:"food_id"`
	Date       string `json:"date"`
}

type EmployeeFoodJoin struct {
	EmployeeID   int     `json:"employee_id"`
	EmployeeName string  `json:"employee_name"`
	FoodID       int     `json:"food_id"`
	FoodName     string  `json:"food_name"`
	Energy       float64 `json:"energy"`
	Protein      float64 `json:"protein"`
	Lipid        float64 `json:"lipid"`
	Cholesterol  float64 `json:"cholesterol"`
	Carbohydrate float64 `json:"carbohydrate"`
	Date         string  `json:"date"`
}

type Mission struct {
	ID          int    `json:"id" param:"mission_id"`
	EmployeeID  int    `json:"employee_id" param:"employee_id"`
	Name        string `json:"name"`
	Description string `json:"description"`
	StartDate   string `json:"start_date"`
	EndDate     string `json:"end_date"`
	Status      string `json:"status"`
}

func (EmployeeFood) TableName() string {
	return "employee_food"
}

func getFoods(c echo.Context) error {
	foods := []Food{}
	database.DB.Find(&foods)
	print(foods)
	return c.JSON(http.StatusOK, foods)
}

func getFood(c echo.Context) error {
	food := Food{}
	if err := c.Bind(&food); err != nil {
		return err
	}
	database.DB.Take(&food)
	return c.JSON(http.StatusOK, food)
}

func updateFood(c echo.Context) error {
	food := Food{}
	if err := c.Bind(&food); err != nil {
		return err
	}
	database.DB.Save(&food)
	return c.JSON(http.StatusOK, food)
}

func createFood(c echo.Context) error {
	food := Food{}
	if err := c.Bind(&food); err != nil {
		return err
	}
	database.DB.Create(&food)
	return c.JSON(http.StatusCreated, food)
}

func deleteFood(c echo.Context) error {
	id := c.Param("id")
	database.DB.Delete(&Food{}, id)
	return c.NoContent(http.StatusNoContent)
}

func getEmployeeFood(c echo.Context) error {
	employee_id, _ := strconv.Atoi(c.Param("employee_id"))
	employeeFoodJoin := []EmployeeFoodJoin{}
	database.DB.Table("employee_food").Select("employee_food.employee_id, employees.name AS employee_name, employee_food.food_id, foods.name AS food_name, foods.energy, foods.protein, foods.lipid, foods.cholesterol, foods.carbohydrates, employee_food.date").Joins("JOIN employees ON employee_food.employee_id = employees.id").Joins("JOIN foods ON employee_food.food_id = foods.id").Where("employee_food.employee_id = ?", employee_id).Scan(&employeeFoodJoin)
	return c.JSON(http.StatusOK, employeeFoodJoin)
}

func getEmployeeFoods(c echo.Context) error {
	employeeFoodJoin := []EmployeeFoodJoin{}
	database.DB.Table("employee_food").Select("employee_food.employee_id, employees.name AS employee_name, employee_food.food_id, foods.name AS food_name, foods.energy, foods.protein, foods.lipid, foods.cholesterol, foods.carbohydrates, employee_food.date").Joins("JOIN employees ON employee_food.employee_id = employees.id").Joins("JOIN foods ON employee_food.food_id = foods.id").Scan(&employeeFoodJoin)
	return c.JSON(http.StatusOK, employeeFoodJoin)
}

func createEmployeeFood(c echo.Context) error {
	employeeFood := EmployeeFood{}
	if err := c.Bind(&employeeFood); err != nil {
		return err
	}
	database.DB.Create(&employeeFood)
	return c.JSON(http.StatusCreated, employeeFood)
}

func getEmployees(c echo.Context) error {
	employees := []Employee{}
	database.DB.Find(&employees)
	return c.JSON(http.StatusOK, employees)
}

func getEmployeeHealth(c echo.Context) error {
	employee_id, _ := strconv.Atoi(c.Param("employee_id"))
	employeeHealthJoin := []EmployeeHealthJoin{}
	database.DB.Table("employee_healths").Select("employee_healths.employee_id, employees.name, employees.age, employees.gender, employee_healths.checkup_date, employee_healths.height, employee_healths.weight, employee_healths.blood_pressure, employee_healths.blood_sugar, employee_healths.cholesterol").Joins("JOIN employees ON employee_healths.employee_id = employees.id").Where("employee_healths.employee_id = ?", employee_id).Scan(&employeeHealthJoin)
	return c.JSON(http.StatusOK, employeeHealthJoin)
}

func getMissions(c echo.Context) error {
	missions := []Mission{}
	database.DB.Find(&missions)
	return c.JSON(http.StatusOK, missions)
}

func getMission(c echo.Context) error {
	mission := Mission{}
	if err := c.Bind(&mission); err != nil {
		return err
	}
	database.DB.Take(&mission)
	return c.JSON(http.StatusOK, mission)
}

func getEmployeeMissions(c echo.Context) error {
	missions := []Mission{}
	database.DB.Table("missions").Select("id, employee_id, name,description, start_date, end_date, status").Where("employee_id = ?", c.Param("employee_id")).Scan(&missions)
	return c.JSON(http.StatusOK, missions)
}

func updateMission(c echo.Context) error {
	mission := Mission{}
	if err := c.Bind(&mission); err != nil {
		return err
	}
	database.DB.Save(&mission)
	return c.JSON(http.StatusOK, mission)
}

func createMission(c echo.Context) error {
	mission := Mission{}
	if err := c.Bind(&mission); err != nil {
		return err
	}
	database.DB.Create(&mission)
	return c.JSON(http.StatusCreated, mission)
}

func deleteMission(c echo.Context) error {
	id := c.Param("mission_id")
	database.DB.Delete(&Mission{}, id)
	return c.NoContent(http.StatusNoContent)
}

// func fromPython() {
// 	//result, _ := exec.Command("python3", "recomend.py", "-t", "HiguchiIchiyo").Output()
// 	cmd := exec.Command("python3", "--version")
// 	result, err := cmd.Output()
// 	if err != nil {
// 		fmt.Println("Error:", err)
// 	} else {
// 		fmt.Println("Output:", string(result))
// 	}

// 	cmd2 := exec.Command("python3", "recomend.py", "-t", "HiguchiIchiyo")
// 	result2, err := cmd2.Output()
// 	if err != nil {
// 		fmt.Println("Error:", err)
// 	} else {
// 		fmt.Println("Output:", string(result2))
// 	}
// }

func main() {
	e := echo.New()
	database.Connect()
	sqlDB, _ := database.DB.DB()
	defer sqlDB.Close()

	e.GET("/food", getFoods)
	e.GET("/food/:id", getFood)
	e.PUT("/food/:id", updateFood)
	e.POST("/food", createFood)
	e.DELETE("/food/:id", deleteFood)

	e.GET("/employeefood/:employee_id", getEmployeeFood)
	e.GET("/employeefood", getEmployeeFoods)
	e.POST("/employeefood", createEmployeeFood)

	e.GET("/employee", getEmployees)

	e.GET("/employeehealths/:employee_id", getEmployeeHealth)

	e.GET("/mission", getMissions)
	e.GET("/mission/:employee_id", getEmployeeMissions)
	e.GET("/mission/:employee_id/:mission_id", getMission)
	e.PUT("/mission/:employee_id/:mission_id", updateMission)
	e.POST("/mission", createMission)
	e.DELETE("/mission/:mission_id", deleteMission)

	e.Logger.Fatal(e.Start(":4000")) // コンテナ側の開放ポートと一緒にすること
}
