.class final Lhap;
.super Ljava/lang/Object;
.source "CommonDataContext.java"

# interfaces
.implements Lczz;


# instance fields
.field private synthetic a:Lham;


# direct methods
.method constructor <init>(Lham;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lhap;->a:Lham;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lhap;->a:Lham;

    iget-object v0, v0, Lham;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lham;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 316
    const/high16 v0, 0x1000

    return v0
.end method

.method public final d()I
    .locals 4

    .prologue
    const-wide/32 v2, 0x100000

    .line 321
    iget-object v0, p0, Lhap;->a:Lham;

    iget-object v0, v0, Lham;->d:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 323
    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3d4ccccd

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    int-to-long v0, v0

    mul-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method
