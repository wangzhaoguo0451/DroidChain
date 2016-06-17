.class public final Laiv;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lajd;


# instance fields
.field public final a:Laio;

.field private b:J

.field private c:J


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-static {p1}, Laio;->a(Ljava/io/File;)Laio;

    move-result-object v0

    iput-object v0, p0, Laiv;->a:Laio;

    .line 533
    iput-wide v2, p0, Laiv;->b:J

    .line 534
    iput-wide v2, p0, Laiv;->c:J

    .line 535
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-direct {p0, p1}, Laiv;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 539
    iget-wide v0, p0, Laiv;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 540
    iget-object v0, p0, Laiv;->a:Laio;

    iget-object v0, v0, Laio;->a:Ljava/io/File;

    .line 541
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Laiv;->c:J

    .line 543
    :cond_0
    iget-wide v0, p0, Laiv;->c:J

    return-wide v0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 553
    iget-wide v0, p0, Laiv;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 554
    iget-object v0, p0, Laiv;->a:Laio;

    iget-object v0, v0, Laio;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Laiv;->b:J

    .line 556
    :cond_0
    iget-wide v0, p0, Laiv;->b:J

    return-wide v0
.end method
