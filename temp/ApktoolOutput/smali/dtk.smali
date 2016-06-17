.class public final Ldtk;
.super Lgcd;
.source "JupiterOnBoardPublisher.java"


# instance fields
.field private final a:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/PublisherBundleDetail;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/PublisherBundleDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lgcd;-><init>()V

    .line 29
    iput-object p2, p0, Ldtk;->a:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    .line 30
    iput-object p3, p0, Ldtk;->b:Ljava/util/List;

    .line 31
    iput-object p1, p0, Ldtk;->c:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v0, p0, Ldtk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/PublisherBundleDetail;

    .line 49
    iget-object v0, v0, Lcom/wandoujia/api/proto/PublisherBundleDetail;->id:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    const-string v0, ","

    invoke-static {v1, v0}, Lcom/wandoujia/base/utils/StringUtil;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final doSubscribe()Z
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    sget-object v0, Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;->FUNCTION_ONBOARD_GUIDE:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    iget-object v1, p0, Ldtk;->a:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    invoke-direct {p0}, Ldtk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ldtk;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ldtk;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final promptSubscribeResult(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 62
    iget-object v0, p0, Ldtk;->c:Landroid/content/Context;

    const v1, 0x7f0e035d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;II)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Lgcd;->promptSubscribeResult(ZZ)V

    goto :goto_0
.end method
