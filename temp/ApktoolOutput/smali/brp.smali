.class final Lbrp;
.super Lbrn;
.source "DataMask.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbrn;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lbrp;-><init>()V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
