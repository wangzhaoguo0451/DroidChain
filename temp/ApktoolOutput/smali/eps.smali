.class public final Leps;
.super Ljava/lang/Object;
.source "DownloadTracker.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/net/TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/wandoujia/net/TrackInfo;

.field c:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leps;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a()J
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 46
    iget-wide v2, p0, Leps;->c:J

    sub-long v2, v0, v2

    .line 47
    iput-wide v0, p0, Leps;->c:J

    .line 48
    return-wide v2
.end method
