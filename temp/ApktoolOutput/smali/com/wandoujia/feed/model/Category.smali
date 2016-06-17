.class public Lcom/wandoujia/feed/model/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private label:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private term:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/feed/model/Category;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/feed/model/Category;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/feed/model/Category;->term:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wandoujia/feed/model/Category;->label:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/feed/model/Category;->scheme:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTerm(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/wandoujia/feed/model/Category;->term:Ljava/lang/String;

    .line 20
    return-void
.end method
