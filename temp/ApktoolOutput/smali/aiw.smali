.class public final Laiw;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"


# instance fields
.field public final a:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p1, p0, Laiw;->a:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    .line 613
    iput-object p2, p0, Laiw;->b:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 606
    invoke-direct {p0, p1, p2}, Laiw;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laiw;->a:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laiw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
