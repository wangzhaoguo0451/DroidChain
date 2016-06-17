.class public final Lbso;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>([Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lbso;->a:[Ljava/io/InputStream;

    .line 679
    return-void
.end method

.method synthetic constructor <init>([Ljava/io/InputStream;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lbso;-><init>([Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 707
    iget-object v1, p0, Lbso;->a:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 708
    invoke-static {v3}, Lbsr;->a(Ljava/io/Closeable;)V

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_0
    return-void
.end method
