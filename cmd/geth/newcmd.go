package main

import (
	"fmt"
	"github.com/ethereum/go-ethereum/cmd/utils"
	"gopkg.in/urfave/cli.v1"
)
var (
	khzCommand = cli.Command{
		Action:    utils.MigrateFlags(khz),
		Name:      "khz",
		Usage:     "Simply print my name",
		ArgsUsage: " ",
		Flags: []cli.Flag{
			utils.KhzFlag,
		},
		Category: " ",
	}
)

func khz(ctx *cli.Context) error {
	fmt.Println("This command is made by khz")
	if file := ctx.GlobalString(utils.KhzFlag.Name); file != "" {
		fmt.Println(file)
	}

	return nil
}