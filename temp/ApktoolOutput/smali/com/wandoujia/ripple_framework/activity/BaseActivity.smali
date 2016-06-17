.class public Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lhhw;
.implements Lhia;
.implements Lhlr;
.implements Lt;


# static fields
.field private static final JUPITER_PACKAGE_NAME:Ljava/lang/String; = "com.wandoujia.phoenix2"


# instance fields
.field public allList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Leqw;",
            ">;"
        }
    .end annotation
.end field

.field protected systemBarTintManager:Lhln;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->allList:Ljava/util/Map;

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    return-void
.end method


# virtual methods
.method public addList(Leqw;)Leqw;
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->allList:Ljava/util/Map;

    invoke-virtual {p1}, Leqw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Add list success, hit cache, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Leqw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->debug(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->allList:Ljava/util/Map;

    invoke-virtual {p1}, Leqw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqw;

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Add list success, miss cache, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Leqw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->debug(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->allList:Ljava/util/Map;

    invoke-virtual {p1}, Leqw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 65
    goto :goto_0
.end method

.method public clearList()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->allList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqw;

    invoke-virtual {v0}, Leqw;->i()V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->allList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    return-void
.end method

.method public createBackIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lham;->n:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    .line 302
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lham;->n:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public customSystemTintBar()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public findCurrentFragment()Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Ls;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    return-object v0
.end method

.method public findList(Ljava/lang/String;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->allList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqw;

    return-object v0
.end method

.method public getIntentUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 320
    :cond_0
    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemBarColor()I
    .locals 2

    .prologue
    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$color;->grey_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 265
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemBarTintManager()Lhln;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->systemBarTintManager:Lhln;

    return-object v0
.end method

.method public navigateTo(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 167
    const v0, 0x1020002

    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->navigateTo(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public navigateTo(Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0, p2}, Ls;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 278
    instance-of v1, v0, Lhia;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    check-cast v0, Lhia;

    invoke-interface {v0, p1}, Lhia;->navigateTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->findCurrentFragment()Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :try_start_0
    const-string v0, "com.wandoujia.phoenix2"

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->createBackIntent()Landroid/content/Intent;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->finish()V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->systemBarTintManager:Lhln;

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->findCurrentFragment()Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->renderSystemBar(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Leny;->a(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0, p0}, Ls;->a(Lt;)V

    .line 94
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->customSystemTintBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lhln;

    invoke-direct {v0, p0}, Lhln;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->systemBarTintManager:Lhln;

    .line 97
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->systemBarTintManager:Lhln;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getSystemBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lhln;->a(I)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->pageLoaded()V

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 136
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->clearList()V

    .line 137
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->a(Landroid/app/Activity;)V

    .line 138
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0, p0}, Ls;->b(Lt;)V

    .line 139
    invoke-static {p0}, Lcom/wandoujia/base/utils/ActivityLeakUtil;->fixInputMethodManagerLeak(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 156
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Leny;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public onPageLoaded()V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->findCurrentFragment()Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->getPageUri()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_0
    if-nez v0, :cond_0

    .line 219
    :cond_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getPageUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 131
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 150
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Leny;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 123
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->APP_IN_FOREGROUND:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 145
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    .line 162
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->b(Landroid/app/Activity;)V

    .line 163
    return-void
.end method

.method protected pageLoaded()V
    .locals 0

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onPageLoaded()V

    .line 246
    return-void
.end method

.method public removeList(Ljava/lang/String;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->allList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqw;

    return-object v0
.end method
