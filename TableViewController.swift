//
//  TableViewController.swift
//  angelasKitchen
//
//  Created by Cons Bulaqueña on 27/03/2017.
//  Copyright © 2017 consios. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var foodArray:[Food] = [Food]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let food1 = Food(imageName: "grilledchicken.png", description: "Chicken & Hummus Wrap", moreInfo: "Preheat a grilled over medium-high heat to 425 degrees. Pound chicken to an even thickness using the flat side of a meat mallet. Brush chicken breasts lightly with about 1 Tbsp olive oil, season with salt and pepper. Brush grilled grates lightly with oil, and grill chicken, rotating once halfway through cooking, until it registers 165 in center on an instant read thermometer, about 6 - 8 minutes. Transfer to a plate, cover with foil, let rest 10 minutes then dice into cubes. Transfer chicken to a bowl, pour vinaigrette over chicken and toss to evenly coat.")
        
        let food2 = Food(imageName: "greekpasta.png", description: "Greek Pasta Salad", moreInfo: "Cook pasta according to package directions. Drain and cool.Whisk together oil, juice, mayonnaise and Greek seasoning in a large bowl. Add cooked pasta, tomatoes, feta cheese and basil. Toss to coat.Cover and refrigerate 8 hours before serving.")
        
        let food3 = Food(imageName: "chocochip.png", description: "Chocolate Oatmeal Bars", moreInfo: "Preheat your oven to 350 degrees. Into your stand mixer or large mixing bowl place 2 C flour, 1 tsp baking soda, 1 tsp baking powder, 1 tsp salt and 1/2 tsp cinnamon. Toss them together with a fork to combine. Grab 2 1/2 cups Old Fashioned Oats and add them to the mixing bowl. Add 1 1/2 C brown sugar and toss everything together to mix. Melt 1 1/4 C butter and pour it into the bowl. Mix for one minute.  Add 2 eggs and 1 Tb vanilla. Mix until the dough has combined. Add the chocolate chips. Mix the chips in. Spray a 9x13 pan with cooking spray and press the dough into it.Bake for 20 minutes.")
        
        let food4 = Food(imageName: "greeksalad.png", description: "Greek Veggie Salad", moreInfo: "Place the cucumber, black beans, corn, red pepper, cherry tomatoes, and chopped cilantro in a bowl. Squeeze the fresh juice from the lime onto the salad, and stir well.Mix in the avocado, season with salt and pepper, and enjoy.")
        
        let food5 = Food(imageName: "blackberrycheese.png", description: "Blackberry Cheesecake", moreInfo: "Preheat the oven to 350 degrees F. For the crust: Line a 9-by-13-inch rectangular baking pan with foil and spray with cooking spray. Place the vanilla wafers and pecans into the bowl of a food processor and pulse until the mixture becomes crumbs. Add the melted butter and pulse again until combined. For the filling: Beat the cream cheese, sugar and vanilla together in a medium bowl with an electric mixer until smooth. Add the eggs one at a time, beating after each addition. Add the sour cream and mix again. Pour the filling into the crust, smooth the top and bake for 50 minutes. Turn off the oven, open the oven door and allow the pan to sit in the open oven for 15 minutes.")
        
        let food6 = Food(imageName: "eggplant.png", description: "Eggplant Parmesan", moreInfo: "Preheat oven to 375 degrees. Brush 2 baking sheets with oil; set aside. In a wide, shallow bowl, whisk together eggs and 2 tablespoons water. In another bowl, combine breadcrumbs, 3/4 cup Parmesan, oregano, and basil; season with salt pepper. Dip eggplant slices in egg mixture, letting excess drip off, then dredge in breadcrumb mixture, coating well; place on baking sheets. Bake until golden brown on bottom, 20 to 25 min. Turn slices; continue baking until browned on other side, 20 to 25 minutes more. Remove from oven; raise oven heat to 400 degrees. Spread 2 cups sauce in a 9-by-13-inch baking dish. Arrange half the eggplant in dish; cover with 2 cups sauce, then 1/2 cup mozzarella. Repeat with remaining eggplant, sauce, and mozzarella. Bake until sauce is bubbling and cheese is melted, 15 to 20 minutes.")
        
        let food7 = Food(imageName: "pie.png", description: "Chicken Tamale Pie", moreInfo: "Preheat the oven to 400 degrees F.  Heat the chicken, salsa, beans, 1/2 cup of the broth and the chili powder in a 10-inch cast-iron skillet over medium heat, stirring, until simmering. Stir in the scallions and remove from the heat.  Meanwhile, combine the cornmeal with the remaining 1 cup broth and 1 cup water in a medium pan. Bring to a simmer over medium heat, stirring, until very thick, 5 to 7 minutes. Remove from the heat and stir in the cheese and butter. Season with 1/4 teaspoon salt and 1/4 teaspoon pepper.  Spread the cornmeal mixture over the filling and bake until cooked through, about 30 minutes. Let stand for 15 minutes. Serve with sour cream.")
        
        foodArray.append(food1)
        foodArray.append(food2)
        foodArray.append(food3)
        foodArray.append(food4)
        foodArray.append(food5)
        foodArray.append(food6)
        foodArray.append(food7)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myCell
        
        let foodItem = foodArray[indexPath.row]
        
        cell.myImageView.image = UIImage(named: foodItem.imageName)
        cell.myLabel.text = foodItem.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let foodSelected = foodArray[indexPath.row]
        let detailVC:DetailViewcontroller = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewcontroller
        
        detailVC.imageDetail = foodSelected.imageName
        detailVC.descriptionLabel = foodSelected.description
        detailVC.moreInfoDetail = foodSelected.moreInfo
        
        self.present(detailVC, animated: true, completion: nil)
        
    }
    
}
