//
//  FixFlipViewController.swift
//  HOME-REinvestments
//
//  Created by Kayla M on 12/3/18.
//  Copyright © 2018 Kayla M. All rights reserved.
//

import UIKit

class FixFlipViewController: UIViewController {

    
    @IBOutlet weak var discount: UITextField!
    @IBOutlet weak var financingPoints: UITextField!
    @IBOutlet weak var interestRate: UITextField!
    @IBOutlet weak var annualTaxes: UITextField!
    @IBOutlet weak var monthlyUtilities: UITextField!
    
    @IBOutlet weak var monthsToSell: UITextField!
    @IBOutlet weak var realEstateCommission: UITextField!
    @IBOutlet weak var buyerConcession: UITextField!
    
    @IBOutlet weak var afterRepairValue: UITextField!
    @IBOutlet weak var discountPurchasePrice: UITextField!
    @IBOutlet weak var estimatedRepairs: UITextField!
    @IBOutlet weak var financingCost: UITextField!
    @IBOutlet weak var maxPurchasePrice: UITextField!
    
    @IBOutlet weak var actualPurchasePrice: UITextField!
    @IBOutlet weak var loanAmount: UITextField!
    
    //Closing Costs when Buying
    @IBOutlet weak var escrowFeeBuy: UITextField!
    @IBOutlet weak var recordingFees: UITextField!
    @IBOutlet weak var attorneyFeesBuy: UITextField!
    @IBOutlet weak var lendersTitlePolicy: UITextField!
    @IBOutlet weak var hazardInsurancePolicy: UITextField!
    @IBOutlet weak var lenderDiscountPoints: UITextField!
    @IBOutlet weak var totalCostsWhenBuying: UITextField!
    
    //holding costs
    @IBOutlet weak var interest: UITextField!
    @IBOutlet weak var taxes: UITextField!
    @IBOutlet weak var utilities: UITextField!
    @IBOutlet weak var totalHoldingCosts: UITextField!
    
    //Closing Costs on Sale
    @IBOutlet weak var commission: UITextField!
    @IBOutlet weak var titlePolicy: UITextField!
    @IBOutlet weak var escrowFeeSell: UITextField!
    @IBOutlet weak var attorneyFeesSell: UITextField!
    @IBOutlet weak var concessions: UITextField!
    @IBOutlet weak var totalCostsWhenSelling: UITextField!
    
    @IBOutlet weak var totalCosts: UITextField!
    
    @IBOutlet weak var netProfit: UITextField!
    
    @IBOutlet weak var calculate: UIButton!
    
    
    //for navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    }
    
    //for everything else
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        func calculate() {
            //Maximum Purchase Price Base Calculation
            discountPurchasePrice.text = "\(Int(afterRepairValue.text!) ?? 0) * \(Int(discount.text!) ?? 0)"
            
            financingCost.text = "\(Int(financingPoints.text!) ?? 0) / 100 * \(Int(discountPurchasePrice.text!) ?? 0)"
            
            maxPurchasePrice.text = "\(Int(discountPurchasePrice.text!) ?? 0)-\(Int(estimatedRepairs.text!) ?? 0)-\(Int(financingCost.text!) ?? 0)"
            
            loanAmount.text = "\(Int(actualPurchasePrice.text!) ?? 0)"
            
            //Closing Costs When Buying
            lendersTitlePolicy.text = "0.00005*\(Int(actualPurchasePrice.text!) ?? 0)"
            lenderDiscountPoints.text = "\(Int(financingPoints.text!) ?? 0)*\(Int(loanAmount.text!) ?? 0)"
            
            totalCostsWhenBuying.text = "\(Int(escrowFeeBuy.text!) ?? 0)+\(Int(recordingFees.text!) ?? 0)+\(Int(attorneyFeesBuy.text!) ?? 0)+\(Int(lendersTitlePolicy.text!) ?? 0)+\(Int(hazardInsurancePolicy.text!) ?? 0)+\(Int(lenderDiscountPoints.text!) ?? 0)"
            
            
            //Holding Costs
            interest.text = "\(Int(interestRate.text!) ?? 0)*\(Int(monthsToSell.text!) ?? 0)"
            
            taxes.text = "\(Int(annualTaxes.text!) ?? 0) * (\(Int(monthsToSell.text!) ?? 0) / 12)"
            
            utilities.text = "\(Int(monthlyUtilities.text!) ?? 0)*\(Int(monthsToSell.text!) ?? 0)"
            
            totalHoldingCosts.text = "\(Int(interest.text!) ?? 0)+\(Int(taxes.text!) ?? 0)+\(Int(utilities.text!) ?? 0)"
            
            //Closing Costs on Sale
            commission.text = "\(Int(realEstateCommission.text!) ?? 0)"
            
            concessions.text = "\(Int(buyerConcession.text!) ?? 0)"
            
            totalCostsWhenSelling.text = "\(Int(commission.text!) ?? 0)+\(Int(titlePolicy.text!) ?? 0)+\(Int(escrowFeeSell.text!) ?? 0)+\(Int(attorneyFeesSell.text!) ?? 0)+\(Int(concessions.text!) ?? 0)"
            
            totalCosts.text = "\(Int(totalCostsWhenBuying.text!) ?? 0)+\(Int(totalCostsWhenSelling.text!) ?? 0)+\(Int(totalHoldingCosts.text!) ?? 0)"
            
            netProfit.text = "\(Int(afterRepairValue.text!) ?? 0)-\(Int(totalCosts.text!) ?? 0)"
        }
        
        
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        calculate()
    }
    
    /*@IBAction func calculateNP(_ sender: UIButton) {
     calculate()
     }
     */
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
