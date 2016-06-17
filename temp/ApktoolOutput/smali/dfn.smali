.class public final Ldfn;
.super Lhbc;
.source "HomePageAdapter.java"


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Ls;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lhbc;-><init>(Ls;)V

    .line 25
    iput p2, p0, Ldfn;->e:I

    .line 26
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 34
    iget-object v0, p0, Ldfn;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Ldfn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    .line 39
    :cond_1
    iget-object v0, p0, Ldfn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 40
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->WEB_VIEW:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    #getter for: Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->access$000(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->WEB_VIEW:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    #getter for: Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->access$100(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->WEB_VIEW:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    #getter for: Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->fragment:Ljava/lang/Class;
    invoke-static {v4}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->access$200(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2, v4, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 41
    :goto_2
    new-instance v4, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;

    invoke-direct {v4}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;-><init>()V

    .line 42
    iput-boolean v3, v4, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->swipeRefresh:Z

    .line 43
    iget v2, p0, Ldfn;->e:I

    iput v2, v4, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->firstSpace:I

    .line 44
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 45
    if-nez v2, :cond_8

    .line 46
    iget-object v2, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    .line 47
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    :goto_3
    const-string v2, "force_close_toolbar"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 40
    :cond_2
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->values()[Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_4
    if-ge v2, v5, :cond_7

    aget-object v6, v4, v2

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x3f

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_4
    #getter for: Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->name:Ljava/lang/String;
    invoke-static {v6}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->access$000(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    #getter for: Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->url:Ljava/lang/String;
    invoke-static {v6}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->access$100(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v2

    #getter for: Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->fragment:Ljava/lang/Class;
    invoke-static {v6}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->access$200(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2, v4, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto/16 :goto_2

    :cond_5
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_7
    new-instance v1, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;-><init>()V

    goto/16 :goto_2

    .line 50
    :cond_8
    const-string v0, "view_config"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    move-object v0, v2

    goto :goto_3
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Ldfn;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldfn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ldfn;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldfn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
