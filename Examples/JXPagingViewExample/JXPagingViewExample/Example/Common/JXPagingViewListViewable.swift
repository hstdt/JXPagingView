//
//  JXPagingViewListViewable.swift
//  JXPagingViewExample
//
//  Created by 方林威 on 2021/1/6.
//  Copyright © 2021 jiaxin. All rights reserved.
//

import JXPagingView

extension JXPagingViewListViewDelegate where Self: UIViewController {
    
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> ()) {
        listViewDidScrollCallback = callback
    }

    func listView() -> UIView { view }
    
    func listWillAppear() {
        print("\(title ?? ""):\(#function)")
    }

    func listDidAppear() {
        print("\(title ?? ""):\(#function)")
    }

    func listWillDisappear() {
        print("\(title ?? ""):\(#function)")
    }

    func listDidDisappear() {
        print("\(title ?? ""):\(#function)")
    }
}

nonisolated(unsafe) private var ListControllerViewDidScrollKey = malloc(1)
extension JXPagingViewListViewDelegate where Self: UIViewController {
    
    var listViewDidScrollCallback: ((UIScrollView) -> ())? {
        get { objc_getAssociatedObject(self, &ListControllerViewDidScrollKey) as? (UIScrollView) -> () }
        set { objc_setAssociatedObject(self, &ListControllerViewDidScrollKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }
}


extension JXPagingViewListViewDelegate where Self: UIView {
    
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> ()) {
        listViewDidScrollCallback = callback
    }

    func listView() -> UIView { self }
    
    func listWillAppear() {
        print("\(classForCoder):\(#function)")
    }

    func listDidAppear() {
        print("\(classForCoder):\(#function)")
    }

    func listWillDisappear() {
        print("\(classForCoder):\(#function)")
    }

    func listDidDisappear() {
        print("\(classForCoder):\(#function)")
    }
}

nonisolated(unsafe) private var ListViewDidScrollKey = malloc(1)
extension JXPagingViewListViewDelegate where Self: UIView {
    
    var listViewDidScrollCallback: ((UIScrollView) -> ())? {
        get { objc_getAssociatedObject(self, &ListViewDidScrollKey) as? (UIScrollView) -> () }
        set { objc_setAssociatedObject(self, &ListViewDidScrollKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }
}
