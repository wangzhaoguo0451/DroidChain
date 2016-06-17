.class public Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment$UrlKeySubscribeListFragment;
.super Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;
.source "PublisherCollectionFragment.java"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string v1, "hideMore"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Ldcb;

    invoke-direct {v1, p1, v0}, Ldcb;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, v1, Lhhv;->h:Z

    .line 67
    return-object v1
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment$UrlKeySubscribeListFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment$UrlKeySubscribeListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment$UrlKeySubscribeListFragment;->d:Ljava/lang/String;

    .line 54
    return-void
.end method
