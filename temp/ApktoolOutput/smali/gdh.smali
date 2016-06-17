.class public final Lgdh;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgdh;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/pictures/screenshots"

    aput-object v1, v0, v3

    const-string v1, "/dcim/screenshots"

    aput-object v1, v0, v4

    const-string v1, "/screencapture"

    aput-object v1, v0, v5

    const-string v1, "/camera/screenshots"

    aput-object v1, v0, v6

    const-string v1, "/photo/screenshots"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/\u622a\u5c4f\u56fe\u7247"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/qq_screenshot"

    aput-object v2, v0, v1

    sput-object v0, Lgdh;->b:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCREENSHOTS"

    aput-object v1, v0, v3

    const-string v1, "SCREENSHOTS"

    aput-object v1, v0, v4

    const-string v1, "SCREENSHOTS"

    aput-object v1, v0, v5

    const-string v1, "SCREENSHOTS"

    aput-object v1, v0, v6

    const-string v1, "SCREENSHOTS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SCREENSHOTS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "QQ_SCREENSHOTS"

    aput-object v2, v0, v1

    .line 39
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/dcim/"

    aput-object v1, v0, v3

    const-string v1, "/camera/"

    aput-object v1, v0, v4

    const-string v1, "/pictures/camera/"

    aput-object v1, v0, v5

    const-string v1, "/images/"

    aput-object v1, v0, v6

    const-string v1, "/\u6211\u7684\u76f8\u673a/"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/wandoujia/capture/"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/pictures/instagram/"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/path/"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/linecamera/"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/mtxx/"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/photowonder/"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/puddingcamera/"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/tuding/"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/cymera/"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/paper pictures/"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/retrocamera/"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/jiepang/"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "/\u6211\u7684\u7167\u7247/"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "/pictures/papa/"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "/tencent/micromsg/camera/"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/myxj/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "/photo/"

    aput-object v2, v0, v1

    sput-object v0, Lgdh;->c:[Ljava/lang/String;

    .line 60
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DCIM"

    aput-object v1, v0, v3

    const-string v1, "CAMERA"

    aput-object v1, v0, v4

    const-string v1, "PICTURES_CAMERA"

    aput-object v1, v0, v5

    const-string v1, "IMAGES"

    aput-object v1, v0, v6

    const-string v1, "MY_CAMERA"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "WANDOUJIA_CAPTURE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "INSTAGRAM"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PATH"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LINE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MTXX"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PHTOWONDER"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PUDDING"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TUDING"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CYMERA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PAPER"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RETRO"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "JIEPANG"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MY_PHOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PAPA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "WEIXIN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MYXJ"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "PHOTO"

    aput-object v2, v0, v1

    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v2

    .line 111
    :cond_1
    :goto_0
    return v0

    .line 105
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 106
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lgdh;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lgdh;->a:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_3
    const-string v1, ""

    goto :goto_2

    :cond_4
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 72
    sget-object v2, Lgdh;->b:[Ljava/lang/String;

    invoke-static {p0, v2}, Lgdh;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lgdh;->c:[Ljava/lang/String;

    invoke-static {p0, v2}, Lgdh;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_1
.end method
