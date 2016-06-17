.class public Lcom/wandoujia/p4/utils/ShortcutUtil;
.super Ljava/lang/Object;
.source "ShortcutUtil.java"


# static fields
.field private static final a:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 32
    const-class v0, Lcom/wandoujia/p4/utils/ShortcutUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 70
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.launcher"

    aput-object v2, v0, v1

    const-string v1, "com.sec.android.app.twlauncher"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "org.adwfreak.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.adw.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.fede.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.qihoo360.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "net.qihoo.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.lge.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.huawei.launcher3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sonyericsson.home"

    aput-object v2, v0, v1

    .line 77
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    invoke-direct {v0, v3}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(I)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil;->a:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x1

    invoke-static {v0}, Lfak;->a(Z)V

    .line 262
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->E()V

    .line 264
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lgdm;

    invoke-direct {v0, p0}, Lgdm;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-static {p0, p1}, Lcom/wandoujia/p4/utils/ShortcutUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 285
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    const-string v1, "launch_from"

    const-string v2, "shortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f020330

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.wandoujia.jupiter.activity.HomeActivity"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 296
    const-string v1, "launch_from"

    const-string v2, "welcome"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 267
    sget-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil;->a:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    new-instance v1, Lgdn;

    invoke-direct {v1, p1, p0}, Lgdn;-><init>(ZLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->execute(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 88
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v6

    .line 94
    :cond_1
    const-string v0, "READ_SETTINGS"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LauncherUtil;->getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/favorites?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-ne v0, v8, :cond_5

    move v0, v8

    .line 113
    :goto_1
    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    move v6, v0

    .line 118
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    move-object v0, v7

    :goto_3
    if-eqz v0, :cond_4

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_2

    .line 113
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_3

    .line 114
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 113
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 111
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 144
    .line 146
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/favorites?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "title = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 151
    const-string v0, "container"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 152
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 153
    if-lez v0, :cond_2

    .line 154
    if-eqz v1, :cond_0

    .line 166
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 169
    :cond_1
    :goto_0
    return-object v0

    .line 156
    :cond_2
    :try_start_2
    const-string v0, "intent"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 157
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 159
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 165
    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 165
    :cond_3
    if-eqz v1, :cond_4

    .line 166
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v6

    .line 169
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_4

    .line 166
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 165
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 165
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 163
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 180
    const-string v1, "READ_SETTINGS"

    invoke-static {p0, v1}, Lcom/wandoujia/base/utils/LauncherUtil;->getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-static {p0, v1, p1}, Lcom/wandoujia/p4/utils/ShortcutUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "remove "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    const/4 v0, 0x1

    goto :goto_0
.end method
