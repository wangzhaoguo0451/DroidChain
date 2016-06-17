.class public final Lbwr;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field a:Z

.field public b:Z

.field c:I

.field d:I

.field e:I

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput v0, p0, Lbwr;->c:I

    .line 276
    iput v0, p0, Lbwr;->d:I

    .line 277
    iput v0, p0, Lbwr;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lbwq;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lbwq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbwq;-><init>(Lbwr;B)V

    return-object v0
.end method
