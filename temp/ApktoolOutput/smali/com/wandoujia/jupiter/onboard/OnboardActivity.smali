.class public Lcom/wandoujia/jupiter/onboard/OnboardActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "OnboardActivity.java"

# interfaces
.implements Ldkp;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lhey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/onboard/OnboardActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->C()V

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/onboard/OnboardActivity;Lcom/wandoujia/api/proto/HttpResponse;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/onboard/OnboardActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->b:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 88
    iget v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->b:I

    .line 89
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->b:I

    if-gt v0, v1, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->finish()V

    .line 105
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->c:Ljava/util/List;

    iget v1, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->values()[Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    #getter for: Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->access$000(Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v6, v6, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v6, v6, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    #getter for: Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->url:Ljava/lang/String;
    invoke-static {v4}, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->access$100(Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v2

    #getter for: Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->fragment:Ljava/lang/Class;
    invoke-static {v4}, Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;->access$200(Lcom/wandoujia/jupiter/onboard/OnboardFragmentCreator$OnboardFragment;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 95
    :goto_3
    if-nez v0, :cond_5

    .line 96
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->finish()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 101
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->b:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const v0, 0x7f04001e

    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v0, v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->overridePendingTransition(II)V

    .line 39
    sget-boolean v0, Lcom/wandoujia/jupiter/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    if-nez v0, :cond_0

    .line 40
    const v0, 0x7f030143

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f0c0368

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_0
    new-instance v0, Lhey;

    const-string v1, "http://apis.wandoujia.com/five/v1/nux/index"

    const/4 v2, 0x0

    const-class v3, Lcom/wandoujia/api/proto/HttpResponse;

    new-instance v4, Ldkn;

    invoke-direct {v4, p0}, Ldkn;-><init>(Lcom/wandoujia/jupiter/onboard/OnboardActivity;)V

    new-instance v5, Ldko;

    invoke-direct {v5, p0}, Ldko;-><init>(Lcom/wandoujia/jupiter/onboard/OnboardActivity;)V

    invoke-direct/range {v0 .. v6}, Lhey;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lagu;Lagt;B)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->d:Lhey;

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->d:Lhey;

    iput-boolean v6, v0, Lcom/android/volley/Request;->g:Z

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->d:Lhey;

    iput-boolean v6, v0, Leqs;->m:Z

    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->d:Lhey;

    invoke-virtual {v0}, Lhey;->j()V

    .line 45
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onStop()V

    .line 149
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->d:Lhey;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->d:Lhey;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/Request;->h:Z

    .line 152
    :cond_0
    return-void
.end method
