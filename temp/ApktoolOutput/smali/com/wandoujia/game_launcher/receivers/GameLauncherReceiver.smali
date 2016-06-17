.class public Lcom/wandoujia/game_launcher/receivers/GameLauncherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameLauncherReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 36
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 42
    invoke-static {}, Lg;->g()Z

    move-result v1

    if-nez v1, :cond_6

    .line 43
    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->APK_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    const-string v2, "com.wandoujia.game_launcher"

    invoke-virtual {v1, v2}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 46
    :cond_2
    invoke-static {}, Ledn;->a()V

    .line 65
    :cond_3
    :goto_1
    invoke-static {}, Lg;->g()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Ld;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "game_shortcut_generated"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    :cond_4
    invoke-static {p1}, Lebk;->a(Landroid/content/Context;)V

    .line 70
    :cond_5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->a()Lgdx;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lefm;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lefm;->a(Landroid/net/NetworkInfo;)V

    goto :goto_2

    .line 49
    :cond_6
    invoke-static {}, Ld;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "game_shortcut_generated"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 50
    invoke-static {}, Ld;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "launcher-disk-pref"

    invoke-static {v1, v2}, Ledv;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    .line 51
    invoke-static {}, Lebk;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 52
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v1

    invoke-virtual {v1}, Lebl;->g()V

    .line 54
    :cond_7
    invoke-static {p1}, Ledn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p1}, Ledn;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_8
    invoke-static {}, Lebk;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    new-instance v1, Lctx;

    invoke-direct {v1}, Lctx;-><init>()V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 76
    :cond_9
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lebl;->c(Ljava/lang/String;)V

    .line 81
    const-string v1, "com.wandoujia.phoenix2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 82
    invoke-static {}, Ledn;->a()V

    .line 84
    :cond_a
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->REMOVED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->b()V

    goto/16 :goto_0

    .line 91
    :cond_b
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->e()V

    goto/16 :goto_0

    .line 93
    :cond_c
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v1

    new-instance v2, Lebm;

    invoke-direct {v2, v1, v0}, Lebm;-><init>(Lebl;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 98
    const-string v1, "com.wandoujia.game_launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-ne v1, v2, :cond_d

    .line 100
    invoke-static {}, Lebw;->a()V

    .line 101
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$string;->wan_gamefolder_shortcut_create_success:I

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 104
    :cond_d
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->ADDED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->b()V

    goto/16 :goto_0

    .line 111
    :cond_e
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->g()V

    goto/16 :goto_0

    .line 113
    :cond_f
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 115
    invoke-static {}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$MediaState;->MOUNTED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$MediaState;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->c()V

    goto/16 :goto_0

    .line 117
    :cond_10
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 118
    invoke-static {p1}, Ledn;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ledn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    const-string v1, "com.wandoujia.phoenix2"

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {v4}, Lg;->d(Z)V

    .line 122
    invoke-static {}, Ledn;->a()V

    goto/16 :goto_0

    .line 124
    :cond_11
    const-string v1, "launcher.intent.action.SHORTCUT_CREATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->NATIVE_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    if-ne v0, v1, :cond_0

    .line 126
    invoke-static {p1}, Lebw;->a(Landroid/content/Context;)V

    .line 127
    invoke-static {v4}, Lg;->d(Z)V

    goto/16 :goto_0
.end method
