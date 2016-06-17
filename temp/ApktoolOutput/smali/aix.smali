.class public final Laix;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lajw;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/facebook/cache/disk/DefaultDiskStorage;


# direct methods
.method private constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Laix;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Laix;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-boolean v0, p0, Laix;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laix;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Laix;->a:Z

    .line 275
    :cond_0
    return-void
.end method

.method public final b(Ljava/io/File;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 279
    iget-boolean v2, p0, Laix;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Laix;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v2, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Laiw;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 280
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 282
    :cond_2
    return-void

    .line 279
    :cond_3
    iget-object v3, v2, Laiw;->a:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    sget-object v4, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-object v4, p0, Laix;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v4}, Lcom/facebook/cache/disk/DefaultDiskStorage;->c(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lakt;

    move-result-object v4

    invoke-interface {v4}, Lakt;->a()J

    move-result-wide v4

    sget-wide v6, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, v2, Laiw;->a:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    sget-object v3, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    if-ne v2, v3, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v0}, Ld;->b(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Laix;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-boolean v0, p0, Laix;->a:Z

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 292
    :cond_0
    iget-boolean v0, p0, Laix;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Laix;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Laix;->a:Z

    .line 296
    :cond_1
    return-void
.end method
