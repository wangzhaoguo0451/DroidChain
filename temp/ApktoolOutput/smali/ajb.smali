.class public final Lajb;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lajb;->a:I

    .line 114
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lajb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Laja;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Laja;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laja;-><init>(Lajb;B)V

    return-object v0
.end method
