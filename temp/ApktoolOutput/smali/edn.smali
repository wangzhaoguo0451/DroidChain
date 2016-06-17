.class public final Ledn;
.super Ljava/lang/Object;
.source "LauncherIconUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/LauncherUtil;->getDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledn;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 55
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 58
    :try_start_0
    sget v0, Lcom/wandoujia/game_launcher/lib/R$string;->game_launcher_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    if-eqz v1, :cond_1

    invoke-static {v1}, Lebs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    sget-object v1, Ledn;->a:Ljava/lang/String;

    invoke-static {v1}, Lebs;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->b()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ledn;->a(Leds;)V

    .line 79
    return-void
.end method

.method public static a(Ledr;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    new-instance v0, Ledq;

    invoke-direct {v0, p0}, Ledq;-><init>(Ledr;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public static a(Leds;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    new-instance v0, Ledo;

    invoke-direct {v0, p0}, Ledo;-><init>(Leds;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ledn;->d()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_gl_no_games:I

    sget v3, Lcom/wandoujia/game_launcher/lib/R$drawable;->launcher_icon_base:I

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/util/List;II)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/launcher/LauncherConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "shortcut://game"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "launch_from"

    const-string v3, "shortcut"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launch_keyword"

    const-string v3, "game"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_gl_no_games:I

    invoke-static {p0, v0, v2, v1}, Lehv;->a(Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/content/Intent;)Z

    invoke-static {v4}, Lg;->d(Z)V

    return v4
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ledp;

    invoke-direct {v0}, Ledp;-><init>()V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    invoke-static {p0}, Ledn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 131
    const-string v0, "READ_SETTINGS"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LauncherUtil;->getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v6

    .line 153
    :goto_0
    return v0

    .line 138
    :cond_0
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

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2

    .line 142
    if-eqz v0, :cond_1

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    goto :goto_0

    .line 149
    :cond_2
    if-eqz v0, :cond_3

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 153
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 150
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    if-eqz v9, :cond_5

    .line 150
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v6

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_6

    .line 150
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ledn;->d()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->ic_gl_no_games:I

    sget v3, Lcom/wandoujia/game_launcher/lib/R$drawable;->launcher_icon_base:I

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/util/List;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lehv;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ledn;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-static {p0}, Ledn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lehv;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->b()Ljava/util/List;

    move-result-object v4

    .line 208
    const/4 v0, 0x4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 210
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    .line 211
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lehh;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 213
    :cond_0
    return-object v3
.end method
