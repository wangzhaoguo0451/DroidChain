.class public Lcom/wandoujia/account/dto/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xe3f5b3ab5b20971L


# instance fields
.field private bottom:I

.field private height:I

.field private largeicon:Ljava/lang/String;

.field private left:I

.field private right:I

.field private smallicon:Ljava/lang/String;

.field private top:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/wandoujia/account/dto/PhoneInfo;->bottom:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/wandoujia/account/dto/PhoneInfo;->height:I

    return v0
.end method

.method public getLargeicon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/account/dto/PhoneInfo;->largeicon:Ljava/lang/String;

    return-object v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/wandoujia/account/dto/PhoneInfo;->left:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/wandoujia/account/dto/PhoneInfo;->right:I

    return v0
.end method

.method public getSmallicon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/account/dto/PhoneInfo;->smallicon:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/wandoujia/account/dto/PhoneInfo;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/wandoujia/account/dto/PhoneInfo;->width:I

    return v0
.end method

.method public setBottom(I)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->bottom:I

    .line 60
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->height:I

    .line 84
    return-void
.end method

.method public setLargeicon(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->largeicon:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setLeft(I)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->left:I

    .line 68
    return-void
.end method

.method public setRight(I)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->right:I

    .line 76
    return-void
.end method

.method public setSmallicon(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->smallicon:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->top:I

    .line 52
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput p1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->width:I

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoneInfo [largeicon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->largeicon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smallicon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->smallicon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wandoujia/account/dto/PhoneInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
