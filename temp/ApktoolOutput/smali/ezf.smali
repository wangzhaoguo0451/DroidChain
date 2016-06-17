.class final Lezf;
.super Ljava/lang/Object;
.source "CleanCell.java"


# instance fields
.field a:Leyk;

.field b:Leyg;

.field c:Leyl;

.field d:Leys;

.field e:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lezf;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 6

    .prologue
    .line 64
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/MemoryUtil;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Lcom/wandoujia/base/utils/MemoryUtil;->getTotalMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic a(I)I
    .locals 1
    .parameter

    .prologue
    .line 64
    const/16 v0, 0x1e

    if-ge p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x32

    if-ge p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
