.class public Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;
.super Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;
.source "GameLauncherActivity.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->a:Z

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->dialog_update_game_launcher:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->game_launcher_icon:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->game_launcher_update_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ldxo;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->launcher_new_version_with_apk:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->game_launcher_update_log:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Leha;->a()Leha;

    const-string v1, "launcher_apk_update_log"

    invoke-static {v1}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/wandoujia/launcher_base/R$string;->launcher_new_version_sample_log:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->positive_button:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldzc;

    invoke-direct {v1, v2}, Ldzc;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->delete_icon:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldzd;

    invoke-direct {v1, v2}, Ldzd;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ldze;

    invoke-direct {v0}, Ldze;-><init>()V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v3, "game_launcher_home"

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->POPUP:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v6, "gl_upgrade"

    invoke-static {v3, v4, v5, v6}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    return-void

    :cond_2
    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->launcher_new_version:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->a:Z

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-super {p0}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;->finish()V

    .line 92
    invoke-virtual {p0, v0, v0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->overridePendingTransition(II)V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const/high16 v4, 0x800

    const/high16 v3, 0x400

    const/4 v1, 0x0

    const-wide/32 v8, 0x5265c00

    const/4 v0, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v2, Lcom/wandoujia/game_launcher/lib/R$anim;->fade_in_quickly:I

    invoke-virtual {p0, v2, v1}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->overridePendingTransition(II)V

    .line 56
    const/16 v2, 0x13

    invoke-static {v2}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 66
    :cond_0
    sget v2, Lcom/wandoujia/game_launcher/lib/R$layout;->content_frame:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->setContentView(I)V

    .line 68
    invoke-static {}, Leha;->a()Leha;

    const-string v2, "enable_redesign_gl"

    invoke-static {v2}, Ld;->R(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 69
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->getSupportFragmentManager()Ls;

    move-result-object v2

    invoke-virtual {v2}, Ls;->a()Lag;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$id;->content_frame:I

    new-instance v4, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-direct {v4}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;-><init>()V

    invoke-virtual {v2, v3, v4}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v2

    invoke-virtual {v2}, Lag;->a()I

    .line 75
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "game_launcher_last_time"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 76
    invoke-static {}, Lcom/wandoujia/launcher/Config;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Lcom/wandoujia/launcher/Config;->b(J)V

    .line 77
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    invoke-static {}, Lcom/wandoujia/launcher/Config;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/wandoujia/launcher/Config;->e()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ldyx;

    invoke-direct {v2, p0}, Ldyx;-><init>(Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 78
    :cond_3
    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    invoke-static {}, Lcom/wandoujia/launcher/Config;->b()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {}, Lcom/wandoujia/launcher/Config;->c()I

    move-result v6

    int-to-long v6, v6

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->j()I

    move-result v8

    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v9

    sget-object v10, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-ne v9, v10, :cond_a

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v9

    const-string v10, "com.wandoujia.game_launcher"

    invoke-virtual {v9, v10}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->k()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Lcom/wandoujia/launcher/Config;->d()J

    move-result-wide v10

    cmp-long v9, v2, v10

    if-eqz v9, :cond_9

    :cond_4
    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v9

    int-to-long v10, v9

    cmp-long v6, v10, v6

    if-lez v6, :cond_8

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    new-instance v0, Ldza;

    invoke-direct {v0, p0}, Ldza;-><init>(Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;)V

    invoke-static {v0}, Ledn;->a(Ledr;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/wandoujia/launcher/Config;->a(J)V

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v0

    invoke-static {v0}, Lcom/wandoujia/launcher/Config;->a(I)V

    .line 79
    :cond_6
    return-void

    .line 72
    :cond_7
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->getSupportFragmentManager()Ls;

    move-result-object v2

    invoke-virtual {v2}, Ls;->a()Lag;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$id;->content_frame:I

    new-instance v4, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;

    invoke-direct {v4}, Lcom/wandoujia/launcher/launcher/fragments/HomeFragment;-><init>()V

    invoke-virtual {v2, v3, v4}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v2

    invoke-virtual {v2}, Lag;->a()I

    goto/16 :goto_0

    .line 78
    :cond_8
    if-lez v8, :cond_9

    sub-long/2addr v2, v4

    int-to-long v4, v8

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v9

    sget-object v10, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->APK_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-ne v9, v10, :cond_9

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->k()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {}, Lcom/wandoujia/launcher/Config;->d()J

    move-result-wide v10

    cmp-long v9, v2, v10

    if-eqz v9, :cond_9

    :cond_b
    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v9

    int-to-long v10, v9

    cmp-long v6, v10, v6

    if-gtz v6, :cond_5

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v6

    if-lez v8, :cond_9

    sub-long/2addr v2, v4

    int-to-long v4, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->e()I

    move-result v2

    if-le v2, v6, :cond_9

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;->onDestroy()V

    .line 84
    invoke-static {p0}, Lcom/wandoujia/base/utils/ActivityLeakUtil;->fixInputMethodManagerLeak(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    :try_start_0
    invoke-static {}, Leny;->c()V

    iget-object v0, v0, Leny;->f:Leno;

    iget-object v1, v0, Leno;->a:Landroid/os/Handler;

    new-instance v2, Lenp;

    invoke-direct {v2, v0}, Lenp;-><init>(Leno;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->a:Z

    .line 87
    return-void

    .line 85
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;->onStart()V

    .line 98
    invoke-static {p0}, Ld;->q(Landroid/content/Context;)V

    .line 99
    return-void
.end method
