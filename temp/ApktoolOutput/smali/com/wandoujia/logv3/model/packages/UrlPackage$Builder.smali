.class public final Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UrlPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/UrlPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public normalized_url:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/UrlPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 79
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->url:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage;->normalized_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->normalized_url:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage;->vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/UrlPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/UrlPackage;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/wandoujia/logv3/model/packages/UrlPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/UrlPackage;-><init>(Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final normalized_url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->normalized_url:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->url:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public final vertical(Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;)Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    .line 106
    return-object p0
.end method
