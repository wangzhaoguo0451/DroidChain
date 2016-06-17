.class public final Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FeedPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/FeedPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public detail:Ljava/lang/String;

.field public identity:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public template:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/FeedPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 73
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->identity:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->name:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;->template:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->template:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/FeedPackage;->detail:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->detail:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/FeedPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/FeedPackage;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/wandoujia/logv3/model/packages/FeedPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/FeedPackage;-><init>(Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->detail:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public final identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->identity:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->name:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public final template(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->template:Ljava/lang/String;

    .line 92
    return-object p0
.end method
