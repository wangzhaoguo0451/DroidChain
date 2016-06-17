.class public final Laiu;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lajw;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajd;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/facebook/cache/disk/DefaultDiskStorage;


# direct methods
.method private constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V
    .locals 1
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Laiu;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laiu;->a:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-direct {p0, p1}, Laiu;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    return-void
.end method

.method public final b(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Laiu;->b:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Laiw;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    iget-object v0, v0, Laiw;->a:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    sget-object v1, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Laiu;->a:Ljava/util/List;

    new-instance v1, Laiv;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Laiv;-><init>(Ljava/io/File;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    return-void
.end method

.method public final c(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    return-void
.end method
