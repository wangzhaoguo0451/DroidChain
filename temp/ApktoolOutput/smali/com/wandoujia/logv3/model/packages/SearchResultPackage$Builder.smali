.class public final Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SearchResultPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/SearchResultPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public adjusted:Ljava/lang/Boolean;

.field public search_result_package:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/ContentPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/SearchResultPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 69
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->adjusted:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;->adjusted:Ljava/lang/Boolean;

    .line 71
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->search_result_package:Ljava/util/List;

    #calls: Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;->search_result_package:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final adjusted(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;->adjusted:Ljava/lang/Boolean;

    .line 79
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/SearchResultPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/SearchResultPackage;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/SearchResultPackage;-><init>(Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final search_result_package(Ljava/util/List;)Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/ContentPackage;",
            ">;)",
            "Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p1}, Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/SearchResultPackage$Builder;->search_result_package:Ljava/util/List;

    .line 87
    return-object p0
.end method
