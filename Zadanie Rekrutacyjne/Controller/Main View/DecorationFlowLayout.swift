import UIKit

var SEPARATOR_HEIGHT = 10

class DecorationFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        itemSize = CGSize(width: CELL_WIDTH, height: CELL_HEIGHT)
        minimumInteritemSpacing = CGFloat(SEPARATOR_HEIGHT)
        minimumLineSpacing = CGFloat(SEPARATOR_HEIGHT)
        register(DecoratorView.self, forDecorationViewOfKind: kDecoratorViewKind)
    }
    
    override func layoutAttributesForDecorationView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        
        var frame = CGRect.zero
        
        if let rows = collectionView?.numberOfItems(inSection: 0), indexPath.row < rows{
            if let cellAtrtributes = layoutAttributesForItem(at: indexPath){
                frame = cellAtrtributes.frame
            }
        }
        
        let layoutAttributes = UICollectionViewLayoutAttributes(forDecorationViewOfKind: kDecoratorViewKind, with: indexPath)
        
        layoutAttributes.frame = CGRect(x: Int(frame.minX), y: Int(frame.maxY), width: Int(frame.size.width), height: SEPARATOR_HEIGHT)
        
        
        layoutAttributes.zIndex = -1
        
        return layoutAttributes
        
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        let layoutAttributesArray = super.layoutAttributesForElements(in: rect)
        var decorationAttributes:[UICollectionViewLayoutAttributes] = []
        let indexTmp = collectionView!.numberOfItems(inSection: 0) - 2
        if indexTmp > 0 {
            for i in 0...indexTmp{
                let layoutAttribute : UICollectionViewLayoutAttributes = layoutAttributesForDecorationView(ofKind: kDecoratorViewKind, at: IndexPath(item: i, section: 0))!
                decorationAttributes.append(layoutAttribute)
            }
        }
        
        return layoutAttributesArray! + decorationAttributes
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
