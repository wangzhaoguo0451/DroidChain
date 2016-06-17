.class public Lemg;
.super Ljava/lang/Object;
.source "SystemLocationProvider.java"

# interfaces
.implements Lmv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lemg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lemg;-><init>(Leax;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Leax;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lemi;

    invoke-direct {v0, p0}, Lemi;-><init>(Lemg;)V

    .line 23
    new-instance v0, Lemi;

    invoke-direct {v0, p0}, Lemi;-><init>(Lemg;)V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Lemh;

    invoke-direct {v0}, Lemh;-><init>()V

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic a()Ldd;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
