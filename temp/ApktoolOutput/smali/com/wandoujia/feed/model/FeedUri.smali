.class public Lcom/wandoujia/feed/model/FeedUri;
.super Ljava/lang/Object;
.source "FeedUri.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final typePosition:I

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/wandoujia/feed/model/FeedUri;->uri:Ljava/lang/String;

    .line 18
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/feed/model/FeedUri;->typePosition:I

    .line 19
    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/feed/model/FeedUri;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/feed/model/FeedUri;->typePosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/feed/model/FeedUri;->uri:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/wandoujia/feed/model/FeedUri;->typePosition:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/feed/model/FeedUri;->uri:Ljava/lang/String;

    iget v1, p0, Lcom/wandoujia/feed/model/FeedUri;->typePosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
