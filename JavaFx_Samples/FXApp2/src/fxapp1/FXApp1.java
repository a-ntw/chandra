/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fxapp1;

import javafx.application.Application;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.RadioButton;
import javafx.scene.control.Slider;
import javafx.scene.control.ToggleGroup;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.TilePane;
import javafx.stage.Stage;

public class FXApp1 extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        try {
            // set title
            primaryStage.setTitle("JavaFX Slider Tutorial - tutorialkart.com");

            // tile pane
            TilePane tilePane = new TilePane();

            //javafx text field
            Slider slider = new Slider(0, 100, 1);

            slider.valueProperty().addListener(new ChangeListener<Number>() {

                public void changed(
                        ObservableValue<? extends Number> observableValue,
                        Number oldValue,
                        Number newValue) {
                    System.out.println(slider.getValue());
                }
            });

            RadioButton radioButton0 = new RadioButton("Single Radio Button");

            //javafx radio buttons
            RadioButton radioButton1 = new RadioButton("Option 1");
            RadioButton radioButton2 = new RadioButton("Option 2");
            RadioButton radioButton3 = new RadioButton("Option 3");

            //a group for radio buttons
            ToggleGroup radioGroup = new ToggleGroup();

            //to group radio buttons
            radioButton1.setToggleGroup(radioGroup);
            radioButton2.setToggleGroup(radioGroup);
            radioButton3.setToggleGroup(radioGroup);

            // tile pane
            // add radio buttons to the tile pane
            tilePane.getChildren().add(radioButton1);
            tilePane.getChildren().add(radioButton2);
            tilePane.getChildren().add(radioButton3);

            // add slide to the tile pane
            tilePane.getChildren().add(slider);
            tilePane.getChildren().add(radioButton0);

            Button button = new Button("Submit");
            button.setOnAction(action -> {
                System.out.println("Is option 1 selected: "+radioButton1.isSelected());
                System.out.println("Is option 2 selected: "+radioButton2.isSelected());
                System.out.println("Is option 3 selected: "+radioButton3.isSelected());
            });
            
            tilePane.getChildren().add(button);
            //set up scene
            Scene scene = new Scene(tilePane, 150, 400);
            primaryStage.setScene(scene);
            primaryStage.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
