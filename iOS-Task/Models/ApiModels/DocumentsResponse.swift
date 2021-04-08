//
//  DocumentsResponse.swift
//  iOS-Task
//
//  Created by huda elhady on 07/04/2021.
//

import Foundation

struct DocumentsParentEntity : Codable {

    let docs : [DocumentModel]?
    let numFound : Int?
    let start : Int?

    enum CodingKeys: String, CodingKey {
        case docs = "docs"
        case numFound = "numFound"
        case start = "start"
    }
    
}

struct DocumentModel : Codable {

    var authorAlternativeName : [String]?
    var authorKey : [String]?
    var authorName : [String]?
    var contributor : [String]?
    var coverEditionKey : String?
    var coverI : Int?
    var ddc : [String]?
    var ebookCountI : Int?
    var editionCount : Int?
    var editionKey : [String]?
    var firstPublishYear : Int?
    var firstSentence : [String]?
    var hasFulltext : Bool?
    var ia : [String]?
    var iaBoxId : [String]?
    var iaCollectionS : String?
    var iaLoadedId : [String]?
    var idAlibrisId : [String]?
    var idAmazon : [String]?
    var idAmazonCaAsin : [String]?
    var idAmazonCoUkAsin : [String]?
    var idAmazonDeAsin : [String]?
    var idAmazonItAsin : [String]?
    var idBcid : [String]?
    var idBritishNationalBibliography : [String]?
    var idCanadianNationalLibraryArchive : [String]?
    var idDepósitoLegal : [String]?
    var idGoodreads : [String]?
    var idGoogle : [String]?
    var idLibrarything : [String]?
    var idNla : [String]?
    var idOverdrive : [String]?
    var idPaperbackSwap : [String]?
    var idWikidata : [String]?
    var isbn : [String]?
    var key : String?
    var language : [String]?
    var lastModifiedI : Int?
    var lcc : [String]?
    var lccn : [String]?
    var lendingEditionS : String?
    var lendingIdentifierS : String?
    var oclc : [String]?
    var person : [String]?
    var place : [String]?
    var printdisabledS : String?
    var publicScanB : Bool?
    var publishDate : [String]?
    var publishPlace : [String]?
    var publishYear : [Int]?
    var publisher : [String]?
    var seed : [String]?
    var subject : [String]?
    var subtitle : String?
    var text : [String]?
    var time : [String]?
    var title : String?
    var titleSuggest : String?
    var type : String?


    enum CodingKeys: String, CodingKey {
        case authorAlternativeName = "author_alternative_name"
        case authorKey = "author_key"
        case authorName = "author_name"
        case contributor = "contributor"
        case coverEditionKey = "cover_edition_key"
        case coverI = "cover_i"
        case ddc = "ddc"
        case ebookCountI = "ebook_count_i"
        case editionCount = "edition_count"
        case editionKey = "edition_key"
        case firstPublishYear = "first_publish_year"
        case firstSentence = "first_sentence"
        case hasFulltext = "has_fulltext"
        case ia = "ia"
        case iaBoxId = "ia_box_id"
        case iaCollectionS = "ia_collection_s"
        case iaLoadedId = "ia_loaded_id"
        case idAlibrisId = "id_alibris_id"
        case idAmazon = "id_amazon"
        case idAmazonCaAsin = "id_amazon_ca_asin"
        case idAmazonCoUkAsin = "id_amazon_co_uk_asin"
        case idAmazonDeAsin = "id_amazon_de_asin"
        case idAmazonItAsin = "id_amazon_it_asin"
        case idBcid = "id_bcid"
        case idBritishNationalBibliography = "id_british_national_bibliography"
        case idCanadianNationalLibraryArchive = "id_canadian_national_library_archive"
        case idDepósitoLegal = "id_depósito_legal"
        case idGoodreads = "id_goodreads"
        case idGoogle = "id_google"
        case idLibrarything = "id_librarything"
        case idNla = "id_nla"
        case idOverdrive = "id_overdrive"
        case idPaperbackSwap = "id_paperback_swap"
        case idWikidata = "id_wikidata"
        case isbn = "isbn"
        case key = "key"
        case language = "language"
        case lastModifiedI = "last_modified_i"
        case lcc = "lcc"
        case lccn = "lccn"
        case lendingEditionS = "lending_edition_s"
        case lendingIdentifierS = "lending_identifier_s"
        case oclc = "oclc"
        case person = "person"
        case place = "place"
        case printdisabledS = "printdisabled_s"
        case publicScanB = "public_scan_b"
        case publishDate = "publish_date"
        case publishPlace = "publish_place"
        case publishYear = "publish_year"
        case publisher = "publisher"
        case seed = "seed"
        case subject = "subject"
        case subtitle = "subtitle"
        case text = "text"
        case time = "time"
        case title = "title"
        case titleSuggest = "title_suggest"
        case type = "type"
    }
    
    init(title: String, authorNameList: [String], isbnList: [String]) {
        self.title = title
        self.authorName = authorNameList
        self.isbn = isbnList
    }
    
}
