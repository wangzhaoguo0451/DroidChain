.class public final Lcom/wandoujia/launcher/LauncherConfig;
.super Ljava/lang/Object;
.source "LauncherConfig.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:C

.field private static c:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "launcher.intent.action.FROM_GAME_SHORTCUT"

    sput-object v0, Lcom/wandoujia/launcher/LauncherConfig;->a:Ljava/lang/String;

    .line 15
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput-char v0, Lcom/wandoujia/launcher/LauncherConfig;->b:C

    .line 17
    sget-object v0, Lcom/wandoujia/launcher/LauncherConfig$LauncherType;->APK_GL:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    sput-object v0, Lcom/wandoujia/launcher/LauncherConfig;->c:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    return-void

    .line 15
    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/wandoujia/launcher/LauncherConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(C)V
    .locals 0
    .parameter

    .prologue
    .line 32
    sput-char p0, Lcom/wandoujia/launcher/LauncherConfig;->b:C

    .line 33
    return-void
.end method

.method public static a(Lcom/wandoujia/launcher/LauncherConfig$LauncherType;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    sput-object p0, Lcom/wandoujia/launcher/LauncherConfig;->c:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    sput-object p0, Lcom/wandoujia/launcher/LauncherConfig;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static b()C
    .locals 1

    .prologue
    .line 24
    sget-char v0, Lcom/wandoujia/launcher/LauncherConfig;->b:C

    return v0
.end method

.method public static c()Lcom/wandoujia/launcher/LauncherConfig$LauncherType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/wandoujia/launcher/LauncherConfig;->c:Lcom/wandoujia/launcher/LauncherConfig$LauncherType;

    return-object v0
.end method
