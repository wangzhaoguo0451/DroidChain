.class public final Lcom/wandoujia/api/proto/ScreenShotSet$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ScreenShotSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/ScreenShotSet;",
        ">;"
    }
.end annotation


# instance fields
.field public normal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public small:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/ScreenShotSet;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 60
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/ScreenShotSet;->normal:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ScreenShotSet;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ScreenShotSet;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet$Builder;->normal:Ljava/util/List;

    .line 62
    iget-object v0, p1, Lcom/wandoujia/api/proto/ScreenShotSet;->small:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ScreenShotSet;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ScreenShotSet;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet$Builder;->small:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ScreenShotSet$Builder;->build()Lcom/wandoujia/api/proto/ScreenShotSet;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/ScreenShotSet;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/wandoujia/api/proto/ScreenShotSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/ScreenShotSet;-><init>(Lcom/wandoujia/api/proto/ScreenShotSet$Builder;Ld;)V

    return-object v0
.end method

.method public final normal(Ljava/util/List;)Lcom/wandoujia/api/proto/ScreenShotSet$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/ScreenShotSet$Builder;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/wandoujia/api/proto/ScreenShotSet$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet$Builder;->normal:Ljava/util/List;

    .line 67
    return-object p0
.end method

.method public final small(Ljava/util/List;)Lcom/wandoujia/api/proto/ScreenShotSet$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/ScreenShotSet$Builder;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lcom/wandoujia/api/proto/ScreenShotSet$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ScreenShotSet$Builder;->small:Ljava/util/List;

    .line 72
    return-object p0
.end method
