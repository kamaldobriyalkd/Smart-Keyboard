biGrams<-read.table("ngrams/biGrams.txt",header = T)
triGrams<-read.table("ngrams/triGrams.txt",header = T)
quadGrams<-read.table("ngrams/quadGrams.txt",header = T)


biGramPredict<-function(sentence){
    word<-strsplit(sentence," ")[[1]][length(strsplit(sentence," ")[[1]])]
    word<-paste("^",word," ",sep="")
    x<-biGrams[grep(word,biGrams[,1]),]
    if(nrow(x)>1){
        y<-x[order(x$freq,decreasing=T),1][1:3]
        y<-y[1:sum(!is.na(y))]
        z<-unlist(lapply(strsplit(y," "),function(x){
            x[2]
        }))
        return(paste0(z,collapse = " &nbsp;&nbsp;&nbsp;&nbsp;"))
    }
    else return("?")
}


triGramPredict<-function(sentence){
    words<-strsplit(sentence," ")[[1]]
    word<-words[(length(words)-1):length(words)]
    word<-paste(word,collapse = " ")
    word<-paste("^",word," ",sep="")
    x<-triGrams[grep(word,triGrams[,1]),]
    if(nrow(x)>1){
        y<-x[order(x$freq,decreasing=T),1][1:3]
        y<-y[1:sum(!is.na(y))]
        z<-unlist(lapply(strsplit(y," "),function(x){
            x[3]
        }))
        return(paste0(z,collapse = "  &nbsp;&nbsp;&nbsp;&nbsp;"))
    }
    else biGramPredict(sentence)
}


quadGramPredict<-function(sentence){
    words<-strsplit(sentence," ")[[1]]
    word<-words[(length(words)-2):length(words)]
    word<-paste(word,collapse = " ")
    word<-paste("^",word," ",sep="")
    x<-quadGrams[grep(word,quadGrams[,1]),]
    if(nrow(x)>1){
        y<-x[order(x$freq,decreasing=T),1][1:3]
        y<-y[1:sum(!is.na(y))]
        z<-unlist(lapply(strsplit(y," "),function(x){
            x[4]
        }))
        return(paste0(z,collapse = "  &nbsp;&nbsp;&nbsp;&nbsp;"))
    }
    else triGramPredict(sentence)
}


checkSpace<-function(sentence){
    totChars<-nchar(sentence)
    if(substr(sentence,totChars,totChars)==" "){
        sentence<-tolower(sentence)
        sentence<-gsub("'","thisismyownapostrophetextsetforanalysis",sentence)
        sentence<-gsub("#[a-z0-9]*"," ",sentence)
        sentence<-gsub("[^a-z]"," ",sentence)
        sentence<-gsub("thisismyownapostrophetextsetforanalysis","'",sentence)
        sentence<-stripWhitespace(trimws(sentence))
        if(length(strsplit(sentence," ")[[1]])==1)
            biGramPredict(sentence)
        else if(length(strsplit(sentence," ")[[1]])==2)
            triGramPredict(sentence)
        else if(length(strsplit(sentence," ")[[1]])>=2)
            quadGramPredict(sentence)
        else return("")
        
    }else return("")
    
}