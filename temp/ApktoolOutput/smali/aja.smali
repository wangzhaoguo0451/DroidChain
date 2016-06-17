.class public final Laja;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:J

.field public final f:Lmv;


# direct methods
.method private constructor <init>(Lajb;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget v0, p1, Lajb;->a:I

    iput v0, p0, Laja;->a:I

    .line 42
    iget-object v0, p1, Lajb;->b:Ljava/lang/String;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Laja;->b:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lajb;->c:Lakd;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakd;

    iput-object v0, p0, Laja;->c:Lakd;

    .line 44
    iget-wide v0, p1, Lajb;->d:J

    iput-wide v0, p0, Laja;->d:J

    .line 45
    iget-wide v0, p1, Lajb;->e:J

    iput-wide v0, p0, Laja;->e:J

    .line 46
    invoke-static {}, Laiq;->a()Laiq;

    move-result-object v0

    iput-object v0, p0, Laja;->f:Lmv;

    .line 51
    invoke-static {}, Lair;->a()Lair;

    .line 55
    invoke-static {}, Lajl;->a()Lajl;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lajb;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Laja;-><init>(Lajb;)V

    return-void
.end method

.method public static a()Lajb;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lajb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lajb;-><init>(B)V

    return-object v0
.end method
