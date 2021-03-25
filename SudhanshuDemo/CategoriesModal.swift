//
//  CategoriesModal.swift
//  SudhanshuDemo
//
//  Created by Mac on 24/03/21.
//  Copyright © 2021 Sudhanshu. All rights reserved.
//

import Foundation
struct CategoriesModel {
    var name:String?
    var sub_category:[SubCategoryModel] = []
    var isSelected = false
    init(with dict:[String:Any]) {
        self.name = dict["name"] as? String
        
        if let subCategoriesArray = dict["sub_category"] as? [[String:Any]]{
            self.sub_category = subCategoriesArray.map({SubCategoryModel.init(with: $0)})
        }
    }
}

struct SubCategoryModel {
    var display_name:String?
    var name:String?
    init(with dict : [String:Any]) {
        self.display_name = dict["display_name"] as? String
        self.name = dict["name"] as? String
    }
}
//(
//        {
//        name = rings;
//        "sub_category" =         (
//                        {
//                "display_name" = Engagement;
//                name = engagement;
//            },
//                        {
//                "display_name" = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque aliquet arcu, sed placerat turpis. Sed vulputate finibus nisi, nec gravida turpis consectetur quis. Nullam quis vestibulum ex. Integer lacinia quam sed rutrum tempus. Sed quis metus mollis, euismod ipsum in, vulputate turpis. Fusce suscipit ligula in efficitur interdum. Sed ante velit, vulputate nec nibh commodo, tempus molestie eros. Etiam consequat enim nisi, a mollis nisi gravida et. Fusce scelerisque ex vitae turpis fermentum facilisis.";
//                name = "band-couple band";
//            },
//                        {
//                "display_name" = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque aliquet arcu, sed placerat turpis.";
//                name = "Navaratnam+Collection";
//            },
//                        {
//                "display_name" = "Lorem ipsum dolor sit amet";
//                name = cocktail;
//            },
//                        {
//                "display_name" = "Under 15,000/-";
//                name = "below+15000";
//            },
//                        {
//                "display_name" = "Heart Rings";
//                name = hearts;
//            },
//                        {
//                "display_name" = "Halo Rings";
//                name = halo;
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = earrings;
//        "sub_category" =         (
//                        {
//                "display_name" = Studs;
//                name = studs;
//            },
//                        {
//                "display_name" = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque aliquet arcu, sed placerat turpis. Sed vulputate finibus nisi, nec gravida turpis consectetur quis. Nullam quis vestibulum ex. Integer lacinia quam sed rutrum tempus. Sed quis metus mollis, euismod ipsum in, vulputate turpis. Fusce suscipit ligula in efficitur interdum. Sed ante velit, vulputate nec nibh commodo, tempus molestie eros. Etiam consequat enim nisi, a mollis nisi gravida et. Fusce scelerisque ex vitae turpis fermentum facilisis.";
//                name = drops;
//            },
//                        {
//                "display_name" = Hoops;
//                name = hoops;
//            },
//                        {
//                "display_name" = Jhumkis;
//                name = jhumki;
//            },
//                        {
//                "display_name" = "Sui-dhaga";
//                name = "sui dhaga";
//            },
//                        {
//                "display_name" = Pearl;
//                name = pearl;
//            },
//                        {
//                "display_name" = "Less Than 15,000/-";
//                name = "below 15000";
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = pendants;
//        "sub_category" =         (
//                        {
//                "display_name" = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque aliquet arcu, sed placerat turpis.";
//                name = alphabet;
//            },
//                        {
//                "display_name" = Religious;
//                name = religious;
//            },
//                        {
//                "display_name" = Hearts;
//                name = hearts;
//            },
//                        {
//                "display_name" = "Gemstone Pendants";
//                name = "diamond and colored stones";
//            },
//                        {
//                "display_name" = "Single Diamond Pendants";
//                name = "single stone-only diamond";
//            },
//                        {
//                "display_name" = Floral;
//                name = floral;
//            },
//                        {
//                "display_name" = Lockets;
//                name = locket;
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = bangles;
//        "sub_category" =         (
//                        {
//                "display_name" = Round;
//                name = "round bangle";
//            },
//                        {
//                "display_name" = Oval;
//                name = "oval bangle";
//            },
//                        {
//                "display_name" = Eternity;
//                name = eternity;
//            },
//                        {
//                "display_name" = Gold;
//                name = "yellow gold";
//            },
//                        {
//                "display_name" = Bridal;
//                name = wedding;
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = bracelets;
//        "sub_category" =         (
//                        {
//                "display_name" = Gold;
//                name = "yellow gold";
//            },
//                        {
//                "display_name" = Diamond;
//                name = "only diamond";
//            },
//                        {
//                "display_name" = Floral;
//                name = floral;
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = "nose pins";
//        "sub_category" =         (
//                        {
//                "display_name" = Gold;
//                name = "yellow gold";
//            },
//                        {
//                "display_name" = Diamond;
//                name = "only diamond";
//            },
//                        {
//                "display_name" = "Gem Stone";
//                name = "only coloured stone";
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = necklaces;
//        "sub_category" =         (
//                        {
//                "display_name" = Gold;
//                name = "yellow gold";
//            },
//                        {
//                "display_name" = Bridal;
//                name = wedding;
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = tanmaniya;
//        "sub_category" =         (
//                        {
//                "display_name" = Diamond;
//                name = "only diamond";
//            },
//                        {
//                "display_name" = Ruby;
//                name = ruby;
//            },
//                        {
//                "display_name" = "Under 50,000/-";
//                name = "below 50000";
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = "only diamond";
//        "sub_category" =         (
//                        {
//                "display_name" = Rings;
//                name = rings;
//            },
//                        {
//                "display_name" = Earrings;
//                name = earrings;
//            },
//                        {
//                "display_name" = Pendants;
//                name = pendants;
//            },
//                        {
//                "display_name" = Bangles;
//                name = bangles;
//            },
//                        {
//                "display_name" = Bracelets;
//                name = bracelets;
//            },
//                        {
//                "display_name" = Necklaces;
//                name = necklaces;
//            },
//                        {
//                "display_name" = "Nose Pins";
//                name = "nose pins";
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = "plain gold jewellery";
//        "sub_category" =         (
//                        {
//                "display_name" = Rings;
//                name = rings;
//            },
//                        {
//                "display_name" = Earrings;
//                name = earrings;
//            },
//                        {
//                "display_name" = Pendants;
//                name = pendants;
//            },
//                        {
//                "display_name" = Bangles;
//                name = bangles;
//            },
//                        {
//                "display_name" = Bracelets;
//                name = bracelets;
//            },
//                        {
//                "display_name" = Necklaces;
//                name = necklaces;
//            },
//                        {
//                "display_name" = "Nose Pins";
//                name = "nose pins";
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = "diamond and colored stones";
//        "sub_category" =         (
//                        {
//                "display_name" = Rings;
//                name = rings;
//            },
//                        {
//                "display_name" = Earrings;
//                name = earrings;
//            },
//                        {
//                "display_name" = Pendants;
//                name = pendants;
//            },
//                        {
//                "display_name" = Bangles;
//                name = bangles;
//            },
//                        {
//                "display_name" = Bracelets;
//                name = bracelets;
//            },
//                        {
//                "display_name" = Necklaces;
//                name = necklaces;
//            },
//                        {
//                "display_name" = Nosepins;
//                name = nosepins;
//            },
//                        {
//                "display_name" = Tanmaniyas;
//                name = tanmaniyas;
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = platinum;
//        "sub_category" =         (
//                        {
//                "display_name" = "Single Stone";
//                name = "single stone";
//            },
//                        {
//                "display_name" = "Multi Stone";
//                name = multistone;
//            },
//                        {
//                "display_name" = "Single Stone";
//                name = "single stone";
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = men;
//        "sub_category" =         (
//                        {
//                "display_name" = Rings;
//                name = rings;
//            },
//                        {
//                "display_name" = Pendants;
//                name = pendants;
//            },
//                        {
//                "display_name" = Bracelets;
//                name = bracelets;
//            },
//                        {
//                "display_name" = Earrings;
//                name = earrings;
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    },
//        {
//        name = kids;
//        "sub_category" =         (
//                        {
//                "display_name" = Earrings;
//                name = earrings;
//            },
//                        {
//                "display_name" = Pendants;
//                name = pendants;
//            },
//                        {
//                "display_name" = "View All";
//                name = "view all";
//            }
//        );
//    }
//)
