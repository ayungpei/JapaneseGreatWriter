//
//  ViewController.swift
//  JapaneseGreatWriter
//
//  Created by apple on 2021/7/20.
//

import UIKit

let writerImage = ["Natsume_Soseki_photo.jpeg","Akutagawa_Ryunosuke.jpeg","Kawabata_Yasunari.jpeg"]
let writerName = ["夏目漱石","芥川龍之介","川端康成"]
let page = ["『吾輩は猫である』","『羅生門』","『雪国』"]

var arrayIndex:Int = 0

class ViewController: UIViewController {

    @IBOutlet weak var writerView: UIImageView!
    
    @objc func changePage(_ sender: UISwipeGestureRecognizer){
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBOutlet weak var writerNameLabel: UILabel!
    @IBOutlet weak var writerPage: UIPageControl!
    
    @IBOutlet weak var numberOfPage: UILabel!
    
    @IBOutlet weak var timeSegment: UISegmentedControl!
    
    func sync(){
        writerView.image = UIImage(named: writerImage[arrayIndex])
        writerPage.currentPage = arrayIndex
        writerNameLabel.text = writerName[arrayIndex]
        numberOfPage.text = page[arrayIndex]
        
        timeSegment.selectedSegmentIndex = arrayIndex
        
    }
        
    @IBAction func pageControllerChange(_ sender: Any) {
        if writerPage.currentPage == 0{
            arrayIndex = 0
            sync()
        }
        else if writerPage.currentPage == 1{
            arrayIndex = 1
            sync()
        }
        else {
            arrayIndex = 2
            sync()
        }
    }
   
    @IBAction func leftBtn(_ sender: Any) {
        if arrayIndex == 0{
            arrayIndex = arrayIndex + 2
            sync()
        }
        else if arrayIndex == 1{
            arrayIndex = arrayIndex - 1
            sync()
        }
        else{
            arrayIndex = arrayIndex - 1
            sync()
        }
    }
    
    @IBAction func rightBtn(_ sender: Any) {
        if arrayIndex == 0{
            arrayIndex = arrayIndex + 1
            sync()
        }
        else if arrayIndex == 1{
            arrayIndex = arrayIndex + 1
            sync()
        }
        else{
            arrayIndex = arrayIndex - 2
            sync()
        }
    }
    
    @IBAction func timesChange(_ sender: Any) {
        if timeSegment.selectedSegmentIndex == 0{
            arrayIndex = 0
            sync()
        }
        else if timeSegment.selectedSegmentIndex == 1{
            arrayIndex = 1
            sync()
        }
        else{
            arrayIndex = 2
            sync()
        }
        
    }
    
    @IBAction func swipeShowPrevPic(_ sender: Any) {
        if arrayIndex == 0{
            arrayIndex += 2
            sync()
        }
        else if arrayIndex == 1{
            arrayIndex -= 1
            sync()
        }
        else{
            arrayIndex -= 1
            sync()
        }
            
    }
    
    @IBAction func swipeShowNextPic(_ sender: Any) {
        if arrayIndex == 0{
            arrayIndex += 1
            sync()
        }
        else if arrayIndex == 1{
            arrayIndex += 1
            sync()
        }
        else{
            arrayIndex -= 2
            sync()
        }
    }
}

