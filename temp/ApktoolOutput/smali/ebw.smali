.class public final Lebw;
.super Ljava/lang/Object;
.source "MarioShortcutUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/LauncherUtil;->getDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lebw;->a:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 180
    .line 182
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

    .line 183
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

    .line 185
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 186
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 187
    const-string v0, "container"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 188
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 189
    if-lez v0, :cond_2

    .line 190
    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 205
    :cond_1
    :goto_0
    return-object v0

    .line 192
    :cond_2
    :try_start_2
    const-string v0, "intent"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 193
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 195
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 201
    if-eqz v1, :cond_1

    .line 202
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 201
    :cond_3
    if-eqz v1, :cond_4

    .line 202
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v6

    .line 205
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_4

    .line 202
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 201
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 199
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v12, 0x4000

    const/4 v0, 0x0

    const/4 v11, 0x1

    const v10, 0x3ecccccd

    const/4 v9, 0x0

    .line 223
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$dimen;->mario_game_folder_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 229
    add-int/lit8 v3, v2, 0x5

    .line 230
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 231
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 234
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 235
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 236
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x5

    invoke-direct {v6, v9, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 237
    invoke-virtual {v4, p1, v0, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 239
    sget v2, Lcom/wandoujia/game_launcher/lib/R$drawable;->game_launcher_notification_badge:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-array v6, v9, [Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6}, Lcom/wandoujia/base/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;[Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 241
    new-instance v6, Landroid/graphics/Rect;

    int-to-float v7, v3

    const v8, 0x3f19999a

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v8, v3

    mul-float/2addr v8, v10

    float-to-int v8, v8

    invoke-direct {v6, v7, v9, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 243
    invoke-virtual {v4, v2, v0, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 246
    new-instance v2, Landroid/graphics/Paint;

    const/16 v0, 0x101

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 247
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/wandoujia/game_launcher/lib/R$dimen;->game_launcher_folder_num_size:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 251
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v9, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 256
    int-to-float v0, v3

    int-to-float v8, v3

    mul-float/2addr v8, v10

    div-float/2addr v8, v12

    sub-float/2addr v0, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v0, v6

    float-to-int v0, v0

    .line 257
    if-ne p2, v11, :cond_2

    .line 259
    add-int/lit8 v0, v0, -0x2

    .line 261
    :cond_2
    int-to-float v3, v3

    mul-float/2addr v3, v10

    div-float/2addr v3, v12

    div-int/lit8 v6, v7, 0x2

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 262
    int-to-float v0, v0

    int-to-float v3, v3

    invoke-virtual {v4, v5, v0, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object v0, v1

    .line 263
    goto/16 :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Lebw;->a(Z)V

    .line 74
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lecb;

    invoke-direct {v0, p0}, Lecb;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 77
    new-instance v0, Lebx;

    invoke-direct {v0, p0}, Lebx;-><init>(Z)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 127
    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "launcher.intent.action.LAUNCH_GL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 273
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 276
    :try_start_0
    sget v0, Lcom/wandoujia/game_launcher/lib/R$string;->vertical_title_game:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    if-eqz v1, :cond_1

    invoke-static {v1}, Lebs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_1
    sget-object v1, Lebw;->a:Ljava/lang/String;

    invoke-static {v1}, Lebs;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
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

.method static synthetic c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lebw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "launcher.intent.action.FROM_GAME_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "shortcut://game"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "launch_from"

    const-string v3, "shortcut"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launch_keyword"

    const-string v3, "game"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lebw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "READ_SETTINGS"

    invoke-static {p0, v1}, Lcom/wandoujia/base/utils/LauncherUtil;->getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lebw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
