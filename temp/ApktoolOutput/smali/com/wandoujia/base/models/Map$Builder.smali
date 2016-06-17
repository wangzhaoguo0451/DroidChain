.class public final Lcom/wandoujia/base/models/Map$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/base/models/Map;",
        ">;"
    }
.end annotation


# instance fields
.field public val:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/base/models/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/base/models/Map;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 46
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/base/models/Map;->val:Ljava/util/List;

    #calls: Lcom/wandoujia/base/models/Map;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/base/models/Map;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/models/Map$Builder;->val:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/base/models/Map$Builder;->build()Lcom/wandoujia/base/models/Map;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/base/models/Map;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/wandoujia/base/models/Map;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/base/models/Map;-><init>(Lcom/wandoujia/base/models/Map$Builder;Ld;)V

    return-object v0
.end method

.method public final val(Ljava/util/List;)Lcom/wandoujia/base/models/Map$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/base/models/Pair;",
            ">;)",
            "Lcom/wandoujia/base/models/Map$Builder;"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/base/models/Map$Builder;->val:Ljava/util/List;

    .line 52
    return-object p0
.end method
