.class public Lcom/wandoujia/jupiter/activity/HomeActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "HomeActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/wandoujia/jupiter/update/UpdateNotification;

.field private c:Lcom/wandoujia/appmanager/LocalAppChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Ldcg;

    invoke-direct {v0}, Ldcg;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->c:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->a:Ljava/lang/String;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->a:Ljava/lang/String;

    .line 181
    :cond_1
    const/4 v1, 0x0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    const-string v4, "homePage"

    invoke-virtual {v0, v4}, Ls;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    if-nez v0, :cond_4

    .line 188
    new-instance v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 190
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 191
    const-string v4, "page_intent_uri"

    iget-object v5, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->setArguments(Landroid/os/Bundle;)V

    move-object v1, v0

    .line 199
    :goto_1
    sget-object v0, Ldca;->a:Ldca;

    const-string v4, "local_feed"

    invoke-virtual {v0, v4}, Ldca;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    .line 201
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->getSupportFragmentManager()Ls;

    move-result-object v4

    invoke-virtual {v4}, Ls;->a()Lag;

    move-result-object v4

    const v5, 0x1020002

    const-string v6, "homePage"

    invoke-virtual {v4, v5, v1, v6}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    move-result-object v1

    invoke-virtual {v1}, Lag;->a()I

    .line 203
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->d()V

    .line 204
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->g()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v1

    const-string v4, "key_first_in_app_feed"

    invoke-virtual {v1, v4, v3}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 205
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->g()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    const-string v1, "key_first_launch_time"

    invoke-virtual {v0, v1, v4, v5}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 209
    :cond_2
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->N()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    .line 210
    invoke-static {v3}, Lcom/wandoujia/p4/configs/Config;->a(Z)V

    .line 211
    const v0, 0x7f0e05a6

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 213
    :cond_3
    sget-object v0, Lham;->f:Lham;

    const-string v1, "type_face"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/wandoujia/ripple_framework/TypefaceManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 215
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 196
    :cond_4
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a()V

    move-object v1, v0

    goto :goto_1

    .line 209
    :cond_5
    invoke-static {p0}, Lj;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    invoke-static {}, Lg;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FZLTZHK.TTF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    move v0, v2

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "FZLTXIHK.TTF"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v3

    goto :goto_2

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->b:Lcom/wandoujia/jupiter/update/UpdateNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->b:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-object v1, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->c:Lhoj;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->c:Lhoj;

    invoke-virtual {v1}, Lhoj;->show()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->c:Lhoj;

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onBackPressed()V

    .line 171
    :cond_1
    return-void

    .line 168
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-static {p0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->a(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.wandoujia.jupiter.activity.HomeActivity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->finish()V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 88
    :goto_1
    return-void

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->finish()V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/jupiter/activity/HomeActivity;->a(Landroid/content/Intent;)V

    .line 65
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->G()I

    move-result v0

    .line 66
    if-gt v0, v1, :cond_3

    .line 67
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->c(I)V

    .line 70
    :cond_3
    const-string v0, "release"

    const-string v3, "dogfood"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "5-discuss@wandoujia.com"

    aput-object v1, v0, v2

    .line 74
    :goto_2
    invoke-static {}, Lhgd;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    invoke-static {p0}, Ldxa;->a(Landroid/content/Context;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 80
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->o()V

    .line 82
    :cond_4
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->c:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 84
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 87
    new-instance v0, Ldvw;

    invoke-direct {v0}, Ldvw;-><init>()V

    const-string v1, "8925"

    const-string v2, "NEED_EXTREME_UPDATE_KEY"

    invoke-static {v2}, Ld;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-static {}, Lhrm;->a()Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 72
    :cond_5
    const-string v0, "release"

    const-string v1, "dfjira"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    :cond_6
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ldvx;

    invoke-direct {v2, v0}, Ldvx;-><init>(Ldvw;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onDestroy()V

    .line 155
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onEventMainThread(Lcom/wandoujia/update/toolkit/SelfUpdateResult;)V
    .locals 3
    .parameter

    .prologue
    .line 218
    iget-object v0, p1, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo;->hasNewVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    const-class v0, Lcom/wandoujia/jupiter/activity/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no update info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->b:Lcom/wandoujia/jupiter/update/UpdateNotification;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/wandoujia/jupiter/update/UpdateNotification;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/jupiter/update/UpdateNotification;-><init>(Landroid/app/Activity;Lcom/wandoujia/update/toolkit/SelfUpdateResult;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->b:Lcom/wandoujia/jupiter/update/UpdateNotification;

    .line 227
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/HomeActivity;->b:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-boolean v1, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->f:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v1, v1, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->EXTREME:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->b()V

    iget-object v0, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->b:Lhoj;

    invoke-virtual {v0}, Lhoj;->show()V

    goto :goto_0

    :cond_2
    sget-object v1, Ldwf;->a:[I

    iget-object v2, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v2, v2, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const-string v1, "NORMAL_SNACKBAR_KEY"

    invoke-static {v1}, Ld;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v2, v2, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NORMAL_SNACKBAR_KEY"

    iget-object v2, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v2, v2, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v2}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->a()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->a()V

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->b()V

    iget-object v1, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->b:Lhoj;

    iput-object v1, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->c:Lhoj;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->b()V

    iget-object v0, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->b:Lhoj;

    invoke-virtual {v0}, Lhoj;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/activity/HomeActivity;->a(Landroid/content/Intent;)V

    .line 163
    return-void
.end method
