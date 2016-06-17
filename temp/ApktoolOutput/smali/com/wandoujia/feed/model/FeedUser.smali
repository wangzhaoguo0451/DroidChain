.class public Lcom/wandoujia/feed/model/FeedUser;
.super Ljava/lang/Object;
.source "FeedUser.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final cookie:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/wandoujia/feed/model/FeedUser;->cookie:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static createAsUdid(Ljava/lang/String;)Lcom/wandoujia/feed/model/FeedUser;
    .locals 3
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/wandoujia/feed/model/FeedUser;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wdj_udid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/feed/model/FeedUser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAsWdjUser(Ljava/lang/String;)Lcom/wandoujia/feed/model/FeedUser;
    .locals 3
    .parameter

    .prologue
    .line 16
    new-instance v0, Lcom/wandoujia/feed/model/FeedUser;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wdj_auth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/feed/model/FeedUser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/feed/model/FeedUser;->cookie:Ljava/lang/String;

    return-object v0
.end method
