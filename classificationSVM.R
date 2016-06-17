library(e1071)
library(rpart)

data(fbclass)

index <- 1:nrow(fbclass)
index

testindex <- sample(index, trunc(length(index)/3))
testindex

testset <- fbclass[testindex,]
testset
trainset <- fbclass[-testindex,]
trainset

svm.model <- svm(employementstatus ~ ., data = trainset, cost = 100, gamma = 1)
svm.pred <- predict(svm.model, testset[,-25])

svm.model
svm.pred

rpart.model <- rpart(employementstatus ~ ., data = trainset)
rpart.model

rpart.pred <- predict(rpart.model, testset[,-25], type = "class")


table(pred = svm.pred, true = testset[,25])
