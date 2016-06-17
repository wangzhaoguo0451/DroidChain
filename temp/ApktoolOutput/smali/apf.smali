.class final Lapf;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final b:Lakk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakk",
            "<TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Lakk;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lakk",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lapf;->a:Ljava/lang/Object;

    .line 69
    invoke-static {p2}, Lakk;->b(Lakk;)Lakk;

    move-result-object v0

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    iput-object v0, p0, Lapf;->b:Lakk;

    .line 70
    iput v1, p0, Lapf;->c:I

    .line 71
    iput-boolean v1, p0, Lapf;->d:Z

    .line 72
    return-void
.end method
