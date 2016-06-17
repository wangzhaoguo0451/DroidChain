.class public Lcom/wandoujia/base/utils/ShortcutUtils;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final ACTION_UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor; = null

.field private static final KEY_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final POOL_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShortcutUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/wandoujia/base/utils/ShortcutUtils;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/wandoujia/base/utils/ShortcutUtils;->addShortcut(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcom/wandoujia/base/utils/ShortcutUtils;->removeShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private static addShortcut(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/high16 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p0, p2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public static hasShortcut(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 120
    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "ShortcutUtil"

    const-string v1, "empty shortcut title"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_0
    :goto_0
    return v6

    .line 127
    :cond_1
    const-string v0, "READ_SETTINGS"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LauncherUtil;->getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const-string v1, "ShortcutUtil"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
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

    .line 139
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

    .line 142
    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lez v0, :cond_5

    move v0, v8

    .line 148
    :goto_1
    if-eqz v1, :cond_2

    .line 149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    move v6, v0

    .line 153
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    move-object v0, v7

    :goto_3
    if-eqz v0, :cond_4

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_2

    .line 148
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_3

    .line 149
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 148
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 146
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

.method public static installShortcut(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/wandoujia/base/utils/ShortcutUtils;->installShortcut(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;)V

    .line 56
    return-void
.end method

.method public static installShortcut(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    sget-object v6, Lcom/wandoujia/base/utils/ShortcutUtils;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcrk;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcrk;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method private static removeShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public static uninstallShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/wandoujia/base/utils/ShortcutUtils;->uninstallShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;)V

    .line 75
    return-void
.end method

.method public static uninstallShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    sget-object v0, Lcom/wandoujia/base/utils/ShortcutUtils;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcrl;

    invoke-direct {v1, p0, p1, p2, p3}, Lcrl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/wandoujia/base/utils/ShortcutUtils$ActionListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
