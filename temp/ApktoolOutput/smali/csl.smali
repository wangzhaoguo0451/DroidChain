.class public final Lcsl;
.super Ljava/lang/Object;
.source "FileScanUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/xianguo/pad/cache/image2"

    aput-object v1, v0, v2

    const-string v1, "/wandoujia/music"

    aput-object v1, v0, v3

    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/android"

    aput-object v1, v0, v2

    const-string v1, "/android/data"

    aput-object v1, v0, v3

    const-string v1, "tencent"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "/sina"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/miui"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/pictures"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/netease"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/dcim"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/baidu"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/appgame"

    aput-object v2, v0, v1

    sput-object v0, Lcsl;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    sget-object v2, Lcsl;->a:[Ljava/lang/String;

    move v1, v0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    .line 42
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    const/4 v0, 0x1

    .line 46
    :cond_0
    return v0

    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
