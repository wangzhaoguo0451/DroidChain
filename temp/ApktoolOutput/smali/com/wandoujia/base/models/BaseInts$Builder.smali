.class public final Lcom/wandoujia/base/models/BaseInts$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BaseInts.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/base/models/BaseInts;",
        ">;"
    }
.end annotation


# instance fields
.field public val:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/base/models/BaseInts;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 47
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/base/models/BaseInts;->val:Ljava/util/List;

    #calls: Lcom/wandoujia/base/models/BaseInts;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/base/models/BaseInts;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/models/BaseInts$Builder;->val:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/base/models/BaseInts$Builder;->build()Lcom/wandoujia/base/models/BaseInts;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/base/models/BaseInts;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/wandoujia/base/models/BaseInts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/base/models/BaseInts;-><init>(Lcom/wandoujia/base/models/BaseInts$Builder;Ld;)V

    return-object v0
.end method

.method public final val(Ljava/util/List;)Lcom/wandoujia/base/models/BaseInts$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/wandoujia/base/models/BaseInts$Builder;"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wandoujia/base/models/BaseInts$Builder;->val:Ljava/util/List;

    .line 53
    return-object p0
.end method
